import 'package:flutter/material.dart';
import 'package:simple_calculator/responsive/about.dart';
import 'package:simple_calculator/responsive/dimensions.dart';
import 'package:simple_calculator/responsive/function_bodies/calculator/date_calculation.dart';
import 'package:simple_calculator/responsive/function_bodies/calculator/graphing.dart';
import 'package:simple_calculator/responsive/function_bodies/calculator/programmer.dart';
import 'package:simple_calculator/responsive/function_bodies/calculator/scientific.dart';
import 'package:simple_calculator/responsive/function_bodies/calculator/standard.dart';
import 'package:simple_calculator/responsive/function_bodies/convertor/angle.dart';
import 'package:simple_calculator/responsive/function_bodies/convertor/area.dart';
import 'package:simple_calculator/responsive/function_bodies/convertor/currency.dart';
import 'package:simple_calculator/responsive/function_bodies/convertor/data.dart';
import 'package:simple_calculator/responsive/function_bodies/convertor/energy.dart';
import 'package:simple_calculator/responsive/function_bodies/convertor/length.dart';
import 'package:simple_calculator/responsive/function_bodies/convertor/power.dart';
import 'package:simple_calculator/responsive/function_bodies/convertor/pressure.dart';
import 'package:simple_calculator/responsive/function_bodies/convertor/speed.dart';
import 'package:simple_calculator/responsive/function_bodies/convertor/temperature.dart';
import 'package:simple_calculator/responsive/function_bodies/convertor/time.dart';
import 'package:simple_calculator/responsive/function_bodies/convertor/volume.dart';
import 'package:simple_calculator/responsive/function_bodies/convertor/weight_and_mass.dart';

class CalculatorBody extends StatefulWidget {
  const CalculatorBody({Key? key}) : super(key: key);

  @override
  State<CalculatorBody> createState() => _CalculatorBodyState();
}

class _CalculatorBodyState extends State<CalculatorBody> {
  final drawerItems = [
    const Standard(),
    const Scientific(),
    const Graphing(),
    const Programmer(),
    const DateCalculation(),
    const Currency(),
    const Volume(),
    const Length(),
    const WeightAndMass(),
    const Temperature(),
    const Energy(),
    const Area(),
    const Speed(),
    const Time(),
    const Power(),
    const Data(),
    const Pressure(),
    const Angle(),
    const About()
  ];

  final drawerTitles = [
    'Standard',
    'Scientific',
    'Graphing',
    'Programmer',
    'Date Calculation',
    'Currency',
    'Volume',
    'Length',
    'Weight And Mass',
    'Temperature',
    'Energy',
    'Area',
    'Speed',
    'Time',
    'Power',
    'Data',
    'Pressure',
    'Angle',
    'About'
  ];

  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: Text(
          drawerTitles[selectedIndex],
        ),
        actions: [
          Visibility(
            visible: width < mobileWidth,
            child: IconButton(
              onPressed: () {
                showModalBottomSheet(
                    context: context,
                    builder: (ctx) {
                      return const SizedBox(
                        height: 300,
                        child: Padding(
                          padding: EdgeInsets.all(15.0),
                          child: Text('There\'s no history yet'),
                        ),
                      );
                    });
              },
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
                    drawerItem('Standard', Icons.calculate, 0),
                    drawerItem('Scientific', Icons.science, 1),
                    drawerItem('Graphing', Icons.auto_graph, 2),
                    drawerItem('Programmer', Icons.code, 3),
                    drawerItem('Date Calculation', Icons.calendar_month, 4),
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
                    drawerItem('Currency', Icons.currency_exchange_outlined, 5),
                    drawerItem('Volume', Icons.view_in_ar_outlined, 6),
                    drawerItem('Length', Icons.straighten_outlined, 7),
                    drawerItem(
                        'Weight and Mass', Icons.monitor_weight_outlined, 8),
                    drawerItem('Temperature', Icons.thermostat_outlined, 9),
                    drawerItem(
                        'Energy', Icons.local_fire_department_outlined, 10),
                    drawerItem('Area', Icons.grid_on_outlined, 11),
                    drawerItem('Speed', Icons.directions_run_outlined, 12),
                    drawerItem('Time', Icons.schedule, 13),
                    drawerItem('Power', Icons.bolt_outlined, 14),
                    drawerItem('Data', Icons.memory_outlined, 15),
                    drawerItem('Pressure', Icons.speed_outlined, 16),
                    drawerItem('Angle', Icons.square_foot_outlined, 17),
                  ],
                ),
                const SizedBox(
                  height: 50,
                ),
                drawerItem('About', Icons.info_outline, 18),
              ],
            ),
          ),
        ),
      ),
      body: _getDrawerItemScreen(selectedIndex),
    );
  }

  Widget drawerItem(String name, IconData icon, int index) {
    return ListTile(
      leading: Icon(icon),
      title: Text(name),
      onTap: () {
        setState(() {
          selectedIndex = index;
          //To close navigation drawer
          Navigator.of(context).pop();
        });
      },
    );
  }

  _getDrawerItemScreen(int selectedIndex) {
    return drawerItems[selectedIndex];
  }
}
