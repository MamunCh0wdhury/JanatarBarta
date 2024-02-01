import 'package:flutter/material.dart';
import 'package:janatar_barta/utils/theme/custom_theme/tab_bar_theme.dart';
import 'custom_theme/appbar_theme.dart';
import 'custom_theme/text_theme.dart';

class TAppTheme {
  TAppTheme._();

  /// -- Light Theme

  static ThemeData lightTheme = ThemeData(
      useMaterial3: true,
      fontFamily: 'Poppins',
      brightness: Brightness.light,
      scaffoldBackgroundColor: Colors.white,
      textTheme: TTextTheme.lightTextTheme,
      appBarTheme: TAppBarTheme.lightAppBarTheme,
      tabBarTheme: TTabBarTheme.lightTabBarTheme);

  /// -- Dark Theme

  static ThemeData darkTheme = ThemeData(
      useMaterial3: true,
      fontFamily: 'Poppins',
      brightness: Brightness.dark,
      scaffoldBackgroundColor: Colors.black,
      textTheme: TTextTheme.darkTextTheme,
      appBarTheme: TAppBarTheme.darkAppBarTheme,
      tabBarTheme: TTabBarTheme.darkTabBarTheme);
}
