import 'package:flutter/material.dart';
import 'package:simple_calculator/reponsive_config.dart';
import 'package:simple_calculator/responsive/desktop_layout.dart';
import 'package:simple_calculator/responsive/mobile_layout.dart';
import 'package:simple_calculator/responsive/tablet_layout.dart';
import 'package:simple_calculator/responsive/web_layout.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Standard'),
      ),
      drawer: Drawer(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
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
              Expanded(
                child: ListView(
                  children: const [
                    Text('Standard'),
                    Text('Scientific'),
                    Text('Graphing'),
                    Text('Programmer'),
                    Text('Date Calculation'),
                  ],
                ),
              ),
              const Text(
                'Convertor',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                ),
              ),
              Expanded(
                child: ListView(
                  children: const [
                    Text('Currency'),
                    Text('Volume'),
                    Text('Length'),
                    Text('Weight and Mass'),
                    Text('Temperature'),
                    Text('Energy'),
                    Text('Area'),
                    Text('Speed'),
                    Text('Time'),
                    Text('Power'),
                    Text('Data'),
                    Text('Pressure'),
                    Text('Angle'),
                  ],
                ),
              ),
              const Spacer(),
              const Text('About'),
            ],
          ),
        ),
      ),
      body: const ResponsiveLayout(
        mobileBody: MobileLayout(),
        tabletBody: TabletLayout(),
        desktopBody: DesktopLayout(),
        webBody: WebLayout(),
      ),
    );
  }
}
