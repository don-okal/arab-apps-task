import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:get/get.dart';

class GraphController extends GetxController {
  var ordersPerDate = <String, int>{}.obs;

  @override
  void onInit() {
    super.onInit();
    loadOrders();
  }

  Future<void> loadOrders() async {
    final String response = await rootBundle.loadString('assets/orders.json');
    final List<dynamic> data = jsonDecode(response);

    Map<String, int> dateCounts = {};
    for (var order in data) {
      String date = order['registered'].split("T")[0];
      dateCounts[date] = (dateCounts[date] ?? 0) + 1;
    }

    ordersPerDate.value = dateCounts;
  }
}
