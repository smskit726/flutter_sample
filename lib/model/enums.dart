import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:work_manager/screen/board_screen.dart';
import 'package:work_manager/screen/contact_screen.dart';
import 'package:work_manager/screen/home_screen.dart';
import 'package:work_manager/screen/settings_screen.dart';

enum NavigationItem {
  home,
  contact,
  board,
  settings,
  ;
}

Map<NavigationItem, Widget> screen = {
  NavigationItem.home: HomeScreen(),
  NavigationItem.contact: ContactScreen(),
  NavigationItem.board: BoardScreen(),
  NavigationItem.settings: SettingsScreen(),
};
