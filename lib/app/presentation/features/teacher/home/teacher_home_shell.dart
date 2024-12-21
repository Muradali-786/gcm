import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gap/gap.dart';
import 'package:gcm/app/core/theme/app_styles.dart';
import 'package:gcm/app/core/theme/app_theme.dart';
import 'package:gcm/app/presentation/widgets/default_appbar.dart';
import 'package:gcm/app/presentation/widgets/notification_with_badge.dart';
import 'package:go_router/go_router.dart';

import '../../../../../gen/assets.gen.dart';
import '../../../../core/theme/app_color.dart';

class TeacherHomeShellPage extends StatefulWidget {
  const TeacherHomeShellPage({super.key, required this.navigationShell});

  final StatefulNavigationShell navigationShell;

  @override
  State<TeacherHomeShellPage> createState() => _TeacherHomeShellPageState();
}

class _TeacherHomeShellPageState extends State<TeacherHomeShellPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SizedBox(
          height: 76,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(15),
            child: BottomNavigationBar(
              type: BottomNavigationBarType.fixed,
              selectedLabelStyle: const TextStyle(
                fontSize: 10,
                color: AppColors.kWhite,
              ),
              unselectedLabelStyle: TextStyle(
                fontSize: 10,
                color: AppColors.kSecondary,
              ),
              backgroundColor: AppColors.kPrimaryBlue,
              selectedItemColor: Colors.white,
              unselectedItemColor: AppColors.kSecondary,
              currentIndex: widget.navigationShell.currentIndex,
              onTap: (index) {
                _goBranch(index);
              },
              items: [
                BottomNavigationBarItem(
                  icon: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 5.0),
                    child: SvgPicture.asset(
                      Assets.icons.dashboard,
                      color: widget.navigationShell.currentIndex == 0
                          ? AppColors.kWhite
                          : AppColors.kSecondary,
                    ),
                  ),
                  label: 'Dashboard',
                ),
                BottomNavigationBarItem(
                  icon: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 5.0),
                    child: SvgPicture.asset(
                      Assets.icons.academics,
                      color: widget.navigationShell.currentIndex == 1
                          ? AppColors.kWhite
                          : AppColors.kSecondary,
                    ),
                  ),
                  label: 'Academics',
                ),
                BottomNavigationBarItem(
                  icon: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 5.0),
                    child: SvgPicture.asset(
                      Assets.icons.reports,
                      color: widget.navigationShell.currentIndex == 2
                          ? AppColors.kWhite
                          : AppColors.kSecondary,
                    ),
                  ),
                  label: 'Reports',
                ),
                BottomNavigationBarItem(
                  icon: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 5.0),
                    child: SvgPicture.asset(
                      Assets.icons.notfication,
                      height: 20,
                      fit: BoxFit.fitWidth,
                      color: widget.navigationShell.currentIndex == 3
                          ? AppColors.kWhite
                          : AppColors.kSecondary,
                    ),
                  ),
                  label: 'Notifications',
                ),
                BottomNavigationBarItem(
                  icon: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 5.0),
                    child: SvgPicture.asset(
                      Assets.icons.setting,
                      color: widget.navigationShell.currentIndex == 4
                          ? AppColors.kWhite
                          : AppColors.kSecondary,
                    ),
                  ),
                  label: 'Settings',
                ),
              ],
            ),
          ),
        ),
      ),
      body: widget.navigationShell,
    );
  }

  void _goBranch(int index) {
    widget.navigationShell.goBranch(
      index,
      // A common pattern when using bottom navigation bars is to support
      // navigating to the initial location when tapping the item that is
      // already active. This example demonstrates how to support this behavior,
      // using the initialLocation parameter of goBranch.
      initialLocation: index == widget.navigationShell.currentIndex,
    );
  }

}
