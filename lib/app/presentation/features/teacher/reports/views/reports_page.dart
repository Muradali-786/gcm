import 'package:flutter/material.dart';

import '../../../../../core/theme/app_styles.dart';
import '../../../../widgets/default_appbar.dart';

class ReportsPage extends StatelessWidget {
  const ReportsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const ReportsView();
  }
}

class ReportsView extends StatelessWidget {
  const ReportsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: DefaultAppBar(
        title: Text(
          'Reports',
          style: kSecondaryHeading2Style,
        ),
      ),
    );
  }
}
