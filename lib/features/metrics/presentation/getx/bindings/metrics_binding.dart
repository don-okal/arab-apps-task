import 'package:get/get.dart';

import '../controllers/metrics_controller.dart';

class MetricsBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<MetricsController>(
      () => MetricsController(),
    );
  }
}
