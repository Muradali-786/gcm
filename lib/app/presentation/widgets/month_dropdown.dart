import 'package:flutter/material.dart';
import 'package:gcm/app/presentation/widgets/widgets.dart';

import '../../core/utils/utils.dart';
import '../models/drop_down_model.dart';

class SelectMonthDropDown extends StatelessWidget {
  final Function(DropdownModel) onChanged;

  const SelectMonthDropDown({super.key, required this.onChanged});

  @override
  Widget build(BuildContext context) {
    return AppDropdownSelector(
      items: _getPrevious12Months(),
      onChanged: onChanged,
    );
  }

  List<DropdownModel> _getPrevious12Months() {
    List<DropdownModel> months = [];
    DateTime now = DateTime.now();
    for (int i = 0; i < 12; i++) {
      DateTime date = DateTime(now.year, now.month - i, 1);
      months.add(
        DropdownModel(
          title: formatDateToMonthName(date),
          id: formatDateToYearMonth(date),
        ),
      );
    }
    return months;
  }
}
