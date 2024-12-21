import 'package:flutter/material.dart';
import 'package:gcm/app/presentation/widgets/widgets.dart';
import '../../../../../core/theme/app_styles.dart';

class AcademicsPage extends StatelessWidget {
  const AcademicsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const AcademicsView();
  }
}

class AcademicsView extends StatelessWidget {
  const AcademicsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: DefaultAppBar(
        title: Text(
          'Academics',
          style: kSecondaryHeading2Style,
        ),
      ),
    );
  }
}
