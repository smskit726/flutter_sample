import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:work_manager/res/strings.dart';
import 'package:work_manager/screen/board_screen.dart';
import 'package:work_manager/screen/contact_screen.dart';
import 'package:work_manager/screen/home_screen.dart';
import 'package:work_manager/screen/settings_screen.dart';

// flutter clean

// flutter pub cache repair

// flutter pub run build_runner build

// flutter pub run flutter_launcher_icons

// flutter packages pub run build_runner build --delete-conflicting-outputs

enum NavigationItem {
  home,
  contact,
  board,
  settings,
  ;
}

enum FontScale {
  verySmall(1.0),
  small(1.1),
  normal(1.2),
  big(1.3),
  veryBig(1.4),
  ;

  final double scale;

  const FontScale(this.scale);

  factory FontScale.getByScale(double scale) {
    return FontScale.values.firstWhere((element) => element.scale == scale);
  }
}

Map<NavigationItem, Widget> screen = {
  NavigationItem.home: HomeScreen(),
  NavigationItem.contact: ContactScreen(),
  NavigationItem.board: BoardScreen(),
  NavigationItem.settings: SettingsScreen(),
};
