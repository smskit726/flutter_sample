import 'package:flutter/material.dart';
import 'package:work_manager/model/enums.dart';
import 'package:work_manager/model/settings.dart';
import 'package:work_manager/preference/preference_helper.dart';
import 'package:work_manager/res/strings.dart';
import 'package:work_manager/res/themes.dart';

import 'base_screen.dart';

void main() {
  runApp(const MyApp());
  PreferenceHelper.init();
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<StatefulWidget> createState() => AppState();
}

class AppState extends State<MyApp> {
  Settings settings = PreferenceHelper.loadSettings();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      builder: (context, child) {
        // 시스템 폰트 사이즈 변경되어도 고정된 폰트 사이즈 유지
        return MediaQuery(
            data: MediaQuery.of(context).copyWith(textScaleFactor: settings.fontScale.scale), child: child!);
      },
      title: Strings.appTitle,
      themeMode: settings.themeMode,
      theme: Themes.lightTheme,
      darkTheme: Themes.darkTheme,
      home: BaseScreen(),
    );
  }
}
