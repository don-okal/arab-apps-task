import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../getx/controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      drawer: (screenWidth >= 600)
          ? Drawer(
              child: ListView(
                padding: EdgeInsets.zero,
                children: [
                  UserAccountsDrawerHeader(
                    accountName: Text('Ahmed'),
                    accountEmail: Text('ahmed@example.com'),
                    currentAccountPicture: CircleAvatar(
                      backgroundColor: Colors.orange,
                      child: Text('A'),
                    ),
                  ),
                  ListTile(
                    title: Text('Metrics'),
                    leading: Icon(Icons.trending_up),
                    onTap: () {
                      controller.bottomNavBarController.changeIndex(0);
                      Navigator.pop(context); // Close drawer
                    },
                  ),
                  ListTile(
                    title: Text('Graph'),
                    leading: Icon(Icons.trending_down),
                    onTap: () {
                      controller.bottomNavBarController.changeIndex(1);
                      Navigator.pop(context); // Close drawer
                    },
                  ),
                ],
              ),
            )
          : null,
      bottomNavigationBar: (screenWidth < 600)
          ? Obx(
              () => BottomNavigationBar(
                type: BottomNavigationBarType.fixed,
                currentIndex:
                    controller.bottomNavBarController.currentIndex.value,
                onTap: controller.bottomNavBarController.changeIndex,
                items: [
                  BottomNavigationBarItem(
                      icon: Icon(Icons.trending_up), label: 'Metrics'),
                  BottomNavigationBarItem(
                      icon: Icon(Icons.trending_down), label: 'Graph'),
                ],
              ),
            )
          : null,
      appBar: AppBar(
        title: Text('Home View'),
      ),
      body: Obx(
        () => controller.bottomNavBarController
            .pages[controller.bottomNavBarController.currentIndex.value],
      ),
    );
  }
}
