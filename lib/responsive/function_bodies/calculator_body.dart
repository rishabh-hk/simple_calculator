import 'package:flutter/material.dart';

class CalculatorBody extends StatefulWidget {
  const CalculatorBody({Key? key}) : super(key: key);

  @override
  State<CalculatorBody> createState() => _CalculatorBodyState();
}

class _CalculatorBodyState extends State<CalculatorBody> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(15.0),
          child: Container(
            height: 150,
            width: double.infinity,
            color: Colors.blue,
          ),
        ),
        //TODO: Calculator Function Buttons
        Expanded(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Row(
                children: [
                  textBtn('MC'),
                  textBtn('MR'),
                  textBtn('M+'),
                  textBtn('M-'),
                  textBtn('MS'),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.percent_outlined),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.clear_outlined),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.delete_outline),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.backspace_outlined),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.percent_outlined),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.clear_outlined),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.delete_outline),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.backspace_outlined),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  TextButton(
                    onPressed: () {},
                    child: const Text('7'),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: const Text('8'),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: const Text('9'),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: const Text('X'),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  TextButton(
                    onPressed: () {},
                    child: const Text('4'),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: const Text('5'),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: const Text('6'),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: const Text('-'),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  TextButton(
                    onPressed: () {},
                    child: const Text('1'),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: const Text('2'),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: const Text('3'),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.add),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.percent_outlined),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: const Text('0'),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: const Text('.'),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: const Text('='),
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget textBtn(String buttonName){
    return TextButton(
      onPressed: () {},
      child: Text(buttonName),
    );
  }
}
