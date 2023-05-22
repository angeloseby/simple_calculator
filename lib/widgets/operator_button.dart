import 'package:flutter/material.dart';
import 'package:simple_calculator/config/color_pallete.dart';
import 'package:simple_calculator/config/font_pallete.dart';

class OperatorButton extends StatelessWidget {
  final String operatorSymbol;
  const OperatorButton({super.key, required this.operatorSymbol});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 62,
      width: 62,
      decoration: BoxDecoration(
        color: PalleteLight.operatorButtonBg,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Center(
        child: Text(
          operatorSymbol,
          style: FontPallete.operatorButtonFontStyle,
        ),
      ),
    );
  }
}
