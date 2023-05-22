import 'package:flutter/material.dart';
import 'package:simple_calculator/config/color_pallete.dart';
import 'package:simple_calculator/config/font_pallete.dart';

class AcClearButton extends StatelessWidget {
  const AcClearButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 62,
        width: 62,
        decoration: BoxDecoration(
            color: PalleteLight.clearButtonBg,
            borderRadius: BorderRadius.circular(16)),
        child: Center(
          child: Text(
            'Ac',
            style: FontPallete.acClearButtonFontStyle,
          ),
        ));
  }
}
