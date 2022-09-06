import 'package:flutter/material.dart';
import 'package:simple_calculator/responsive/responsive_config.dart';
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
    return const Scaffold(
      body: ResponsiveLayout(
        mobileBody: MobileLayout(),
        tabletBody: TabletLayout(),
        desktopBody: DesktopLayout(),
      ),
    );
  }
}
