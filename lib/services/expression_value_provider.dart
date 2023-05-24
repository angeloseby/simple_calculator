import 'package:flutter/material.dart';
import 'package:simple_calculator/config/font_pallete.dart';

class ExpressionValueProvider extends ChangeNotifier {
  String currentValue = '0';
  List<String> expressionList = ['0'];
  List<TextSpan> widgetList = [];

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

  updateExpressionWidgetList() {
    List<String> operatorsList = ['/', '*', '+', '-'];
    widgetList.clear();
    for (String item in expressionList) {
      widgetList.add(TextSpan(
        text: item,
        style: operatorsList.contains(item)
            ? FontPallete.expressionOperatorFontStyle
            : FontPallete.expressionNumberFontStyle,
      ));
    }
    notifyListeners();
  }

  initialBuildExpressionWidgetList() {
    print("initialBuildExpressionList");
    List<String> operatorsList = ['/', '*', '+', '-'];
    for (String item in expressionList) {
      widgetList.add(TextSpan(
        text: item,
        style: operatorsList.contains(item)
            ? FontPallete.expressionOperatorFontStyle
            : FontPallete.expressionNumberFontStyle,
      ));
    }
  }
}
