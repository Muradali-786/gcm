import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:table_calendar/table_calendar.dart';
import 'app_color.dart';
import 'app_theme.dart';

// Text Styles
final TextStyle kSecondaryHeadingStyle = TextStyle(
  fontSize: 24,
  fontFamily: AppTheme.secondaryFontFamily,
  fontWeight: FontWeight.w600,
  color: AppColors.kPrimaryBlue,
);

final TextStyle kSecondaryHeading2Style = TextStyle(
  fontSize: 16,
  fontFamily: AppTheme.secondaryFontFamily,
  fontWeight: FontWeight.w600,
  color: AppColors.kPrimaryBlack,
);

final TextStyle kTitleHeadingStyle = TextStyle(
  fontSize: 16,
  fontFamily: AppTheme.secondaryFontFamily,
  fontWeight: FontWeight.w600,
  color: AppColors.kPrimaryBlue,
);

final TextStyle kSecondaryHeading3Style = TextStyle(
  fontSize: 12,
  fontFamily: AppTheme.secondaryFontFamily,
  fontWeight: FontWeight.w500,
  color: AppColors.kGray85,
);
final TextStyle kSecondryBlackStyle = TextStyle(
  fontSize: 13,
  fontFamily: AppTheme.secondaryFontFamily,
  fontWeight: FontWeight.w500,
  color: AppColors.kBlack,
);

final TextStyle kSubTitleStyle = TextStyle(
  fontSize: 12,
  fontFamily: AppTheme.secondaryFontFamily,
  fontWeight: FontWeight.w400,
  color: AppColors.kGrayText,
);

final TextStyle kSecondaryLabelStyle = TextStyle(
  fontSize: 12,
  fontFamily: AppTheme.secondaryFontFamily,
  color: AppColors.kBlack,
);

// Input Border
final InputBorder kDefaultOutlineInputBorder = OutlineInputBorder(
  borderRadius: BorderRadius.circular(12),
  borderSide: const BorderSide(
    color: AppColors.kDivider,
  ),
);
final InputBorder kErrorInputBorder = OutlineInputBorder(
  borderRadius: BorderRadius.circular(12),
  borderSide: const BorderSide(
    color: Colors.red,
  ),
);

// Container Decoration
final Decoration kAppContainerDecoration = BoxDecoration(
  border: Border.all(
    color: AppColors.kDivider,
    width: 0.4,
  ),
  borderRadius: BorderRadius.circular(8),
);

// Padding Constant
const double kBodyHP = 16.0;

// Date Formatter Function
String formatDate(String dateString) {
  return DateFormat("d MMM, yyyy").format(
    DateTime.parse(dateString),
  );
}

CalendarStyle getCalendarStyle() {
  return CalendarStyle(
    defaultTextStyle: kSecondryBlackStyle,
    weekendTextStyle: kSecondryBlackStyle,
    isTodayHighlighted: false,
    rangeEndDecoration: BoxDecoration(
      shape: BoxShape.circle,
      color: AppColors.kPrimaryBlue,
    ),
    rangeStartDecoration: BoxDecoration(
      shape: BoxShape.circle,
      color: AppColors.kPrimaryBlue,
    ),
    selectedDecoration: const BoxDecoration(
      color: AppColors.kPrimaryBlue,
      shape: BoxShape.circle,
    ),
  );
}

HeaderStyle getHeaderStyle() {
  return HeaderStyle(
    formatButtonVisible: false,
    titleCentered: true,
    titleTextStyle: kSecondaryHeading2Style.copyWith(
      fontSize: 14,
    ),
  );
}

DaysOfWeekStyle getDaysOfWeekStyle() {
  return DaysOfWeekStyle(
    weekdayStyle: kSecondryBlackStyle,
    weekendStyle: kSecondryBlackStyle,
  );
}
