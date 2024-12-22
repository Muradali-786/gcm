import 'package:flutter/material.dart';

import '../../../../../core/theme/app_color.dart';
import 'widgets.dart';

class CalculateAttendanceButton extends StatelessWidget {
  const CalculateAttendanceButton({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.maxFinite,
      child: ElevatedButton.icon(
        onPressed: () => calculateAttendanceModelSheet(context),
        icon: Icon(Icons.info_rounded),
        iconAlignment: IconAlignment.end,
        style: ElevatedButton.styleFrom(
          padding: EdgeInsets.all(5),
          backgroundColor: AppColors.kSecondaryLight.withOpacity(0.3),
        ),
        label: Text(
          'How do we calculate attendance',
          style: TextStyle(
            color: AppColors.kPrimaryBlue,
          ),
        ),
      ),
    );
  }

  static void calculateAttendanceModelSheet(BuildContext context) {
    showModalBottomSheet(
      context: context,
      showDragHandle: true,
      isScrollControlled: true,
      useRootNavigator: true,
      useSafeArea: true,
      builder: (BuildContext context) {
        return CalculateAttendanceSheet();
      },
    );
  }
}
