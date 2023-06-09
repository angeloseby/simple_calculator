import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:provider/provider.dart';
import 'package:simple_calculator/config/font_pallete.dart';
import 'package:simple_calculator/services/expression_value_provider.dart';
import 'package:simple_calculator/widgets/backspace_button.dart';
import 'package:simple_calculator/widgets/all_clear_button.dart';
import 'package:simple_calculator/widgets/function_button.dart';
import 'package:simple_calculator/widgets/number_button.dart';
import 'package:simple_calculator/widgets/operator_button.dart';
import 'package:simple_calculator/widgets/equal_button.dart';

// TODO:Implement a shadow behind equal button
// TODO:Make responsive to every screen

class CalculatorScreen extends StatefulWidget {
  const CalculatorScreen({super.key});

  @override
  State<CalculatorScreen> createState() => _CalculatorScreenState();
}

class _CalculatorScreenState extends State<CalculatorScreen> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
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
                child: Consumer<ExpressionValueProvider>(
                    builder: (context, snapshot, child) {
                  return Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Container(
                        height: 40,
                        alignment: Alignment.centerRight,
                        child: ListView.builder(
                          reverse: true,
                          dragStartBehavior: DragStartBehavior.down,
                          itemCount: snapshot.expressionListViewer.length,
                          scrollDirection: Axis.horizontal,
                          itemBuilder: ((context, index) {
                            return Text(
                              snapshot.expressionListViewer[index],
                              style: snapshot.operatorsList.contains(
                                      snapshot.expressionListViewer[index])
                                  ? FontPallete.expressionOperatorFontStyle
                                  : FontPallete.expressionNumberFontStyle,
                            );
                          }),
                        ),
                      ),
                      SingleChildScrollView(
                        reverse: false,
                        scrollDirection: Axis.horizontal,
                        child: Text(
                          snapshot.currentValue,
                          style: FontPallete.evaluatedExpressionFontStyle,
                        ),
                      )
                    ],
                  );
                }),
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
                    OperatorButton(operatorSymbol: 'x'),
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
