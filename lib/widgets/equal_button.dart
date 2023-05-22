import 'package:flutter/material.dart';
import 'package:simple_calculator/config/color_pallete.dart';
import 'package:simple_calculator/config/font_pallete.dart';

class EqualButton extends StatelessWidget {
  const EqualButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 62,
      width: 62,
      decoration: BoxDecoration(
          color: PalleteLight.equalButtonBg,
          borderRadius: BorderRadius.circular(16)),
      child: Center(
        child: Text(
          '+',
          style: FontPallete.equalButtonFontStyle,
        ),
      ),
    );
  }
}
