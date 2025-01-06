import 'package:flutter/material.dart';
import 'package:task/core/routes/app_colors.dart';

import 'size_utils.dart';

class AppTextStyle {
  static final TextStyle white14600 = TextStyle(
    // fontFamily: GoogleFonts.roboto().fontFamily ?? 'DefaultFontFamily',
    fontSize: getFontSize(14),
    fontWeight: FontWeight.w600,
    color: AppColors.white,
  );
  static final TextStyle white10500 = TextStyle(
    // fontFamily: GoogleFonts.roboto().fontFamily ?? 'DefaultFontFamily',
    fontSize: getFontSize(10),
    fontWeight: FontWeight.w500,
    color: AppColors.white,
  );
  static final TextStyle white15700 = TextStyle(
    // fontFamily: GoogleFonts.roboto().fontFamily ?? 'DefaultFontFamily',
    fontSize: getFontSize(15),
    fontWeight: FontWeight.w700,
    color: AppColors.white,
  );

  static final TextStyle black10800 = TextStyle(
    // fontFamily: GoogleFonts.roboto().fontFamily ?? 'DefaultFontFamily',
    fontSize: getFontSize(10),
    fontWeight: FontWeight.w800,
    color: AppColors.black,
  );
  static final TextStyle black8500 = TextStyle(
    // fontFamily: GoogleFonts.roboto().fontFamily ?? 'DefaultFontFamily',
    fontSize: getFontSize(8),
    fontWeight: FontWeight.w500,
    color: AppColors.black,
  );
  static final TextStyle black13500 = TextStyle(
    // fontFamily: GoogleFonts.roboto().fontFamily ?? 'DefaultFontFamily',
    fontSize: getFontSize(13),
    fontWeight: FontWeight.w500,
    color: AppColors.black,
  );
}
