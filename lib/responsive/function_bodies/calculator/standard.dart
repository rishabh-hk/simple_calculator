import 'package:flutter/material.dart';

class Standard extends StatefulWidget {
  const Standard({Key? key}) : super(key: key);

  @override
  State<Standard> createState() => _StandardState();
}

class _StandardState extends State<Standard> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(15.0),
          child: Container(
            height: 125,
            width: double.infinity,
            color: Colors.blue,
          ),
        ),
        Expanded(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
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
                  iconBtn(Icons.percent_outlined),
                  textBtn('CE'),
                  textBtn('C'),
                  iconBtn(Icons.backspace_outlined),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  textBtn('1/x'),
                  textBtn('x2'),
                  textBtn('√x'),
                  textBtn('÷'),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  textBtn('7'),
                  textBtn('8'),
                  textBtn('9'),
                  textBtn('X'),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  textBtn('4'),
                  textBtn('5'),
                  textBtn('6'),
                  textBtn('-'),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  textBtn('1'),
                  textBtn('2'),
                  textBtn('3'),
                  textBtn('+'),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  textBtn('+/-'),
                  textBtn('0'),
                  textBtn('.'),
                  textBtn('='),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget textBtn(String buttonName) {
    return TextButton(
      onPressed: () {},
      child: Text(
        buttonName,
        style: const TextStyle(
          fontSize: 20,
        ),
      ),
    );
  }

  Widget iconBtn(IconData icon) {
    return IconButton(
      onPressed: () {},
      icon: Icon(icon),
    );
  }
}
