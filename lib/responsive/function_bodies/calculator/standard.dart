import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Standard extends StatefulWidget {
  const Standard({Key? key}) : super(key: key);

  @override
  State<Standard> createState() => _StandardState();
}

class _StandardState extends State<Standard> {

  TextEditingController mainText = TextEditingController(text: '0');

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(15.0),
          child: SizedBox(
            height: 125,
            width: double.infinity,
            child: Column(
              children: [
                Expanded(
                  child: Text(
                    mainText.text == '0' ? '' : mainText.text,
                  ),
                ),
                Expanded(
                  child: TextField(
                    controller: mainText,
                    textDirection: TextDirection.rtl,
                    inputFormatters: <TextInputFormatter>[
                      FilteringTextInputFormatter.digitsOnly,
                    ],
                    style: const TextStyle(
                      fontSize: 25.0
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        Expanded(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Row(
                children: [
                  textBtn('MC', () {}),
                  textBtn('MR', () {}),
                  textBtn('M+', () {}),
                  textBtn('M-', () {}),
                  textBtn('MS', () {}),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  iconBtn(Icons.percent_outlined, () {}),
                  textBtn('CE', () {
                    mainText.text = '0';
                  }),
                  textBtn('C', () {
                    mainText.text = '0';
                  }),
                  iconBtn(Icons.backspace_outlined, () {}),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  textBtn('1/x', () {}),
                  textBtn('x2', () {}),
                  textBtn('√x', () {}),
                  textBtn('÷', () {}),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  textBtn('7', () {
                    mainText.text = '7';
                  }),
                  textBtn('8', () {
                    mainText.text = '8';
                  }),
                  textBtn('9', () {
                    mainText.text = '9';
                  }),
                  textBtn('*', () {}),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  textBtn('4', () {
                    mainText.text = '4';
                  }),
                  textBtn('5', () {
                    mainText.text = '5';
                  }),
                  textBtn('6', () {
                    mainText.text = '6';
                  }),
                  textBtn('-', () {}),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  textBtn('1', () {
                    mainText.text = '1';
                  }),
                  textBtn('2', () {
                    mainText.text = '2';
                  }),
                  textBtn('3', () {
                    mainText.text = '3';
                  }),
                  textBtn('+', () {}),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  textBtn('+/-', () {}),
                  textBtn('0', () {
                    mainText.text = '0';
                  }),
                  textBtn('.', () {}),
                  textBtn('=', () {}),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget textBtn(String buttonName, Function() text) {
    return ElevatedButton(
      onPressed: text,
      style: ElevatedButton.styleFrom(
          shape: const CircleBorder(),
          // padding: const EdgeInsets.all(20),
          backgroundColor: Theme.of(context).canvasColor,
          elevation: 0),
      child: Text(
        buttonName,
        style: const TextStyle(
          fontSize: 20,
        ),
      ),
    );
  }

  Widget iconBtn(IconData icon, Function() text) {
    return IconButton(
      onPressed: text,
      icon: Icon(icon),
    );
  }

  @override
  void dispose() {
    mainText.dispose();
    super.dispose();
  }

}
