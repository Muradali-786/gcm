import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:responsive_framework/responsive_framework.dart';

import '../../core/theme/app_styles.dart';

class DefaultAppBar extends StatelessWidget implements PreferredSizeWidget {
  const DefaultAppBar({
    super.key,
    this.title,
    this.subtitle,
    this.actions,
    this.isNotification=false,
  });

  final Widget? title;
  final bool? isNotification;
  final Widget? subtitle;
  final List<Widget>? actions;

  @override
  Widget build(BuildContext context) {
    final centerTitle = title != null && subtitle == null;
    final titleWidget = _getTitleWidget(context);
    return ResponsiveVisibility(
      visible: true,
      visibleConditions:  [
        Condition.largerThan(name: TABLET, value: isNotification! ? true :false),

      ],
      child: AppBar(
        title: titleWidget,
        forceMaterialTransparency: true,
        elevation: 0,
        centerTitle: centerTitle,
        actions: actions != null
            ? [
          ...actions!,
          const Gap(8),
        ]
            : null,
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  Widget? _getTitleWidget(BuildContext context) {
    final titleStyle = kSecondaryHeading2Style;
    if (title != null && subtitle != null) {
      return
        Column(
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


