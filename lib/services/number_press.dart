List<String> handleNumberPress(
    List<String> expressionList, String pressedNumber) {
  if (expressionList.length == 1 && expressionList[0] == '0') {
    return [pressedNumber];
  }
  if (expressionList[expressionList.length - 1] == '0') {
    expressionList[expressionList.length - 1] = pressedNumber;
    return expressionList;
  }
  if (expressionList[expressionList.length - 1] != '0') {
    expressionList[expressionList.length - 1] =
        '${expressionList.length - 1}$pressedNumber';
    return expressionList;
  }
  return ['0'];
}
