import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class About extends StatefulWidget {
  const About({Key? key}) : super(key: key);

  @override
  State<About> createState() => _AboutState();
}

class _AboutState extends State<About> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text('Version No. : 1.0.0'),
          const Text('To learn how you can contribute to Clone of Windows Calculator'),
          Row(
            children: [
              const Text('Calculator, check out the project on '),
             InkWell(
                  onTap: () => launch('https://github.com/rishabh4208/simple_calculator'),
                  child: const Text('Github')
              ),
            ],
          ),
        ],
      ),
    );
  }
}
