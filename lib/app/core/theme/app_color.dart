import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

abstract class AppColors {
  // Primary and Secondary Colors
  static const Color kPrimaryBlue = Color(0xFF023047);
  static const Color kDarkerPrimaryBlue = Color(0xFF011D2A);
  static const Color kSecondary = Color(0xFF858585);
  static const Color kSecondaryLight = Color(0xFFB2EBF2);

  // Whites
  static const Color kWhite = Color(0xFFFFFFFF);
  static const Color kWhiteF7 = Color(0xFFF7F7F7);
  static const Color kWhiteFA = Color(0xFFFAFAFA);
  static const Color kWhiteEF = Color(0xFFEFEFEF);
  static const Color kWhite01 = Color(0x1AFFFFFF);

  // Blacks
  static const Color kBlack = Color(0xFF000000);
  static const Color kBlack0D = Color(0xFF0D0D0D);
  static const Color kPrimaryBlack = Color(0xFF1E1E1E);

  // Grays
  static const Color kGray = Color(0xFFD7D7D7);
  static const Color kGray85 = Color(0xFF858585);
  static const Color kGrayB7 = Color(0xFFB7B7B7);
  static const Color kGray8E = Color(0xFF8E8E8E);
  static const Color kGray83 = Color(0xFF838383);
  static const Color kGrayDivider = Color(0xFFC0C0C0);
  static const Color kGrayEF = Color(0xFFE5E5EF);
  static const Color kGrayText = Color(0xFF858484);

  // Alerts and States
  static const Color kAlert = Color(0xFFFF0000);
  static const Color kTransparent = Color(0x00FFFFFF);

  // Attendance Colors
  static const Color kPresent = Color(0xFF009B62);
  static const Color kAbsent = Color(0xFFCB4137);
  static const Color kLeave = Color(0xFFD29D03);
  static const Color kHoliday = Color(0xFF2845D1);
  static const Color kNotSet = Color(0xFF00A6ED);

  // Accent Colors
  static const Color kOrange = Color(0xFFF9753D);
  static const Color kAmber = Color(0xFFFFC83C);
  static const Color kPink = Color(0xFFF995B8);
  static const Color kLightPink = Color(0xFFF6C9B7);
  static const Color kDarkPink = Color(0xFF68080F);
  static const Color kPurple = Color(0xFFBB76FF);

  // Greens
  static const Color kGreen = Color(0xFF59B012);
  static const Color kLightGreen = Color(0xFFD5FFD1);
  static const Color kDarkGreen = Color(0xFF064200);

  // Blues
  static const Color kSkyBlue = Color(0xFF00B4D8);
  static const Color kBlue = Color(0xFF0088CC);
  static const Color kLightSkyBlue = Color(0xFFDFF4FF);

  // Buttons
  static const Color kRejectButton = Color(0xFFF995B8);
  static const Color kApproveButton = Color(0xFFD5FFD1);

  // Borders and Dividers
  static const Color kBorder = Color(0xFF858484);
  static const Color kDivider = Color(0xFFBDBDBD);

  // Shimmer
  static const Color kShimmer = Color(0xFFE0E0E0);

  // Gradients
  static const kGradient = LinearGradient(
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
    colors: [
      Color(0xFFF6C9B7),
      Color(0xFFF2A78D),
    ],
  );
}
