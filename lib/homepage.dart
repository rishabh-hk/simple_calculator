import 'package:flutter/material.dart';
import 'package:simple_calculator/reponsive_config.dart';
import 'package:simple_calculator/responsive/dimensions.dart';
import 'package:simple_calculator/responsive/layouts/desktop_layout.dart';
import 'package:simple_calculator/responsive/layouts/mobile_layout.dart';
import 'package:simple_calculator/responsive/layouts/tablet_layout.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
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
      body: const ResponsiveLayout(
        mobileBody: MobileLayout(),
        tabletBody: TabletLayout(),
        desktopBody: DesktopLayout(),
      ),
    );
  }

  Widget drawerItem(String name, IconData icon) {
    return ListTile(
      leading: Icon(icon),
      title: Text(name),
    );
  }
}
