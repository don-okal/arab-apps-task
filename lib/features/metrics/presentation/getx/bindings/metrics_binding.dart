import 'package:get/get.dart';
import 'package:task/features/home/presentation/getx/controllers/bottom_nav_bar_controller.dart';

import '../controllers/metrics_controller.dart';

class MetricsBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<MetricsController>(
      () => MetricsController(),
    );
    Get.lazyPut<BottomNavBarController>(
      () => BottomNavBarController(),
    );
  }
}
