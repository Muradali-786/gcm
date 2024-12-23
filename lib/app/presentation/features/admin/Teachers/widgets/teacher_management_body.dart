import 'package:flutter/material.dart';
import 'package:gcm/app/core/theme/app_color.dart';

class TeacherManagementBody extends StatelessWidget {
  const TeacherManagementBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      'Teacher',
      style: TextStyle(
        color: AppColors.kWhite,
      ),
    );
  }
}
