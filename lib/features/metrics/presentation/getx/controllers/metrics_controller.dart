import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:get/get.dart';

class MetricsController extends GetxController {
  var totalOrders = 0.obs;
  var averagePrice = 0.0.obs;
  var returnedOrders = 0.obs;

  Future<void> loadOrders() async {
    final String response = await rootBundle.loadString('assets/orders.json');
    final List<dynamic> data = jsonDecode(response);

    totalOrders.value = data.length;

    // حساب متوسط السعر
    double totalPrice = 0;
    int returnedCount = 0;

    for (var order in data) {
      // إزالة علامات الدولار والفواصل لحساب الأرقام بشكل صحيح
      String price = order['price'].replaceAll("\$", "").replaceAll(",", "");
      totalPrice += double.parse(price);

      if (order['status'] == "RETURNED") {
        returnedCount++;
      }
    }

    averagePrice.value = totalPrice / totalOrders.value;
    returnedOrders.value = returnedCount;
  }

  @override
  void onInit() {
    super.onInit();
    loadOrders();
  }
}
