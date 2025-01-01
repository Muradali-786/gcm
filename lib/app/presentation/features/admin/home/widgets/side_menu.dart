import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gap/gap.dart';
import 'package:gcm/app/presentation/widgets/icon_or_svg.dart';
import 'package:gcm/gen/assets.gen.dart';
import '../../../../../core/theme/app_color.dart';
import 'widgets.dart';

class SideMenu extends StatelessWidget {
  final Function(int) onMenuTap;
  final int selectedIndex;

  const SideMenu({
    super.key,
    required this.onMenuTap,
    required this.selectedIndex,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColors.kPrimaryBlue,
      child: SingleChildScrollView(
        child: Column(
          children: [
            Gap(20),
            Center(
              child: IconOrSvg(
                svgIconAsset: Assets.icons.excelFile,
                size: 100,
              ),
            ),
            Gap(20),
            ListView.builder(
              shrinkWrap: true,
              itemCount: MenuData().menuList.length,
              itemBuilder: (context, index) {
                final info = MenuData().menuList[index];
                final isSelected = index == selectedIndex;
                return DrawerListTile(
                  title: info.title,
                  svgSrc: info.svgIconAsset,
                  press: () => onMenuTap(index),
                  isSelected: isSelected,
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
