import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../../core/theme/app_color.dart';
import '../../../../../core/theme/app_theme.dart';

class DrawerListTile extends StatelessWidget {
  const DrawerListTile({
    super.key,
    required this.title,
    required this.svgSrc,
    required this.press,
    required this.isSelected,
  });

  final String title, svgSrc;
  final VoidCallback press;
  final bool isSelected;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 4),
      decoration: BoxDecoration(
        color: isSelected ? AppColors.kDarkerPrimaryBlue : Colors.transparent,
        borderRadius: BorderRadius.horizontal(
          right: Radius.circular(25),
        ),
      ),
      child: ListTile(
        hoverColor: Colors.red,
        onTap: press,
        horizontalTitleGap: 0.0,
        leading: SvgPicture.asset(
          svgSrc,
          colorFilter: ColorFilter.mode(
            AppColors.kWhite,
            BlendMode.srcIn,
          ),
          height: 16,
        ),
        title: Text(
          title,
          style: AppTheme.primaryTextStyle.copyWith(
            color: AppColors.kWhite,
          ),
        ),
      ),
    );
  }
}
