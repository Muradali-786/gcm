import 'package:flutter/material.dart';

import '../../../../../core/theme/app_styles.dart';
import '../../../../widgets/widgets.dart';

class SettingPage extends StatelessWidget {
  const SettingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const SettingView();
  }
}

class SettingView extends StatelessWidget {
  const SettingView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: DefaultAppBar(
        title: Text(
          'Settings',
          style: kSecondaryHeading2Style,
        ),
      ),
    );
  }
}
