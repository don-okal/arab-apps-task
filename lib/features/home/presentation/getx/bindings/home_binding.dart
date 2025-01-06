import 'package:get/get.dart';
import 'package:task/features/Graph/presentation/getx/controllers/graph_controller.dart';

import '../controllers/home_controller.dart';

class HomeBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<HomeController>(
      () => HomeController(),
    );
    Get.lazyPut<GraphController>(
      () => GraphController(),
    );
  }
}
