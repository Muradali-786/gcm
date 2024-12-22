import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'widgets.dart';
import '../../../../../core/theme/app_styles.dart';

class ReportTypeWidget extends StatelessWidget {
  final TextEditingController reportType;

  const ReportTypeWidget({
    super.key,
    required this.reportType,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Report Type',
          style: kSecondaryHeading3Style,
        ),
        Gap(6),
        GestureDetector(
          onTap: () => _reportTypeModelSheet(context),
          child: TextFormField(
            controller: reportType,
           enabled: false,
            decoration: const InputDecoration(
              hintText: 'Select Report',
              suffixIcon: Icon(
                Icons.keyboard_arrow_down,
              ),
            ),
          ),
        ),
      ],
    );
  }

  static void _reportTypeModelSheet(BuildContext context) {
    showModalBottomSheet(
      context: context,
      useRootNavigator: true,
      useSafeArea: true,
      isScrollControlled: true,
      builder: (BuildContext context) {
        return ReportTypeSheet();
      },
    );
  }
}
