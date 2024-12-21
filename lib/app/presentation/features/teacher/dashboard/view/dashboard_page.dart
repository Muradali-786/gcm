import 'package:flutter/material.dart';
import 'package:gcm/app/presentation/widgets/widgets.dart';

import '../../../../../core/theme/app_styles.dart';
import '../widgets/dashboard_body.dart';

class DashboardPage extends StatelessWidget {
  const DashboardPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const DashboardView();
  }
}

class DashboardView extends StatelessWidget {
  const DashboardView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: DefaultAppBar(
        title: Text(
          'Welcome Teacher!',
          style: kSecondaryHeading2Style,
        ),
        subtitle: Text(
          'see today performance',
          style: kSecondaryHeading3Style,
        ),
        actions: [
          NotificationWithBadge(),
        ],
      ),
      body: const DashboardBody(),
    );
  }
}
