import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:simple_calculator/homepage.dart';
import 'package:simple_calculator/responsive/dimensions.dart';
import 'package:window_size/window_size.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();

  //To Limit Screen Size for Desktop Variants
  if (Platform.isWindows || Platform.isLinux || Platform.isMacOS) {
    setWindowTitle('Calculator');
    setWindowMinSize(const Size(minDesktopWindowWidth, minDesktopWindowHeight));
    setWindowMaxSize(Size.infinite);
  }

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Calculator',
      debugShowCheckedModeBanner: kDebugMode ? true : false,
      theme: ThemeData(
        // appBarTheme: AppBarTheme(
        //   backgroundColor: Theme.of(context).primaryColor,
        //   systemOverlayStyle: SystemUiOverlayStyle(
        //     statusBarColor: Theme.of(context).primaryColor,
        //   ),
        // ),
        brightness: Brightness.light,
        primarySwatch: Colors.blue,
      ),
      darkTheme: ThemeData(
        // appBarTheme: AppBarTheme(
        //   backgroundColor: Theme.of(context).primaryColor,
        //   systemOverlayStyle: SystemUiOverlayStyle(
        //     statusBarColor: Theme.of(context).primaryColor,
        //   ),
        // ),
        brightness: Brightness.dark,
        primaryColor: Colors.blue,
      ),
      themeMode: ThemeMode.system,
      home: const HomePage(),
    );
  }
}