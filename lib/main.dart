import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:simple_calculator/config/color_pallete.dart';
import 'package:simple_calculator/screens/calculator_screen.dart';
import 'package:simple_calculator/services/expression_value_provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => ExpressionValueProvider()),
      ],
      child: MaterialApp(
        title: 'Calculator',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          scaffoldBackgroundColor: PalleteLight.scaffoldColor,
        ),
        home: const CalculatorScreen(),
      ),
    );
  }
}
