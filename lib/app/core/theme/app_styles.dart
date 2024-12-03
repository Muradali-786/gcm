import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

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
  color: AppColors.kPrimaryBlack,
);

final TextStyle kSecondaryHeading3Style = TextStyle(
  fontSize: 12,
  fontFamily: AppTheme.secondaryFontFamily,
  fontWeight: FontWeight.w500,
  color: AppColors.kPrimaryBlack,
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
  color: AppColors.kPrimaryBlack,
);

// Input Border
final InputBorder kDefaultOutlineInputBorder = OutlineInputBorder(
  borderRadius: BorderRadius.circular(12),
  borderSide: const BorderSide(
    color: AppColors.kDivider,
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
const double kBodyHorizontalPadding = 16.0;

// Date Formatter Function
String formatDate(String dateString) {
  return DateFormat("d MMM, yyyy").format(
    DateTime.parse(dateString),
  );
}
