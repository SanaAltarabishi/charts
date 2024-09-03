import 'package:charts/pieIndicator.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class PieChartSample extends StatefulWidget {
  const PieChartSample({super.key});

  @override
  State<PieChartSample> createState() => _PieChartSampleState();
}

class _PieChartSampleState extends State<PieChartSample> {
  int _clickedIndex = 0;

  List<PieChartSectionData> buildPiChartSections() {
    return List.generate(4, (index) {
      final bool isClicked = index == _clickedIndex;
      final double fontSize = isClicked ? 35 : 20;
      final double raduis = isClicked ? 110 : 100;
      switch (index) {
        case 0:
          return PieChartSectionData(
            color: const Color(0xff0293ee),
            value: 40,
            title: ' 40%',
            radius: raduis,
            titleStyle: TextStyle(
              fontSize: fontSize,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          );
        case 1:
          return PieChartSectionData(
            color: const Color(0xfff8b250),
            value: 30,
            title: ' 30%',
            radius: raduis,
            titleStyle: TextStyle(
              fontSize: fontSize,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          );
        case 2:
          return PieChartSectionData(
            color: const Color(0xff845bef),
            value: 15,
            title: ' 15%',
            radius: raduis,
            titleStyle: TextStyle(
              fontSize: fontSize,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          );
        case 3:
          return PieChartSectionData(
            color: const Color(0xff13d38e),
            value: 15,
            title: ' 15%',
            radius: raduis,
            titleStyle: TextStyle(
              fontSize: fontSize,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          );
      }
      return PieChartSectionData(
        color: Colors.transparent,
        value: 0,
        title: '',
        radius: 0,
        titleStyle: TextStyle(),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Row(
        children: [
          SizedBox(
            width: 200,
            height: 200,
            child: PieChart(
              PieChartData(
                borderData: FlBorderData(show: true),
                // sectionsSpace: 0,
                centerSpaceRadius: 0,
                sections: buildPiChartSections(),
                pieTouchData: PieTouchData(
                  touchCallback:
                      (FlTouchEvent event, PieTouchResponse? touchResponse) {
                    setState(
                      () {
                        if (event is FlLongPressEnd || event is FlPanEndEvent) {
                          _clickedIndex = -1;
                        } else {
                          if (touchResponse != null &&
                              touchResponse.touchedSection != null) {
                            _clickedIndex = touchResponse
                                .touchedSection!.touchedSectionIndex;
                          }
                        }
                      },
                    );
                  },
                ),
              ),
            ),
          ),
          const SizedBox(
            width: 50,
          ),
          const Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              PieIndicator(color: Color(0xff0293ee), text: 'Fist'),
              SizedBox(
                height: 5,
              ),
              PieIndicator(color: Color(0xfff8b250), text: 'second'),
              SizedBox(
                height: 5,
              ),
              PieIndicator(color: Color(0xff845bef), text: 'third'),
              SizedBox(
                height: 5,
              ),
              PieIndicator(color: Color(0xff13d38e), text: 'fourth'),
              SizedBox(
                height: 5,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
