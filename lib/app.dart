import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:janatar_barta/navigation_manu.dart';
import 'package:janatar_barta/utils/theme/theme.dart';

class App extends StatelessWidget {
  const App({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.system,
      darkTheme: TAppTheme.darkTheme,
      theme: TAppTheme.lightTheme,
      home: const NavigationManu(),
    );
  }
}
