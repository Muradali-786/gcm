import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:gcm/app/core/theme/app_styles.dart';
import 'widgets.dart';

class ReportsBody extends StatefulWidget {
  const ReportsBody({super.key});

  @override
  State<ReportsBody> createState() => _ReportsBodyState();
}

class _ReportsBodyState extends State<ReportsBody> {
  final _reportController = TextEditingController();
  final _empController = TextEditingController();
  final _dateRangeController = TextEditingController();

  @override
  void dispose() {
    _reportController.dispose();
    _empController.dispose();
    _dateRangeController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(kBodyHP),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Report Type',
                style: kSecondaryHeading3Style,
              ),
              Gap(6),
              TextFormField(
                controller: _reportController,
                ignorePointers: true,
                decoration: const InputDecoration(
                  hintText: 'Select Report',
                  suffixIcon: Icon(
                    Icons.keyboard_arrow_down,
                  ),
                ),
              ),
              Gap(16),
              Text(
                'Employee',
                style: kSecondaryHeading3Style,
              ),
              Gap(6),
              TextFormField(
                controller: _empController,
                ignorePointers: true,
                decoration: const InputDecoration(
                  hintText: 'Select Employee',
                ),
              ),
              Gap(16),
              Text(
                'Period',
                style: kSecondaryHeading3Style,
              ),
              Gap(6),
              TextFormField(
                controller: _reportController,
                ignorePointers: true,
                decoration: const InputDecoration(
                  hintText: 'Select date range',
                  suffixIcon: Icon(
                    Icons.calendar_today_outlined,
                    size: 20,
                  ),
                ),
              ),
              Gap(20),
              SizedBox(
                width: double.maxFinite,
                child: ElevatedButton(
                  onPressed: () {},
                  child: Text('Export Report'),
                ),
              ),
              Gap(30),
              Text(
                'Note:-Please ensure you have MS Excel/Google Sheets or equivalent app to view the reports.',
                style: kSecondaryHeading3Style.copyWith(fontSize: 14),
              ),
              Gap(40),
              CalculateAttendanceButton()
            ],
          ),
        ),
      ),
    );
  }
}
