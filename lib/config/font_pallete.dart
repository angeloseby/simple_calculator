import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:simple_calculator/config/color_pallete.dart';

class FontPallete {
  static final expressionNumberFontStyle = GoogleFonts.poppins(
    fontWeight: FontWeight.w400,
    fontSize: 24,
    color: PalleteLight.expressionNumberColor,
  );

  static final expressionOperatorFontStyle = GoogleFonts.poppins(
    fontWeight: FontWeight.w400,
    fontSize: 24,
    color: PalleteLight.expressionOperatorColor,
  );

  static final evaluatedExpressionFontStyle = GoogleFonts.poppins(
    fontWeight: FontWeight.w500,
    fontSize: 48,
    color: PalleteLight.evaluatedExpressionColor,
  );

  static final acClearButtonFontStyle = GoogleFonts.poppins(
    fontWeight: FontWeight.w500,
    fontSize: 22,
    color: PalleteLight.clearButtonFg,
  );

  static final operatorButtonFontStyle = GoogleFonts.poppins(
    fontWeight: FontWeight.w600,
    fontSize: 22,
    color: PalleteLight.operatorButtonFg,
  );

  static final numberButtonFontStyle = GoogleFonts.poppins(
    fontWeight: FontWeight.w500,
    fontSize: 32,
    color: PalleteLight.numberButtonFg,
  );

  static final equalButtonFontStyle = GoogleFonts.poppins(
    fontWeight: FontWeight.w500,
    fontSize: 32,
    color: PalleteLight.equalButtonFg,
  );
}
