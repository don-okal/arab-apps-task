import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../getx/controllers/graph_controller.dart';

class GraphView extends GetView<GraphController> {
  const GraphView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Smooth Line Chart'),
      ),
      body: Obx(() {
        if (controller.ordersPerDate.isEmpty) {
          return Center(child: CircularProgressIndicator());
        }

        final data = controller.ordersPerDate.entries.toList();
        data.sort((a, b) => a.key.compareTo(b.key));

        final xLabels = data.map((e) => e.key.substring(5, 7)).toList();

        List<FlSpot> spots = [];
        for (int i = 0; i < data.length; i++) {
          spots.add(FlSpot(i.toDouble(), data[i].value.toDouble()));
        }

        return Padding(
          padding: const EdgeInsets.all(16.0),
          child: LineChart(
            LineChartData(
              minY: 0,
              maxY: 10,
              gridData: FlGridData(show: true),
              titlesData: FlTitlesData(
                leftTitles: AxisTitles(
                  sideTitles: SideTitles(
                    showTitles: true,
                    reservedSize: 0,
                    getTitlesWidget: (value, meta) {
                      if (value % 2 != 0) return SizedBox.shrink();
                      return Text(
                        value.toInt().toString(),
                        style: TextStyle(fontSize: 12),
                      );
                    },
                  ),
                ),
                bottomTitles: AxisTitles(
                  sideTitles: SideTitles(
                    showTitles: true,
                    reservedSize: 300,
                    getTitlesWidget: (value, meta) {
                      if (value.toInt() < 0 ||
                          value.toInt() >= xLabels.length) {
                        return SizedBox.shrink();
                      }
                      return Text(
                        _monthLabel(int.parse(xLabels[value.toInt()])),
                        style: TextStyle(fontSize: 10),
                      );
                    },
                  ),
                ),
              ),
              borderData: FlBorderData(
                show: true,
                border: Border.all(color: Colors.black26, width: 1),
              ),
              lineBarsData: [
                LineChartBarData(
                  spots: spots,
                  isCurved: true,
                  gradient: LinearGradient(
                    colors: [Colors.blue, Colors.green],
                  ),
                  barWidth: 2,
                  isStrokeCapRound: true,
                  isStrokeJoinRound: true,
                  belowBarData: BarAreaData(
                    show: true,
                    gradient: LinearGradient(
                      colors: [
                        Colors.blue.withOpacity(0.3),
                        Colors.green.withOpacity(0.1),
                      ],
                    ),
                  ),
                  dotData: FlDotData(show: true),
                ),
              ],
              lineTouchData: LineTouchData(
                touchTooltipData: LineTouchTooltipData(
                  getTooltipColor: (touchedSpot) => Colors.blueAccent,
                  // tooltipBgColor: Colors.blueAccent,
                  getTooltipItems: (touchedSpots) {
                    return touchedSpots.map((spot) {
                      return LineTooltipItem(
                        '${data[spot.x.toInt()].key}\n',
                        TextStyle(color: Colors.white),
                        children: [
                          TextSpan(
                            text: '${spot.y.toInt()} orders',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.yellow),
                          ),
                        ],
                      );
                    }).toList();
                  },
                ),
                touchCallback: (event, response) {},
                handleBuiltInTouches: true,
              ),
            ),
          ),
        );
      }),
    );
  }

  // Helper to map month numbers to short names
  String _monthLabel(int month) {
    const months = [
      'JAN',
      'FEB',
      'MAR',
      'APR',
      'MAY',
      'JUN',
      'JUL',
      'AUG',
      'SEP',
      'OCT',
      'NOV',
      'DEC'
    ];
    return months[month - 1];
  }
}