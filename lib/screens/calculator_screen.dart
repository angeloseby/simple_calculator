import 'package:flutter/material.dart';
import 'package:simple_calculator/config/font_pallete.dart';

class CalculatorScreen extends StatelessWidget {
  const CalculatorScreen({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> expressionList = ['6000', '/', '2', '+', '3227', '*', '2'];
    List<String> operatorsList = ['/', '*', '+', '-'];
    List<InlineSpan> widgetList = [];

    for (String item in expressionList) {
      widgetList.add(TextSpan(
        text: item,
        style: operatorsList.contains(item)
            ? FontPallete.expressionOperatorFontStyle
            : FontPallete.expressionNumberFontStyle,
      ));
    }

    final deviceSize = MediaQuery.of(context).size;
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            Expanded(
              flex: 2,
              child: Container(
                alignment: Alignment.centerRight,
                height: 150,
                width: deviceSize.width,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text.rich(TextSpan(children: widgetList)),
                    const SizedBox(
                      height: 5,
                    ),
                    Text(
                      '=12,356',
                      style: FontPallete.evaluatedExpressionFontStyle,
                    )
                  ],
                ),
              ),
            ),
            Expanded(
              flex: 5,
              child: Container(
                color: Colors.green,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
