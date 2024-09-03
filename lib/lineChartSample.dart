import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class LineChartSample extends StatefulWidget {
  const LineChartSample({super.key});

  @override
  State<LineChartSample> createState() => _LineChartSampleState();
}

class _LineChartSampleState extends State<LineChartSample> {
  List<Color> gradientColors = const [
    Color(0xff23b6e6),
    Color(0xff02d39a),
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 200,
      height: 200,
      child: LineChart(
        LineChartData(
          titlesData: FlTitlesData(
            show: true,
            bottomTitles: AxisTitles(
              sideTitles: SideTitles(
                showTitles: true,
                reservedSize: 22,
                getTitlesWidget: (value, meta) {
                  switch (value.toInt()) {
                    case 2:
                      return Text('sep');
                    case 3:
                      return Text('tem');
                    case 8:
                      return Text('ss');
                  }

                  return Text('');
                },
              ),
            ),
          ),
          maxX: 10,
          maxY: 6,
          minX: 0,
          minY: 0,
          lineBarsData: [
            LineChartBarData(
              color: Colors.blueGrey,
              spots: [
                FlSpot(0, 5),
                FlSpot(3, 2),
                FlSpot(5, 4),
                FlSpot(7, 3),
                FlSpot(8, 4),
                FlSpot(10, 3),
              ],
              isCurved: true,
              barWidth: 5,
              dotData: FlDotData(
                show: true,
                // checkToShowDot: (spot, barData) {
                //   return spot.x.isNegative;
                // },
                getDotPainter: (FlSpot spot, double xPercentage,
                    LineChartBarData bar, int index) {
                  return FlDotCirclePainter(
                    radius: 6,
                    color: _getDotColor(index),
                  );
                },
              ),
              belowBarData: BarAreaData(
                show: true,
                gradient: const LinearGradient(
                  colors: [
                    const Color(0x5523b6e6),
                    const Color(0x5502d39a),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Color _getDotColor(int index) {
    switch (index) {
      case 0:
        return Colors.red; // Color for the first dot
      case 1:
        return Colors.green; // Color for the second dot
      case 2:
        return Colors.blue; // Color for the third dot
      case 3:
        return Colors.yellow; // Color for the fourth dot
      case 4:
        return Colors.orange; // Color for the fifth dot
      case 5:
        return Colors.purple; // Color for the sixth dot
      default:
        return Colors.black; // Default color if index is out of range
    }
  }
}
