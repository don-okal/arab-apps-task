import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:task/core/utils/app_text_style.dart';
import 'package:task/core/utils/size_utils.dart';

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
        padding: EdgeInsets.all(getVerticalSize(16)),
        child: Obx(
          () => Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Card(
                child: ListTile(
                  title: Text("Total Orders"),
                  trailing: Text(
                    "${controller.totalOrders.value}",
                    style: AppTextStyle.black13500,
                  ),
                ),
              ),
              SizedBox(height: getVerticalSize(10)),
              Card(
                child: ListTile(
                  title: Text("Average Order Price"),
                  trailing: Text(
                    "\$${controller.averagePrice.value.toStringAsFixed(2)}",
                    style: AppTextStyle.black13500,
                  ),
                ),
              ),
              SizedBox(height: getVerticalSize(10)),
              Card(
                child: ListTile(
                  title: Text("Returned Orders"),
                  trailing: Text(
                    "${controller.returnedOrders.value}",
                    style: AppTextStyle.black13500,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
