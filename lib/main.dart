import 'package:charts/barChartSample.dart';
import 'package:charts/lineChartSample.dart';
import 'package:charts/pieChartSample.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xffe00d82),
        centerTitle: true,
        title: const Text(
          'Flutter Charts',
          style: TextStyle(
              fontSize: 20, fontStyle: FontStyle.italic, color: Colors.white),
        ),
      ),
      body: ListView(
        children: const [
          Padding(
            padding: EdgeInsets.all(20.0),
            child: Text(
              'Pie Chart',
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          PieChartSample(),
          SizedBox(
            height: 10,
          ),
          Divider(
            thickness: 2,
          ),
          Padding(
            padding: EdgeInsets.all(20.0),
            child: Text(
              'Bar Chart',
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          BarChartSample(),
          Divider(
            thickness: 2,
          ),
          Padding(
            padding: EdgeInsets.all(20.0),
            child: Text(
              'Line Chart',
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          LineChartSample(),
          SizedBox(height: 50),
        ],
      ),
    );
  }
}
