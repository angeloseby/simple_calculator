import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:simple_calculator/animations/shrink_button_animation.dart';
import 'package:simple_calculator/config/color_pallete.dart';

class FunctionButton extends StatelessWidget {
  final String iconPath;
  const FunctionButton({
    super.key,
    required this.iconPath,
  });

  @override
  Widget build(BuildContext context) {
    return ShrinkButton(
      child: Container(
        height: 40,
        width: 62,
        decoration: BoxDecoration(
            color: PalleteLight.functionButtonBg,
            borderRadius: BorderRadius.circular(16)),
        child: SvgPicture.asset(
          iconPath,
          width: 9.72,
          height: 10.17,
          fit: BoxFit.none,
        ),
      ),
    );
  }
}
