import 'package:flutter/material.dart';

class Angle extends StatefulWidget {
  const Angle({Key? key}) : super(key: key);

  @override
  State<Angle> createState() => _AngleState();
}

class _AngleState extends State<Angle> {
  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text('Angle'),
    );
  }
}
