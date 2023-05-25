import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:simple_calculator/animations/shrink_button_animation.dart';
import 'package:simple_calculator/config/color_pallete.dart';
import 'package:simple_calculator/config/font_pallete.dart';
import 'package:simple_calculator/services/expression_value_provider.dart';

class EqualButton extends StatelessWidget {
  const EqualButton({super.key});

  @override
  Widget build(BuildContext context) {
    return ShrinkButton(
      onTap: () {
        Provider.of<ExpressionValueProvider>(context, listen: false)
            .handleEqualPress();
      },
      child: Container(
        height: 62,
        width: 62,
        decoration: BoxDecoration(
            color: PalleteLight.equalButtonBg,
            borderRadius: BorderRadius.circular(16)),
        child: Center(
          child: Text(
            '=',
            style: FontPallete.equalButtonFontStyle,
          ),
        ),
      ),
    );
  }
}
