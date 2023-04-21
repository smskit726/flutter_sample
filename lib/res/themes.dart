import 'package:flutter/material.dart';

class Themes {
  static final ThemeData lightTheme = ThemeData().copyWith(
    scaffoldBackgroundColor: Colors.white,
    appBarTheme: const AppBarTheme(
      backgroundColor: Colors.white,
      titleTextStyle: TextStyle(fontSize: 25, color: Colors.black, fontWeight: FontWeight.bold, letterSpacing: 1.2),
      centerTitle: true,
      elevation: 0,
    ),
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      type: BottomNavigationBarType.shifting,
      selectedItemColor: Colors.blueAccent[100],
      unselectedIconTheme: const IconThemeData(color: Colors.grey),
      backgroundColor: Colors.grey[100],
    ),
    textTheme: const TextTheme(
      titleLarge: TextStyle(fontSize: 20, color: Colors.black, fontWeight: FontWeight.bold, letterSpacing: 1.2),
      titleMedium: TextStyle(fontSize: 18, color: Colors.black, fontWeight: FontWeight.bold, letterSpacing: 1.2),
      titleSmall: TextStyle(fontSize: 15, color: Colors.black, fontWeight: FontWeight.bold, letterSpacing: 1.2),
      bodyLarge: TextStyle(fontSize: 18, color: Colors.black),
      bodyMedium: TextStyle(fontSize: 15, color: Colors.black),
      bodySmall: TextStyle(fontSize: 12, color: Colors.black),
    ),
    cardTheme: CardTheme(
      margin: const EdgeInsets.symmetric(vertical: 10),
      elevation: 0.5,
      color: Colors.grey[300],
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(3.0)),
    ),
  );

  static final ThemeData darkTheme = ThemeData.dark().copyWith(
    scaffoldBackgroundColor: Colors.black,
    appBarTheme: const AppBarTheme(
      backgroundColor: Colors.black,
      titleTextStyle: TextStyle(fontSize: 25, color: Colors.white, fontWeight: FontWeight.bold, letterSpacing: 1.2),
      centerTitle: true,
      elevation: 0,
    ),
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      type: BottomNavigationBarType.shifting,
      selectedItemColor: Colors.blueAccent[100],
      unselectedIconTheme: const IconThemeData(color: Colors.grey),
      backgroundColor: Colors.grey[900],
    ),
    textTheme: const TextTheme(
      titleLarge: TextStyle(fontSize: 20, color: Colors.white, fontWeight: FontWeight.bold, letterSpacing: 1.2),
      titleMedium: TextStyle(fontSize: 18, color: Colors.white, fontWeight: FontWeight.bold, letterSpacing: 1.2),
      titleSmall: TextStyle(fontSize: 15, color: Colors.white, fontWeight: FontWeight.bold, letterSpacing: 1.2),
      bodyLarge: TextStyle(fontSize: 18, color: Colors.white),
      bodyMedium: TextStyle(fontSize: 15, color: Colors.white),
      bodySmall: TextStyle(fontSize: 12, color: Colors.white),
    ),
    cardTheme: CardTheme(
      margin: const EdgeInsets.symmetric(vertical: 10),
      elevation: 0.5,
      color: Colors.grey[850],
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(3.0)),
    ),
  );
}
