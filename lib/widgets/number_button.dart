import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:simple_calculator/animations/shrink_button_animation.dart';
import 'package:simple_calculator/config/color_pallete.dart';
import 'package:simple_calculator/config/font_pallete.dart';
import 'package:simple_calculator/services/expression_value_provider.dart';

class NumberButton extends StatelessWidget {
  final String operatorSymbol;
  const NumberButton({super.key, required this.operatorSymbol});

  @override
  Widget build(BuildContext context) {
    return ShrinkButton(
      onTap: () {
        Provider.of<ExpressionValueProvider>(context, listen: false)
            .updateCurrentValue(operatorSymbol);
      },
      child: Container(
        height: 62,
        width: 62,
        decoration: BoxDecoration(
            color: PalleteLight.numberButtonBg,
            borderRadius: BorderRadius.circular(16),
            border: Border.all(
              color: Colors.white,
              width: 2,
            )),
        child: Center(
          child: Text(
            operatorSymbol,
            style: FontPallete.numberButtonFontStyle,
          ),
        ),
      ),
    );
  }
}
