import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../getx/controllers/metrics_controller.dart';

class MetricsView extends GetView<MetricsController> {
  const MetricsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Metrics Screen'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Obx(
          () => Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Card(
                child: ListTile(
                  title: Text("Total Orders"),
                  trailing: Text("${controller.totalOrders.value}"),
                ),
              ),
              SizedBox(height: 10),
              Card(
                child: ListTile(
                  title: Text("Average Order Price"),
                  trailing: Text(
                      "\$${controller.averagePrice.value.toStringAsFixed(2)}"),
                ),
              ),
              SizedBox(height: 10),
              Card(
                child: ListTile(
                  title: Text("Returned Orders"),
                  trailing: Text("${controller.returnedOrders.value}"),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
