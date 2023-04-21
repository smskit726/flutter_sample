import 'package:flutter/material.dart';
import 'package:work_manager/res/strings.dart';
import 'package:work_manager/res/themes.dart';

import 'base_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<StatefulWidget> createState() => AppState();
}

class AppState extends State<MyApp> {
  ThemeMode themeMode = ThemeMode.light;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: Strings.appTitle,
      themeMode: ThemeMode.dark,
      theme: Themes.lightTheme,
      darkTheme: Themes.darkTheme,
      home: BaseScreen(),
    );
  }
}
