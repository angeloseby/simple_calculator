import 'dart:math';

import 'package:expressions/expressions.dart';
import 'package:flutter/material.dart';

class ExpressionValueProvider extends ChangeNotifier {
  String currentValue = '0';
  List<String> expressionList = ['0'];
  List<String> expressionListViewer = ['0'];
  List<String> operatorsList = ['/', 'x', '+', '-'];
  List<TextSpan> widgetList = [];
  late Expression expression;
  final evaluator = const ExpressionEvaluator();
  var context = {'x': pi / 5, 'cos': cos, 'sin': sin};
  handleBackspace() {
    if (currentValue.length > 1) {
      currentValue = currentValue.substring(0, currentValue.length - 1);
    } else if (currentValue.length == 1 && currentValue != '0') {
      currentValue = '0';
    }

    notifyListeners();
  }

  handleAllClear() {
    currentValue = '0';
    expressionList = ['0'];
    expressionListViewer = ['0'];
    notifyListeners();
  }

  updateCurrentValue(String pressedValue) {
    switch (pressedValue) {
      case '00':
        {
          if (currentValue == '0') {
            currentValue = currentValue;
          } else {
            currentValue = '$currentValue$pressedValue';
          }
          break;
        }
      case '0':
        {
          if (currentValue == '0') {
            currentValue = currentValue;
          } else {
            currentValue = '$currentValue$pressedValue';
          }
          break;
        }
      case '1':
        {
          if (currentValue == '0') {
            currentValue = pressedValue;
          } else {
            currentValue = '$currentValue$pressedValue';
          }
          break;
        }
      case '2':
        {
          if (currentValue == '0') {
            currentValue = pressedValue;
          } else {
            currentValue = '$currentValue$pressedValue';
          }
          break;
        }
      case '3':
        {
          if (currentValue == '0') {
            currentValue = pressedValue;
          } else {
            currentValue = '$currentValue$pressedValue';
          }
          break;
        }
      case '4':
        {
          if (currentValue == '0') {
            currentValue = pressedValue;
          } else {
            currentValue = '$currentValue$pressedValue';
          }
          break;
        }
      case '5':
        {
          if (currentValue == '0') {
            currentValue = pressedValue;
          } else {
            currentValue = '$currentValue$pressedValue';
          }
          break;
        }
      case '6':
        {
          if (currentValue == '0') {
            currentValue = pressedValue;
          } else {
            currentValue = '$currentValue$pressedValue';
          }
          break;
        }
      case '7':
        {
          if (currentValue == '0') {
            currentValue = pressedValue;
          } else {
            currentValue = '$currentValue$pressedValue';
          }
          break;
        }
      case '8':
        {
          if (currentValue == '0') {
            currentValue = pressedValue;
          } else {
            currentValue = '$currentValue$pressedValue';
          }
          break;
        }
      case '9':
        {
          if (currentValue == '0') {
            currentValue = pressedValue;
          } else {
            currentValue = '$currentValue$pressedValue';
          }
          break;
        }
      case '.':
        {
          if (!(currentValue.contains(pressedValue))) {
            if (currentValue == '0') {
              currentValue = '$currentValue$pressedValue';
            } else if (currentValue[currentValue.length - 1] == pressedValue) {
              currentValue = currentValue;
            } else {
              currentValue = '$currentValue$pressedValue';
            }
          }
          break;
        }
    }
    notifyListeners();
  }

  handleOperatorPress(pressedOperator) {
    if (currentValue[currentValue.length - 1] != '.') {
      if (expressionList.length - 1 != pressedOperator) {
        if (expressionList.length == 1 &&
            (expressionList[expressionList.length - 1] == '0')) {
          expressionList = [];
          expressionListViewer = [];
          notifyListeners();
        }
        updateExpressionList(currentValue);
        updateExpressionList(pressedOperator);
        currentValue = '0';
        notifyListeners();
      }
    }
  }

  updateExpressionList(value) {
    expressionList.add(value);
    expressionListViewer.insert(0, value);
    notifyListeners();
  }

  handleEqualPress() {
    updateExpressionList(currentValue);
    currentValue = '0';
    if (!(operatorsList.contains(expressionList.last))) {
      String expressionString = expressionList.join();
      expressionString = expressionString.replaceAll('x', '*');
      expression = Expression.parse(expressionString);
      var result = evaluator.eval(expression, context);
      currentValue = result.toString();
      expressionList = ['0'];
      expressionListViewer = ['0'];
      notifyListeners();
    }
  }
}
