import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:simple_calculator/config/color_pallete.dart';

class BackspaceButton extends StatelessWidget {
  const BackspaceButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 62,
      width: 62,
      decoration: BoxDecoration(
          color: PalleteLight.functionButtonBg,
          borderRadius: BorderRadius.circular(16)),
      child: SvgPicture.asset(
        'assets/svgs/backspace.svg',
        width: 21.8,
        height: 18,
        fit: BoxFit.none,
      ),
    );
  }
}
