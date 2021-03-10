import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class AdminLineChart extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return LineChart(
      LineChartData(lineBarsData: [
        LineChartBarData(spots: [FlSpot(1, 2)])
      ]),
    );
  }
}
