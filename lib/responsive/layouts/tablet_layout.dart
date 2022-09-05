import 'package:flutter/material.dart';
import 'package:simple_calculator/responsive/function_bodies/calculator_body.dart';
import 'package:simple_calculator/responsive/function_bodies/history_body.dart';

class TabletLayout extends StatelessWidget {
  const TabletLayout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: const [
        Expanded(
          child: CalculatorBody(),
        ),
        HistoryBody(),
      ],
    );
  }
}
