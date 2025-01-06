import 'package:get/get.dart';

import '../../features/Graph/presentation/getx/bindings/graph_binding.dart';
import '../../features/Graph/presentation/views/graph_view.dart';
import '../../features/home/presentation/getx/bindings/home_binding.dart';
import '../../features/home/presentation/views/home_view.dart';
import '../../features/metrics/presentation/getx/bindings/metrics_binding.dart';
import '../../features/metrics/presentation/views/metrics_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const initial = Routes.home;

  static final routes = [
    GetPage(
      name: _Paths.metrics,
      page: () => const MetricsView(),
      binding: MetricsBinding(),
    ),
    GetPage(
      name: _Paths.graph,
      page: () => const GraphView(),
      binding: GraphBinding(),
    ),
    GetPage(
      name: _Paths.home,
      page: () => const HomeView(),
      binding: HomeBinding(),
    ),
  ];
}
