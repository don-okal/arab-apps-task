import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../getx/controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Obx(
        () => BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          currentIndex: controller.bottomNavBarController.currentIndex.value,
          onTap: controller.bottomNavBarController.changeIndex,
          items: [
            BottomNavigationBarItem(
                icon: Icon(Icons.trending_up), label: 'Metrics'),
            BottomNavigationBarItem(
                icon: Icon(Icons.trending_down), label: 'Graph'),
          ],
        ),
      ),
      body: Obx(
        () => controller.bottomNavBarController
            .pages[controller.bottomNavBarController.currentIndex.value],
      ),
    );
  }
}
