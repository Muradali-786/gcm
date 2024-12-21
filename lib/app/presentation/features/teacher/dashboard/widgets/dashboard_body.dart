import 'package:flutter/material.dart';
import 'package:gcm/app/core/theme/app_styles.dart';
import 'package:gcm/app/presentation/widgets/custom_expansion_tile.dart';

class DashboardBody extends StatelessWidget {
  const DashboardBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: kBodyHP),
      child: Column(
        children: [
          ListView.builder(
            itemCount: 5,
            shrinkWrap: true,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.only(top: 12.0),
                child: CustomExpansionTile(
                  title: 'Murad Ali Khan',
                  subtitle: 'Semester-iv',
                  children: [],
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
