import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:simple_calculator/config/font_pallete.dart';
import 'package:simple_calculator/widgets/backspace_button.dart';
import 'package:simple_calculator/widgets/clear_button.dart';
import 'package:simple_calculator/widgets/function_button.dart';
import 'package:simple_calculator/widgets/number_button.dart';
import 'package:simple_calculator/widgets/operator_button.dart';
import 'package:simple_calculator/widgets/equal_button.dart';

// TODO:Implement a shadow behind equal button
// TODO:Make responsive to every screen

class CalculatorScreen extends StatelessWidget {
  const CalculatorScreen({super.key});

  @override
  Widget build(BuildContext context) {
    String currentValue = '0';
    List<String> expressionList = ['0'];
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
            const EdgeInsets.only(top: 60, bottom: 60, left: 30, right: 30),
        child: Column(
          children: [
            Expanded(
              flex: 2,
              child: Container(
                alignment: Alignment.centerRight,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    SingleChildScrollView(
                      reverse: true,
                      scrollDirection: Axis.horizontal,
                      child: Text.rich(
                        TextSpan(
                          children: widgetList,
                        ),
                        overflow: TextOverflow.ellipsis,
                        maxLines: 1,
                      ),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Text(
                      currentValue,
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
                child: StaggeredGridView.count(
                  mainAxisSpacing: 10,
                  crossAxisSpacing: 10,
                  crossAxisCount: 4,
                  staggeredTiles: const [
                    StaggeredTile.count(1, 0.66),
                    StaggeredTile.count(1, 0.66),
                    StaggeredTile.count(1, 0.66),
                    StaggeredTile.count(1, 0.66),
                    StaggeredTile.count(1, 1),
                    StaggeredTile.count(1, 1),
                    StaggeredTile.count(1, 1),
                    StaggeredTile.count(1, 1),
                    StaggeredTile.count(1, 1),
                    StaggeredTile.count(1, 1),
                    StaggeredTile.count(1, 1),
                    StaggeredTile.count(1, 1),
                    StaggeredTile.count(1, 1),
                    StaggeredTile.count(1, 1),
                    StaggeredTile.count(1, 1),
                    StaggeredTile.count(1, 1),
                    StaggeredTile.count(1, 1),
                    StaggeredTile.count(1, 1),
                    StaggeredTile.count(1, 1),
                    StaggeredTile.count(1, 2),
                    StaggeredTile.count(1, 1),
                    StaggeredTile.count(1, 1),
                    StaggeredTile.count(1, 1),
                  ],
                  children: const [
                    FunctionButton(iconPath: 'assets/svgs/e.svg'),
                    FunctionButton(iconPath: 'assets/svgs/mu.svg'),
                    FunctionButton(iconPath: 'assets/svgs/sin.svg'),
                    FunctionButton(iconPath: 'assets/svgs/deg.svg'),
                    AcClearButton(),
                    BackspaceButton(),
                    OperatorButton(operatorSymbol: '/'),
                    OperatorButton(operatorSymbol: 'X'),
                    NumberButton(operatorSymbol: '7'),
                    NumberButton(operatorSymbol: '8'),
                    NumberButton(operatorSymbol: '9'),
                    OperatorButton(operatorSymbol: '-'),
                    NumberButton(operatorSymbol: '4'),
                    NumberButton(operatorSymbol: '5'),
                    NumberButton(operatorSymbol: '6'),
                    OperatorButton(operatorSymbol: '+'),
                    NumberButton(operatorSymbol: '1'),
                    NumberButton(operatorSymbol: '2'),
                    NumberButton(operatorSymbol: '3'),
                    EqualButton(),
                    NumberButton(operatorSymbol: '00'),
                    NumberButton(operatorSymbol: '0'),
                    NumberButton(operatorSymbol: '.'),
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
