import 'package:flutter/material.dart';

class TTabBarTheme{

  TTabBarTheme._();

  /// -- Light Theme
  static const lightTabBarTheme=TabBarTheme(
    unselectedLabelColor: Colors.grey,
    labelColor: Colors.black
  );

  /// -- Dark Theme
  static const darkTabBarTheme=TabBarTheme(
      unselectedLabelColor: Colors.grey,
      labelColor: Colors.white
  );
}