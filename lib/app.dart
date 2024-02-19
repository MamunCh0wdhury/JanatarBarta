import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:janatar_barta/features/home/view/home_view.dart';
import 'package:janatar_barta/utils/theme/theme.dart';

class App extends StatelessWidget {
  const App({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: const  Size(360, 690),
        minTextAdapt: true,
        splitScreenMode: true,
        builder: (context, child) {
          return GetMaterialApp(
            debugShowCheckedModeBanner: false,
            themeMode: ThemeMode.system,
            darkTheme: TAppTheme.darkTheme,
            theme: TAppTheme.lightTheme,
            home: child,
          );
        },
        child: const HomeView());
  }
}
