import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../../../gen/assets.gen.dart';
import '../../core/theme/app_color.dart';
import '../../core/theme/app_theme.dart';
import 'icon_or_svg.dart';

class CustomExpansionTile extends StatelessWidget {
  final String title;
  final String subtitle;
  final List<Widget> children;

  const CustomExpansionTile({
    super.key,
    required this.title,
    required this.subtitle,
    required this.children,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 12.0),
      child: Theme(
        data: Theme.of(context).copyWith(dividerColor: Colors.transparent),
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            border: Border.all(
              color: Colors.grey.shade300,
            ),
          ),
          child: ExpansionTile(
            title: Row(
              children: [
                IconOrSvg(
                  svgIconAsset: Assets.icons.subject,
                ),
                const Gap(10),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        title,
                        style: AppTheme.primaryTextStyle.copyWith(
                          fontSize: 12,
                          fontWeight: FontWeight.bold,
                          color: AppColors.kPrimaryBlue,
                        ),
                      ),
                      Text(
                        subtitle,
                        style: AppTheme.primaryTextStyle.copyWith(
                          fontSize: 10,
                          fontWeight: FontWeight.bold,
                          color: AppColors.kGray85,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            childrenPadding: const EdgeInsets.all(8),
            tilePadding: const EdgeInsets.symmetric(horizontal: 8),
            iconColor: AppColors.kPrimaryBlue,
            children: children,
          ),
        ),
      ),
    );
  }
}
