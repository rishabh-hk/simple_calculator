import 'package:flutter/material.dart';
import 'package:simple_calculator/responsive/dimensions.dart';

class CalculatorBody extends StatefulWidget {
  const CalculatorBody({Key? key}) : super(key: key);

  @override
  State<CalculatorBody> createState() => _CalculatorBodyState();
}

class _CalculatorBodyState extends State<CalculatorBody> {
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Standard'),
        actions: [
          Visibility(
            visible: width < mobileWidth,
            child: IconButton(
              onPressed: () {},
              icon: const Icon(Icons.history),
            ),
          ),
        ],
      ),
      drawer: Drawer(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 80,
                ),
                const Text(
                  'Calculator',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                ListView(
                  shrinkWrap: true,
                  controller: ScrollController(),
                  physics: const NeverScrollableScrollPhysics(),
                  children: [
                    drawerItem('Standard', Icons.calculate),
                    drawerItem('Scientific', Icons.science),
                    drawerItem('Graphing', Icons.auto_graph),
                    drawerItem('Programmer', Icons.code),
                    drawerItem('Date Calculation', Icons.calendar_month),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                const Text(
                  'Convertor',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                ListView(
                  shrinkWrap: true,
                  controller: ScrollController(),
                  physics: const NeverScrollableScrollPhysics(),
                  children: [
                    drawerItem('Currency', Icons.storage),
                    drawerItem('Volume', Icons.calculate),
                    drawerItem('Length', Icons.calculate),
                    drawerItem('Weight and Mass', Icons.calculate),
                    drawerItem('Temperature', Icons.calculate),
                    drawerItem('Energy', Icons.calculate),
                    drawerItem('Area', Icons.calculate),
                    drawerItem('Speed', Icons.calculate),
                    drawerItem('Time', Icons.calculate),
                    drawerItem('Power', Icons.calculate),
                    drawerItem('Data', Icons.calculate),
                    drawerItem('Pressure', Icons.calculate),
                    drawerItem('Angle', Icons.calculate),
                  ],
                ),
                const SizedBox(
                  height: 50,
                ),
                drawerItem('About', Icons.info_outline),
              ],
            ),
          ),
        ),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Container(
              height: 125,
              width: double.infinity,
              color: Colors.blue,
            ),
          ),
          //TODO: Calculator Function Buttons
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
      ),
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

  Widget drawerItem(String name, IconData icon) {
    return ListTile(
      leading: Icon(icon),
      title: Text(name),
    );
  }
}
