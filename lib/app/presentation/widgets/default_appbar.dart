import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../../core/theme/app_styles.dart';

class DefaultAppBar extends StatelessWidget implements PreferredSizeWidget {
  const DefaultAppBar({
    super.key,
    this.title,
    this.subtitle,
    this.actions,
  });

  final Widget? title;
  final Widget? subtitle;
  final List<Widget>? actions;

  @override
  Widget build(BuildContext context) {
    final centerTitle = title != null && subtitle == null;
    final titleWidget = _getTitleWidget(context);
    return AppBar(
      title: titleWidget,
      forceMaterialTransparency: true,
      elevation: 0,
      centerTitle: centerTitle,
      bottom: PreferredSize(
        preferredSize: Size.fromHeight(1.0),
        child: Container(
          color: Colors.grey.shade300,
          margin: EdgeInsets.symmetric(
            horizontal: kBodyHP,
          ),
          height: 1.0,
        ),
      ),
      actions: actions != null
          ? [
              ...actions!,
              const Gap(8),
            ]
          : null,
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  Widget? _getTitleWidget(BuildContext context) {
    final titleStyle = kSecondaryHeading2Style;
    if (title != null && subtitle != null) {
      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          DefaultTextStyle.merge(
            style: titleStyle,
            child: title!,
          ),
          subtitle!,
        ],
      );
    } else {
      return title != null
          ? DefaultTextStyle.merge(
              style: titleStyle,
              child: title!,
            )
          : null;
    }
  }
}
