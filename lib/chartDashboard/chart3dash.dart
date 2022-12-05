// ignore_for_file: camel_case_types

import 'dart:async';

import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart' as chart;
import 'dart:math' as math;
import 'package:mop_green/shared/shared.dart';

class room3 extends StatefulWidget {
  const room3({Key? key}) : super(key: key);

  @override
  State<room3> createState() => _room3State();
}

class _room3State extends State<room3> {
  late List<LiveData> chartData;
  late List<LiveData> chartData1;
  late chart.ChartSeriesController _chartSeriesController;
  late chart.ChartSeriesController _chartSeriesController1;

  @override
  void initState() {
    chartData = getChartData();
    chartData1 = getChartData2();
    Timer.periodic(const Duration(minutes: 3), updateDataSource);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Container(
        width: double.infinity,
        height: 327,
        color: Colors.white,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(5),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    'Room 3',
                    style: meTextStyle.copyWith(
                      color: Colors.black,
                    ),
                  ),
                  const Spacer(),
                  Image.asset('assets/images/divider.png'),
                  const SizedBox(
                    width: 10,
                  ),
                  Text(
                    'Suhu',
                    style: meTextStyle.copyWith(
                      color: Colors.black,
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Image.asset('assets/images/divider1.png'),
                  const SizedBox(
                    width: 10,
                  ),
                  Text(
                    'Kelembapan',
                    style: meTextStyle.copyWith(
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
            ),
            //*Ini Kodingan Chartnya
            chart.SfCartesianChart(
              series: <chart.LineSeries<LiveData, int>>[
                chart.LineSeries<LiveData, int>(
                    onRendererCreated:
                        (chart.ChartSeriesController controller) {
                      _chartSeriesController = controller;
                    },
                    dataSource: chartData,
                    color: Colors.blue,
                    xValueMapper: (LiveData sales, _) => sales.time,
                    yValueMapper: (LiveData sales, _) => sales.speed),
                chart.LineSeries<LiveData, int>(
                    onRendererCreated:
                        (chart.ChartSeriesController controller) {
                      _chartSeriesController1 = controller;
                    },
                    dataSource: chartData1,
                    color: Colors.red,
                    xValueMapper: (LiveData sales, _) => sales.time,
                    yValueMapper: (LiveData sales, _) => sales.speed),
              ],
              primaryXAxis: chart.NumericAxis(
                  majorGridLines: const chart.MajorGridLines(width: 0),
                  edgeLabelPlacement: chart.EdgeLabelPlacement.shift,
                  interval: 1,
                  title: chart.AxisTitle(text: 'time(seconds)')),
              primaryYAxis: chart.NumericAxis(
                axisLine: const chart.AxisLine(width: 0),
                majorTickLines: const chart.MajorTickLines(size: 0),
              ),
            ),
          ],
        ),
      ),
    );
  }

  int time = 19;
  void updateDataSource(Timer timer) {
    chartData.add(LiveData(time++, (math.Random().nextInt(60) + 30)));
    chartData.removeAt(0);
    _chartSeriesController.updateDataSource(
        addedDataIndex: chartData.length - 1, removedDataIndex: 0);
    chartData1.add(LiveData(time++, (math.Random().nextInt(60) + 30)));
    chartData1.removeAt(0);
    _chartSeriesController1.updateDataSource(
        addedDataIndex: chartData1.length - 1, removedDataIndex: 0);
  }
}

List<LiveData> getChartData() {
  return <LiveData>[
    LiveData(0, 42),
    LiveData(1, 47),
    LiveData(2, 43),
    LiveData(3, 49),
    LiveData(4, 54),
    LiveData(5, 41),
    LiveData(6, 58),
    LiveData(7, 51),
    LiveData(8, 98),
    LiveData(9, 41),
    LiveData(10, 53),
    LiveData(11, 72),
    LiveData(12, 86),
    LiveData(13, 52),
    LiveData(14, 94),
    LiveData(15, 92),
    LiveData(16, 86),
    LiveData(17, 72),
    LiveData(18, 94),
  ];
}

List<LiveData> getChartData2() {
  return <LiveData>[
    LiveData(0, 41),
    LiveData(1, 45),
    LiveData(2, 46),
    LiveData(3, 47),
    LiveData(4, 31),
    LiveData(5, 32),
    LiveData(6, 34),
    LiveData(7, 30),
    LiveData(8, 30),
    LiveData(9, 50),
    LiveData(10, 51),
    LiveData(11, 53),
    LiveData(12, 56),
    LiveData(13, 44),
    LiveData(14, 46),
    LiveData(15, 92),
    LiveData(16, 95),
    LiveData(17, 78),
    LiveData(18, 60),
  ];
}

class LiveData {
  LiveData(this.time, this.speed);
  final int time;
  final num speed;
}

class LiveData1 {
  LiveData1(this.time, this.speed);
  final int time;
  final num speed;
}
