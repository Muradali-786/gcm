import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../../core/theme/app_color.dart';

class AdminHomeShellPage extends StatefulWidget {
  const AdminHomeShellPage({super.key, required this.navigationShell});

  final StatefulNavigationShell navigationShell;

  @override
  State<AdminHomeShellPage> createState() => _AdminHomeShellPageState();
}

class _AdminHomeShellPageState extends State<AdminHomeShellPage> {
  int _selectedIndex = 0; // Track the selected index for navigation

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          // Left-side navigation bar
          Expanded(
            flex: 1,
            child: Container(
              color: AppColors.kPrimaryBlue,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 20),
                  _buildNavItem('Dashboard', 0),
                  _buildNavItem('Teachers', 1),
                ],
              ),
            ),
          ),
          // Right-side content
          Expanded(
            flex: 4,
            child: Container(
              color: AppColors.kBlack,
              child: widget.navigationShell,
            ),
          ),
        ],
      ),
    );
  }

  /// Builds a navigation item
  Widget _buildNavItem(String title, int index) {
    final isSelected = _selectedIndex == index;
    return GestureDetector(
      onTap: () {
        _selectedIndex = index;
        _goBranch(index);
      },
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 10),
        color: isSelected ? AppColors.kSecondary : Colors.transparent,
        child: Row(
          children: [
            Icon(
              index == 0 ? Icons.dashboard : Icons.person, // Icon for each item
              color: isSelected ? AppColors.kWhite : AppColors.kSecondary,
            ),
            const SizedBox(width: 10),
            Text(
              title,
              style: TextStyle(
                color: isSelected ? AppColors.kWhite : AppColors.kSecondary,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }

  /// Navigates to the branch based on the index
  void _goBranch(int index) {
    widget.navigationShell.goBranch(
      index,
      initialLocation: index == widget.navigationShell.currentIndex,
    );
  }
}
