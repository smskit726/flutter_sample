import 'package:flutter/material.dart';

class Themes {
  static final ThemeData lightTheme = ThemeData().copyWith(
    scaffoldBackgroundColor: Colors.white,
    appBarTheme: const AppBarTheme(
      backgroundColor: Colors.white,
      titleTextStyle: TextStyle(fontSize: 18, color: Colors.black, fontWeight: FontWeight.bold, letterSpacing: 1.2),
      centerTitle: true,
      elevation: 0,
    ),
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      type: BottomNavigationBarType.shifting,
      selectedItemColor: Colors.deepOrangeAccent[100],
      unselectedIconTheme: const IconThemeData(color: Colors.grey),
      backgroundColor: Colors.grey[100],
    ),
    textTheme: const TextTheme(
      titleLarge: TextStyle(fontSize: 18, color: Colors.black, fontWeight: FontWeight.bold),
      titleMedium: TextStyle(fontSize: 15, color: Colors.black, fontWeight: FontWeight.bold),
      titleSmall: TextStyle(fontSize: 12, color: Colors.black, fontWeight: FontWeight.bold),
      bodyLarge: TextStyle(fontSize: 15, color: Colors.black),
      bodyMedium: TextStyle(fontSize: 13, color: Colors.black),
      bodySmall: TextStyle(fontSize: 10, color: Colors.black),
    ),
  );

  static final ThemeData darkTheme = ThemeData.dark().copyWith(
    scaffoldBackgroundColor: Colors.black,
    appBarTheme: const AppBarTheme(
      backgroundColor: Colors.black,
      titleTextStyle: TextStyle(fontSize: 18, color: Colors.white, fontWeight: FontWeight.bold, letterSpacing: 1.2),
      centerTitle: true,
      elevation: 0,
    ),
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      type: BottomNavigationBarType.shifting,
      selectedItemColor: Colors.deepOrangeAccent[100],
      unselectedIconTheme: const IconThemeData(color: Colors.grey),
      backgroundColor: Colors.grey[900],
    ),
    textTheme: const TextTheme(
      titleLarge: TextStyle(fontSize: 18, color: Colors.white, fontWeight: FontWeight.bold),
      titleMedium: TextStyle(fontSize: 15, color: Colors.white, fontWeight: FontWeight.bold),
      titleSmall: TextStyle(fontSize: 12, color: Colors.white, fontWeight: FontWeight.bold),
      bodyLarge: TextStyle(fontSize: 15, color: Colors.white),
      bodyMedium: TextStyle(fontSize: 13, color: Colors.white),
      bodySmall: TextStyle(fontSize: 10, color: Colors.white),
    ),
  );
}
