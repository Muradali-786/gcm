import 'package:flutter/material.dart';

import '../../../../../core/theme/app_color.dart';
import '../../../../../core/theme/app_styles.dart';

class ReportTypeSheet extends StatelessWidget {
  const ReportTypeSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return FractionallySizedBox(
      heightFactor: 0.8,
      widthFactor: 1,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            IconButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              icon: Icon(Icons.close),
            ),
            Text(
              'Report Type',
              style: kSecondaryHeading3Style.copyWith(
                fontSize: 16,
                color: AppColors.kBlack,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
