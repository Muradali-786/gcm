import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../../../../../core/theme/app_styles.dart';
import 'widgets.dart';

class PeriodWidget extends StatelessWidget {
  final TextEditingController dateController;

  const PeriodWidget({
    super.key,
    required this.dateController,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 16, bottom: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Period',
            style: kSecondaryHeading3Style,
          ),
          Gap(6),
          GestureDetector(
            onTap: () => _rangePickerModelSheet(context),
            child: TextFormField(
              controller: dateController,
              enabled: false,
              decoration: const InputDecoration(
                hintText: 'Select date range',
                suffixIcon: Icon(
                  Icons.calendar_today_outlined,
                  size: 20,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  static void _rangePickerModelSheet(BuildContext context) {
    showModalBottomSheet(
      context: context,
      useRootNavigator: true,
      useSafeArea: true,
      isScrollControlled: true,
      builder: (BuildContext context) {
        return RangePickerSheet();
      },
    );
  }
}
