import 'package:flutter/material.dart';

import '../../../../../core/theme/app_styles.dart';
import '../../../../widgets/default_appbar.dart';

class NotificationPage extends StatelessWidget {
  const NotificationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const NotificationView();
  }
}

class NotificationView extends StatelessWidget {
  const NotificationView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: DefaultAppBar(
        title: Text(
          'Notifications',
          style: kSecondaryHeading2Style,
        ),
      ),
    );
  }
}
