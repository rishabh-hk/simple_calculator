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

  final drawerIcons = [
    Icons.calculate,
    Icons.science,
    Icons.auto_graph,
    Icons.code,
    Icons.calendar_month,
    Icons.currency_exchange_outlined,
    Icons.view_in_ar_outlined,
    Icons.straighten_outlined,
    Icons.monitor_weight_outlined,
    Icons.thermostat_outlined,
    Icons.local_fire_department_outlined,
    Icons.grid_on_outlined,
    Icons.directions_run_outlined,
    Icons.schedule,
    Icons.bolt_outlined,
    Icons.memory_outlined,
    Icons.speed_outlined,
    Icons.square_foot_outlined,
    Icons.info_outline
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
          padding: const EdgeInsets.only(left: 15.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Flexible(
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
                          drawerItem(0),
                          drawerItem(1),
                          drawerItem(2),
                          drawerItem(3),
                          drawerItem(4),
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
                          drawerItem(5),
                          drawerItem(6),
                          drawerItem(7),
                          drawerItem(8),
                          drawerItem(9),
                          drawerItem(10),
                          drawerItem(11),
                          drawerItem(12),
                          drawerItem(13),
                          drawerItem(14),
                          drawerItem(15),
                          drawerItem(16),
                          drawerItem(17),
                        ],
                      ),
                      const SizedBox(
                        height: 50,
                      ),
                    ],
                  ),
                ),
              ),
              drawerItem(18),
            ],
          ),
        ),
      ),
      body: _getDrawerItemScreen(selectedIndex),
    );
  }

  Widget drawerItem(int index) {
    return ListTile(
      leading: Icon(drawerIcons[index]),
      title: Text(drawerTitles[index]),
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
