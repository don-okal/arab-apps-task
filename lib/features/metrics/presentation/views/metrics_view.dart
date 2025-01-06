import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:task/core/routes/app_colors.dart';
import 'package:task/core/utils/app_text_style.dart';
import 'package:task/core/utils/size_utils.dart';

import '../getx/controllers/metrics_controller.dart';

class MetricsView extends GetView<MetricsController> {
  const MetricsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(getVerticalSize(16)),
      child: Obx(
        () => Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Card(
              color: AppColors.blue,
              child: ListTile(
                title: Text(
                  "Total Orders",
                  style: AppTextStyle.white14600,
                ),
                trailing: Text(
                  "${controller.totalOrders.value}",
                  style: AppTextStyle.white14600,
                ),
              ),
            ),
            SizedBox(height: getVerticalSize(10)),
            Card(
              color: AppColors.red,
              child: ListTile(
                title: Text(
                  "Average Order Price",
                  style: AppTextStyle.white14600,
                ),
                trailing: Text(
                  "\$${controller.averagePrice.value.toStringAsFixed(2)}",
                  style: AppTextStyle.white14600,
                ),
              ),
            ),
            SizedBox(height: getVerticalSize(10)),
            Card(
              color: AppColors.green,
              child: ListTile(
                title: Text(
                  "Returned Orders",
                  style: AppTextStyle.white14600,
                ),
                trailing: Text(
                  "${controller.returnedOrders.value}",
                  style: AppTextStyle.white14600,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
