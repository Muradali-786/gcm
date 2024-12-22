import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'app_color.dart';
import 'app_styles.dart';

abstract class AppTheme {
  // static TextStyle primaryTextStyle = TextStyle(fontFamily: primaryFontFamily);
  static TextStyle primaryTextStyle = GoogleFonts.montserrat();

  static String primaryFontFamily = 'Montserrat';
  static String secondaryFontFamily = 'ClashDisplay';

  static TextStyle logoFont = GoogleFonts.playfairDisplay();

  static ThemeData get lightTheme => ThemeData(
        colorScheme: const ColorScheme.light(
          primary: AppColors.kPrimaryBlue,
        ),
        fontFamily: primaryFontFamily,
        textTheme: const TextTheme().apply(
          fontFamily: primaryFontFamily,
        ),
        primaryTextTheme: const TextTheme().apply(
          fontFamily: primaryFontFamily,
        ),
        iconTheme: const IconThemeData(
          color: AppColors.kPrimaryBlue,
        ),
        iconButtonTheme: IconButtonThemeData(
          style: IconButton.styleFrom(
            // side: const BorderSide(
            //   color: Colors.grey,
            // ),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8),
            ),
            foregroundColor: AppColors.kPrimaryBlue,
            padding: EdgeInsets.zero,
            visualDensity: VisualDensity.compact,
          ),
        ),
        appBarTheme: AppBarTheme(
          titleTextStyle: kSecondaryHeading2Style,
        ),
        actionIconTheme: ActionIconThemeData(
          backButtonIconBuilder: (context) {
            return Icon(Icons.arrow_back_ios_new_outlined);
          },
        ),
        tabBarTheme: TabBarTheme(
          indicatorSize: TabBarIndicatorSize.tab,
          labelStyle: kSecondaryLabelStyle.copyWith(
            color: Colors.white,
          ),
          indicatorColor: Colors.transparent,
          dividerColor: Colors.transparent,
          dividerHeight: 0,
          indicator: BoxDecoration(
            color: AppColors.kPrimaryBlue,
            borderRadius: BorderRadius.circular(12),
          ),
          unselectedLabelStyle: kSecondaryLabelStyle.copyWith(
            color: AppColors.kPrimaryBlack,
          ),
        ),
        inputDecorationTheme: InputDecorationTheme(
            labelStyle: const TextStyle(
              fontSize: 12,
              color: AppColors.kPrimaryBlue,
            ),
            hintStyle: const TextStyle(
              fontSize: 14,
              color: AppColors.kPrimaryBlue,
            ),
            errorStyle: const TextStyle(
              fontSize: 12,
              color: AppColors.kPrimaryBlue,
            ),
            border: kDefaultOutlineInputBorder,
            focusedErrorBorder: kDefaultOutlineInputBorder,
            enabledBorder: kDefaultOutlineInputBorder,
            errorBorder: kErrorInputBorder),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            backgroundColor: AppColors.kPrimaryBlue,
            foregroundColor: Colors.white,
            iconColor: AppColors.kPrimaryBlue,
            elevation: 0,
            padding: const EdgeInsets.symmetric(
              horizontal: 24,
              vertical: 16,
            ),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            ),
          ),
        ),
        bottomSheetTheme: BottomSheetThemeData(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(
              top: Radius.circular(20.0),
            ),
          ),
        ),
      );
}
