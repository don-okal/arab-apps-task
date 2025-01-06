import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:task/features/Graph/presentation/views/graph_view.dart';
import 'package:task/features/metrics/presentation/views/metrics_view.dart';

class BottomNavBarController extends GetxController {
  var currentIndex = 0.obs;

  void changeIndex(int index) {
    currentIndex.value = index;
  }

  final List<Widget> pages = [
    MetricsView(),
    GraphView(),
  ];
}
