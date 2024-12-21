import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:badges/badges.dart' as badges;
import '../../../gen/assets.gen.dart';
import '../../core/theme/app_color.dart';

class NotificationWithBadge extends StatelessWidget {
  const NotificationWithBadge({super.key, this.onPress});

  final VoidCallback? onPress;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 8),
        child: badges.Badge(
            badgeStyle: badges.BadgeStyle(
              shape: badges.BadgeShape.square,
              borderRadius: BorderRadius.circular(5),
              padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 5),
              badgeColor: AppColors.kOrange,
            ),
            badgeContent: Text(
              '3',
              style: TextStyle(
                  color: AppColors.kWhite,
                  fontSize: 9,
                  fontWeight: FontWeight.w500),
            ),
            child: Padding(
              padding: const EdgeInsets.all(1.0),
              child: SvgPicture.asset(
                Assets.icons.notify,
              ),
            )),
      ),
    );
  }
}

class SettingIconButton extends StatelessWidget {
  const SettingIconButton({super.key, this.onPress});

  final VoidCallback? onPress;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          border: Border.all(
            color: Colors.grey.shade300,
          ),
        ),
        margin: const EdgeInsets.only(right: 12),
        padding: const EdgeInsets.all(4),
        child: const Icon(
          Icons.settings,
          size: 20,
        ),
      ),
    );
  }
}
