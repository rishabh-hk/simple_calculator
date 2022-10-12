import 'package:flutter/material.dart';

class Speed extends StatefulWidget {
  const Speed({Key? key}) : super(key: key);

  @override
  State<Speed> createState() => _SpeedState();
}

class _SpeedState extends State<Speed> {
  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text('Speed'),
    );
  }
}
