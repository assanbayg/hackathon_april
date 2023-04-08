import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';

class SleepHoursLineChart extends StatelessWidget {
  const SleepHoursLineChart({super.key});

  @override
  Widget build(BuildContext context) {
    return LineChart(
      LineChartData(
        backgroundColor: Colors.white.withOpacity(0.8),
        minX: 1,
        maxX: 7,
        minY: 0,
        maxY: 12,
        lineBarsData: [
          LineChartBarData(
            spots: [
              FlSpot(1, 3),
              FlSpot(2, 4),
              FlSpot(3, 2),
              FlSpot(4, 10),
              FlSpot(5, 5),
              FlSpot(6, 13),
            ],
            isCurved: true,
            barWidth: 5,
            color: Colors.green.shade900,
            belowBarData: BarAreaData(
              show: true,
              color: Colors.green.withOpacity(0.2),
            ),
            dotData: FlDotData(show: true),
            // You can customize additional properties of the LineChartBarData here
          ),
        ],
        titlesData: FlTitlesData(
          bottomTitles: AxisTitles(
            sideTitles: SideTitles(
              showTitles: false,
              getTitlesWidget: (value, meta) {
                String text = '';
                switch (value.toInt()) {
                  case 1:
                    text = 'Mon';
                    break;
                  case 2:
                    text = 'Tue';
                    break;
                  case 3:
                    text = 'Wed';
                    break;
                  case 4:
                    text = 'Thu';
                    break;
                  case 5:
                    text = 'Fri';
                    break;
                  case 6:
                    text = 'Sat';
                    break;
                  case 7:
                    text = 'Sun';
                    break;
                  default:
                    text = '';
                }
                return Text(
                  text,
                  style: const TextStyle(fontSize: 14),
                );
              },
            ),
          ),
          leftTitles: AxisTitles(
            sideTitles: SideTitles(
              getTitlesWidget: (value, meta) {
                return Text('${value.toInt()}');
              },
            ),
          ),
        ),
        gridData: FlGridData(
          show: true,
          checkToShowHorizontalLine: (value) => value % 2 == 0,
          getDrawingHorizontalLine: (value) => FlLine(
            color: Colors.grey.withOpacity(0.2),
            strokeWidth: 1,
          ),
        ),
      ),
      swapAnimationDuration: const Duration(milliseconds: 250),
    );
  }
}
