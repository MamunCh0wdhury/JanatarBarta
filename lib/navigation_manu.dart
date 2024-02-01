import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:janatar_barta/features/home/view/home_view.dart';
import 'package:janatar_barta/utils/helpers/helper_function.dart';

class NavigationManu extends StatelessWidget {
  const NavigationManu({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(NavigationController());
    final darkMode = THelperFunction.isDarkMode(context);
    return Scaffold(
      bottomNavigationBar: Obx(
        () => NavigationBar(
            height: 80,
            elevation: 0,
            selectedIndex: controller.selectIndex.value,
            onDestinationSelected: (index) =>
                controller.selectIndex.value = index,
            backgroundColor: darkMode ? Colors.black : Colors.white,
            indicatorColor: darkMode
                ? Colors.white.withOpacity(0.1)
                : Colors.black.withOpacity(0.1),
            destinations: const [
              NavigationDestination(icon: Icon(Icons.home), label: ''),
              NavigationDestination(
                  icon: Icon(Icons.search), label: ''),
              NavigationDestination(icon: Icon(Icons.share), label: ''),
              NavigationDestination(icon: Icon(Icons.settings), label: ''),
            ]),
      ),
      body: Obx(() => controller.screen[controller.selectIndex.value]),
    );
  }
}

class NavigationController extends GetxController {
  final Rx<int> selectIndex = 0.obs;

  final screen = [
    const HomeView(),
    Container(
      color: Colors.red,
    ),
    Container(
      color: Colors.deepPurple,
    ),
    Container(
      color: Colors.orange,
    )
  ];
}
