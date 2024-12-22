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
  final _stdController = TextEditingController();
  final _dateRangeController = TextEditingController();

  @override
  void dispose() {
    _reportController.dispose();
    _stdController.dispose();
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
              ReportTypeWidget(reportType: _reportController),
              SelectStudentWidget(stdController: _stdController),
              PeriodWidget(dateController: _dateRangeController),
              SizedBox(
                width: double.maxFinite,
                child: ElevatedButton(
                  onPressed: () {},
                  child: Text('Export Report'),
                ),
              ),
              Gap(30),
              _noteText(),
              Gap(40),
              CalculateAttendanceButton(),
            ],
          ),
        ),
      ),
    );
  }

  Text _noteText() {
    return Text(
      'Note:-Please ensure you have MS Excel/Google Sheets or equivalent app to view the reports.',
      style: kSecondaryHeading3Style.copyWith(fontSize: 14),
    );
  }
}
