import 'package:flutter/material.dart';

class WeightAndMass extends StatefulWidget {
  const WeightAndMass({Key? key}) : super(key: key);

  @override
  State<WeightAndMass> createState() => _WeightAndMassState();
}

class _WeightAndMassState extends State<WeightAndMass> {
  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text('Weight and Mass'),
    );
  }
}
