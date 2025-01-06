import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:task/core/routes/app_pages.dart';

import '../getx/controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Home')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () => Get.toNamed(Routes.metrics),
              child: Text('Metrics Screen'),
            ),
            ElevatedButton(
              onPressed: () => Get.toNamed(Routes.graph),
              child: Text('Graph Screen'),
            ),
          ],
        ),
      ),
    );
  }
}
