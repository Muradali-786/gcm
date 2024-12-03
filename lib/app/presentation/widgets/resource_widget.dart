import 'package:flutter/material.dart';
import '../../core/constant/app_constant.dart';
import '../../domain/models/resource/resource.dart';
import 'widgets.dart';

class ResourceWidget<T> extends StatelessWidget {
  const ResourceWidget({
    super.key,
    required this.resource,
    required this.successBuilder,
    this.loadingBuilder,
    this.errorBuilder,
    this.initialBuilder,
    this.isSliver = false,
    this.animate = false,
  });

  final Resource<T> resource;
  final Widget Function(T data) successBuilder;
  final Widget Function()? initialBuilder;
  final Widget Function(String message)? errorBuilder;
  final bool isSliver;
  final bool animate;

  /// If not provided, defaults to [AppLoader] widget. Can be customized to show a different loading widget like Shimmer.
  final Widget Function(T? data)? loadingBuilder;

  @override
  Widget build(BuildContext context) {
    // log.d('ResourceWidget: ${status}');
    return ConditionalParentWidget(
      condition: animate,
      parentBuilder: (child) => AnimatedSwitcher(
        duration: kDefaultAnimDuration,
        child: child,
      ),
      child: buildMaybeWhen(),
    );
  }

  Widget buildMaybeWhen() {
    return resource.maybeWhen(
      orElse: () {
        return buildConditionalSliverOrElse(
          child: const SizedBox.shrink(),
        );
      },
      initial: () {
        return initialBuilder?.call() ??
            buildConditionalSliverOrElse(
              child: const SizedBox.shrink(),
            );
      },
      // initial: () =>
      //     kDebugMode ? Center(child: Text('Initial Ui State', style: context.bodyLarge)) : const SizedBox.shrink(),
      loading: loadingBuilder ??
          (data) => buildConditionalSliverOrElse(
                child: const AppLoader(),
              ),
      success: successBuilder,
      error: errorBuilder ??
          (message) => buildConditionalSliverOrElse(
                  child: AppError(
                message: message,
              )),
    );
  }

  ConditionalParentWidget buildConditionalSliverOrElse(
      {required Widget child}) {
    return ConditionalParentWidget(
      condition: isSliver,
      parentBuilder: (child) => SliverToBoxAdapter(child: child),
      child: child,
    );
  }
}
