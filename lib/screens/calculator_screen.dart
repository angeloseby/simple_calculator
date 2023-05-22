import 'package:flutter/material.dart';
import 'package:simple_calculator/config/font_pallete.dart';
import 'package:simple_calculator/widgets/backspace_button.dart';
import 'package:simple_calculator/widgets/clear_button.dart';
import 'package:simple_calculator/widgets/function_button.dart';
import 'package:simple_calculator/widgets/number_button.dart';
import 'package:simple_calculator/widgets/operator_button.dart';
import 'package:simple_calculator/widgets/equal_button.dart';

//TO DO:
// Refactor the column row configuration to GridView
// Implement a shadow behind equal button
// Implement press effect to the keys

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
        padding:
            const EdgeInsets.only(top: 60, bottom: 30, left: 30, right: 30),
        child: Column(
          children: [
            Expanded(
              flex: 3,
              child: Container(
                alignment: Alignment.centerRight,
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
              child: SizedBox(
                width: deviceSize.width,
                child: const Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        FunctionButton(iconPath: 'assets/svgs/e.svg'),
                        FunctionButton(iconPath: 'assets/svgs/mu.svg'),
                        FunctionButton(iconPath: 'assets/svgs/sin.svg'),
                        FunctionButton(iconPath: 'assets/svgs/deg.svg'),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        AcClearButton(),
                        BackspaceButton(),
                        OperatorButton(operatorSymbol: '/'),
                        OperatorButton(operatorSymbol: '*'),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        NumberButton(operatorSymbol: '7'),
                        NumberButton(operatorSymbol: '8'),
                        NumberButton(operatorSymbol: '9'),
                        OperatorButton(operatorSymbol: '-'),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        NumberButton(operatorSymbol: '4'),
                        NumberButton(operatorSymbol: '5'),
                        NumberButton(operatorSymbol: '6'),
                        OperatorButton(operatorSymbol: '+'),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        NumberButton(operatorSymbol: '00'),
                        NumberButton(operatorSymbol: '0'),
                        NumberButton(operatorSymbol: '.'),
                        EqualButton(),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
