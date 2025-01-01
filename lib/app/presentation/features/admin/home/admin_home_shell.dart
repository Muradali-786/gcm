import 'package:flutter/material.dart';
import 'package:gcm/app/presentation/features/admin/home/widgets/side_menu.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';
import '../../../../core/theme/app_color.dart';
import '../../../../domain/providers/menu_controller.dart';

class AdminHomeShellPage extends StatefulWidget {
  const AdminHomeShellPage({super.key, required this.navigationShell});

  final StatefulNavigationShell navigationShell;

  @override
  State<AdminHomeShellPage> createState() => _AdminHomeShellPageState();
}

class _AdminHomeShellPageState extends State<AdminHomeShellPage> {
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: context.read<MenuAppController>().scaffoldKey,
      drawer: buildDrawer(),
      body: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          if (MediaQuery.sizeOf(context).width >= 1050) ...[
            Expanded(
              flex: 1,
              child: Container(
                color: AppColors.kPrimaryBlue,
                child: Column(
                  children: [
                    SideMenu(
                      selectedIndex: _selectedIndex,
                      onMenuTap: (int index) {
                        _selectedIndex = index;
                        _goBranch(index);
                      },
                    ),
                  ],
                ),
              ),
            ),
          ],
          Expanded(
            flex: 5,
            child: Container(
              child: widget.navigationShell,
            ),
          ),
        ],
      ),
    );
  }

  Drawer buildDrawer() {
    return Drawer(
      width: 240,
      child: SideMenu(
        selectedIndex: _selectedIndex,
        onMenuTap: (int index) {
          _selectedIndex = index;
          _goBranch(index);
        },
      ),
    );
  }

  void _goBranch(int index) {
    widget.navigationShell.goBranch(
      index,
      initialLocation: index == widget.navigationShell.currentIndex,
    );
  }
}
