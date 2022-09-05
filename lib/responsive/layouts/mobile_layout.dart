import 'package:flutter/material.dart';
import 'package:simple_calculator/responsive/function_bodies/calculator_body.dart';

class MobileLayout extends StatelessWidget {
  const MobileLayout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: CalculatorBody(),
    );
  }
}
