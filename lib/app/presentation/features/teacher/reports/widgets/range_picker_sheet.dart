import 'package:flutter/material.dart';
import 'package:gcm/app/core/theme/app_color.dart';
import 'package:table_calendar/table_calendar.dart';

import '../../../../../core/theme/app_styles.dart';

class RangePickerSheet extends StatefulWidget {
  const RangePickerSheet({super.key});

  @override
  State<RangePickerSheet> createState() => _RangePickerSheetState();
}

class _RangePickerSheetState extends State<RangePickerSheet> {
  DateTime _focusDay = DateTime.now();
  DateTime? _selectedDay;
  DateTime? _rangeStart;
  DateTime? _rangeEnd;

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
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  'Select Date',
                  style: kSecondaryHeading3Style.copyWith(
                    fontSize: 16,
                    color: AppColors.kBlack,
                  ),
                ),
                TextButton(
                  onPressed: () {},
                  child: Text(
                    'Apply Filter',
                    style: kSecondaryHeading3Style.copyWith(
                      fontSize: 13,
                      color: AppColors.kPrimaryBlue,
                    ),
                  ),
                )
              ],
            ),
            TableCalendar(
              headerStyle: getHeaderStyle(),
              focusedDay: _focusDay,
              rangeStartDay: _rangeStart,
              rangeEndDay: _rangeEnd,
              firstDay: DateTime.utc(2024, 9, 1),
              lastDay: DateTime.utc(2099, 12, 31),
              onRangeSelected: _handleRangeSelected,
              rangeSelectionMode: RangeSelectionMode.toggledOn,
              calendarFormat: CalendarFormat.month,
              startingDayOfWeek: StartingDayOfWeek.monday,
              daysOfWeekStyle: getDaysOfWeekStyle(),
              calendarStyle: getCalendarStyle(),
              rowHeight: 42,
              calendarBuilders: CalendarBuilders(
                outsideBuilder: (context, day, dayOfWeek) =>
                    const SizedBox.shrink(),
              ),
            ),
          ],
        ),
      ),
    );
  }

  void _handleRangeSelected(
    DateTime? start,
    DateTime? end,
    DateTime focusedDay,
  ) {
    setState(() {
      _selectedDay = null;
      _focusDay = focusedDay;
      _rangeStart = start;
      _rangeEnd = end;
    });
  }
}
