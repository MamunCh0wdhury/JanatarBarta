import 'package:flutter/material.dart';

class TAppBarTheme {
  TAppBarTheme._();

  /// -- Light Theme
  static const lightAppBarTheme = AppBarTheme(
    elevation: 0.0,
    centerTitle: false,
    scrolledUnderElevation: 0.0,
    backgroundColor: Colors.transparent,
    surfaceTintColor: Colors.transparent,
    iconTheme: IconThemeData(color: Colors.black, size: 24.0),
    actionsIconTheme: IconThemeData(color: Colors.black, size: 24.0),
    titleTextStyle: TextStyle(
        color: Colors.black, fontSize: 18, fontWeight: FontWeight.w600),
  );

  /// -- Dark Theme

  static const darkAppBarTheme = AppBarTheme(
    elevation: 0.0,
    centerTitle: false,
    scrolledUnderElevation: 0.0,
    backgroundColor: Colors.transparent,
    surfaceTintColor: Colors.transparent,
    iconTheme: IconThemeData(color: Colors.black, size: 24.0),
    actionsIconTheme: IconThemeData(color: Colors.white, size: 24.0),
    titleTextStyle: TextStyle(
        color: Colors.white, fontSize: 18, fontWeight: FontWeight.w600),
  );
}
