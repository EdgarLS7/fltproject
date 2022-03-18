
import 'package:flutter/material.dart';

class AppTheme {

  static const Color primary = Colors.orange;

  static final ThemeData lightTheme = ThemeData.light().copyWith(
    //Color primario
    primaryColor: primary,

    //Appbar Theme
    appBarTheme: const AppBarTheme(
      color: primary,
      elevation: 0,
    ),

    //TextButton Theme
    textButtonTheme: TextButtonThemeData(
      style: TextButton.styleFrom( primary: primary)
    ),

    //FloatingActionButton Theme
    floatingActionButtonTheme: const FloatingActionButtonThemeData(
      backgroundColor: primary,
    ),

    //ElevatedButton Theme
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        primary: primary,
        shape: const StadiumBorder(),
        elevation: 5,
      )
    ),
  );

  static final ThemeData darkTheme = ThemeData.dark().copyWith(
    //Color primario
    primaryColor: primary,

    //Appbar Theme
    appBarTheme: const AppBarTheme(
      color: primary,
      elevation: 0,
    ),

    scaffoldBackgroundColor: Colors.black
  );

  
}