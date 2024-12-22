import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'widgets.dart';

import '../../../../../core/theme/app_styles.dart';

class SelectStudentWidget extends StatelessWidget {
  final TextEditingController stdController;

  const SelectStudentWidget({
    super.key,
    required this.stdController,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: kBodyHP),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Student',
            style: kSecondaryHeading3Style,
          ),
          Gap(6),
          GestureDetector(
            onTap: () => _studentModelSheet(context),
            child: TextFormField(
              controller: stdController,
              enabled: false,
              decoration: const InputDecoration(
                hintText: 'Select Student',
              ),
            ),
          ),
        ],
      ),
    );
  }

  static void _studentModelSheet(BuildContext context) {
    showModalBottomSheet(
      context: context,
      useRootNavigator: true,
      useSafeArea: true,
      isScrollControlled: true,
      builder: (BuildContext context) {
        return StudentSheet();
      },
    );
  }
}
