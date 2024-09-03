import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class BarChartSample extends StatefulWidget {
  const BarChartSample({super.key});

  @override
  State<BarChartSample> createState() => _BarChartSampleState();
}

class _BarChartSampleState extends State<BarChartSample> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 20),
      child: SizedBox(
        width: 200,
        height: 300,
        child: BarChart(
          BarChartData(
            barGroups: [
              BarChartGroupData(
                x: 0,
                barRods: [
                  BarChartRodData(
                    borderRadius: BorderRadius.circular(0),
                    toY: 20,
                    color: const Color(0xff0293ee),
                  ),
                ],
                showingTooltipIndicators: [0],
              ),
              BarChartGroupData(
                x: 1,
                barRods: [
                  BarChartRodData(
                    toY: 15,
                    borderRadius: BorderRadius.circular(0),
                    color: const Color(0xfff8b250),
                  ),
                ],
                showingTooltipIndicators: [0],
              ),
              BarChartGroupData(
                x: 2,
                barRods: [
                  BarChartRodData(
                    borderRadius: BorderRadius.circular(0),
                    toY: 7,
                    color: const Color(0xff845bef),
                  ),
                ],
                showingTooltipIndicators: [0],
              ),
              BarChartGroupData(
                x: 3,
                barRods: [
                  BarChartRodData(
                    toY: 19,
                    color: const Color(0xff13d38e),
                    borderRadius: BorderRadius.circular(0),
                  ),
                ],
                showingTooltipIndicators: [0],
              ),
            ],
            alignment: BarChartAlignment.spaceAround,
            titlesData: FlTitlesData(
              topTitles: const AxisTitles(drawBelowEverything: false),
              bottomTitles: AxisTitles(
                sideTitles: SideTitles(
                  showTitles: true,
                  getTitlesWidget: (value, meta) {
                    switch (value.toInt()) {
                      case 0:
                        return Text('first');
                      case 1:
                        return Text('second');
                      case 2:
                        return Text('third');
                      case 3:
                        return Text('fourth');
                      default:
                        return Text('');
                    }
                  },
                ),
              ),
            ),
            maxY: 25,
            minY: 5,
          ),
        ),
      ),
    );
  }
}
