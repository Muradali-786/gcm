import 'package:flutter/material.dart';

import '../../../../../core/theme/app_color.dart';

class AdminDashboardBody extends StatelessWidget {
  const AdminDashboardBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      'Admin',
      style: TextStyle(
        color: AppColors.kWhite,
      ),
    );
  }
}
