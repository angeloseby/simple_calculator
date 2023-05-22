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
}
