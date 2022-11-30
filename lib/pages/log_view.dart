// ignore_for_file: camel_case_types

part of 'pages.dart';

class logView extends StatefulWidget {
  const logView({Key? key}) : super(key: key);

  @override
  State<logView> createState() => _logViewState();
}

class _logViewState extends State<logView> {
  // final TextEditingController _date = TextEditingController();
  // final DateRangePickerController _dateRangePickerController =
  // DateRangePickerController();

  List<String> data = [
    "Yesterday",
    "Italia (Disabled)",
    "Tunisia",
    'Canada',
  ];

  late List<LiveData> chartData9;
  late List<LiveData> chartData10;
  late List<LiveData> chartData11;
  late List<LiveData> chartData12;
  late List<LiveData> chartData13;
  late List<LiveData> chartData14;
  late List<LiveData> chartData15;
  late List<LiveData> chartData16;
  late chart.ChartSeriesController _chartSeriesController9;
  late chart.ChartSeriesController _chartSeriesController10;
  late chart.ChartSeriesController _chartSeriesController11;
  late chart.ChartSeriesController _chartSeriesController12;
  late chart.ChartSeriesController _chartSeriesController13;
  late chart.ChartSeriesController _chartSeriesController14;
  late chart.ChartSeriesController _chartSeriesController15;
  late chart.ChartSeriesController _chartSeriesController16;

  @override
  void initState() {
    chartData9 = getChartData();
    chartData10 = getChartData2();
    chartData11 = getChartData3();
    chartData12 = getChartData4();
    chartData13 = getChartData5();
    chartData14 = getChartData6();
    chartData15 = getChartData7();
    chartData16 = getChartData8();
    Timer.periodic(const Duration(minutes: 3), updateDataSource);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF1F2F4),
      body: Column(
        children: [
          Container(
            width: 414,
            height: 224,
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(20),
                  bottomLeft: Radius.circular(20)),
              gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: [Color(0xFF16D682), Color(0xFF05BE5E)]),
            ),
            child: Container(
              margin: const EdgeInsets.all(10),
              child: Column(
                // crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(
                    height: 30,
                  ),
                  Text(
                    'Date Picker',
                    style: selamatdatangTextStyle.copyWith(
                        fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 70),
                    child: DropdownSearch<String>(
                      popupProps: const PopupProps.menu(
                        showSelectedItems: true,
                      ),
                      items: data,
                      dropdownDecoratorProps: const DropDownDecoratorProps(
                        dropdownSearchDecoration: InputDecoration(
                          contentPadding: EdgeInsets.symmetric(horizontal: 20),
                          labelText: "Pilih Data",
                        ),
                      ),
                      onChanged: print,
                      clearButtonProps: const ClearButtonProps(isVisible: true),
                    ),
                  ),
                  const SizedBox(height: 10),
                ],
              ),
            ),
          ),

          //!Scrollview
          Expanded(
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 3),
                child: Column(
                  children: [
                    //!Chart Room 1
                    Card(
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
                                    'Room 1',
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
                                        (chart.ChartSeriesController
                                            controller) {
                                      _chartSeriesController9 = controller;
                                    },
                                    dataSource: chartData9,
                                    color: Colors.blue,
                                    xValueMapper: (LiveData sales, _) =>
                                        sales.time,
                                    yValueMapper: (LiveData sales, _) =>
                                        sales.speed),
                                chart.LineSeries<LiveData, int>(
                                    onRendererCreated:
                                        (chart.ChartSeriesController
                                            controller) {
                                      _chartSeriesController10 = controller;
                                    },
                                    dataSource: chartData10,
                                    color: Colors.red,
                                    xValueMapper: (LiveData sales, _) =>
                                        sales.time,
                                    yValueMapper: (LiveData sales, _) =>
                                        sales.speed),
                              ],
                              primaryXAxis: chart.NumericAxis(
                                  majorGridLines:
                                      const chart.MajorGridLines(width: 0),
                                  edgeLabelPlacement:
                                      chart.EdgeLabelPlacement.shift,
                                  interval: 1,
                                  title:
                                      chart.AxisTitle(text: 'time(seconds)')),
                              primaryYAxis: chart.NumericAxis(
                                axisLine: const chart.AxisLine(width: 0),
                                majorTickLines:
                                    const chart.MajorTickLines(size: 0),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    //*Chart Room 2
                    Card(
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
                                    'Room 2',
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
                            //!Ini Kodingan Chartnya
                            chart.SfCartesianChart(
                              series: <chart.LineSeries<LiveData, int>>[
                                chart.LineSeries<LiveData, int>(
                                    onRendererCreated:
                                        (chart.ChartSeriesController
                                            controller) {
                                      _chartSeriesController11 = controller;
                                    },
                                    dataSource: chartData11,
                                    color: Colors.blue,
                                    xValueMapper: (LiveData sales, _) =>
                                        sales.time,
                                    yValueMapper: (LiveData sales, _) =>
                                        sales.speed),
                                chart.LineSeries<LiveData, int>(
                                    onRendererCreated:
                                        (chart.ChartSeriesController
                                            controller) {
                                      _chartSeriesController12 = controller;
                                    },
                                    dataSource: chartData12,
                                    color: Colors.red,
                                    xValueMapper: (LiveData sales, _) =>
                                        sales.time,
                                    yValueMapper: (LiveData sales, _) =>
                                        sales.speed),
                              ],
                              primaryXAxis: chart.NumericAxis(
                                  majorGridLines:
                                      const chart.MajorGridLines(width: 0),
                                  edgeLabelPlacement:
                                      chart.EdgeLabelPlacement.shift,
                                  interval: 1,
                                  title:
                                      chart.AxisTitle(text: 'time(seconds)')),
                              primaryYAxis: chart.NumericAxis(
                                axisLine: const chart.AxisLine(width: 0),
                                majorTickLines:
                                    const chart.MajorTickLines(size: 0),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    //*Chart Room 3
                    Card(
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
                            //!Ini kodingan chartnya
                            chart.SfCartesianChart(
                              series: <chart.LineSeries<LiveData, int>>[
                                chart.LineSeries<LiveData, int>(
                                    onRendererCreated:
                                        (chart.ChartSeriesController
                                            controller) {
                                      _chartSeriesController13 = controller;
                                    },
                                    dataSource: chartData13,
                                    color: Colors.blue,
                                    xValueMapper: (LiveData sales, _) =>
                                        sales.time,
                                    yValueMapper: (LiveData sales, _) =>
                                        sales.speed),
                                chart.LineSeries<LiveData, int>(
                                    onRendererCreated:
                                        (chart.ChartSeriesController
                                            controller) {
                                      _chartSeriesController14 = controller;
                                    },
                                    dataSource: chartData14,
                                    color: Colors.red,
                                    xValueMapper: (LiveData sales, _) =>
                                        sales.time,
                                    yValueMapper: (LiveData sales, _) =>
                                        sales.speed),
                              ],
                              primaryXAxis: chart.NumericAxis(
                                  majorGridLines:
                                      const chart.MajorGridLines(width: 0),
                                  edgeLabelPlacement:
                                      chart.EdgeLabelPlacement.shift,
                                  interval: 1,
                                  title:
                                      chart.AxisTitle(text: 'time(seconds)')),
                              primaryYAxis: chart.NumericAxis(
                                axisLine: const chart.AxisLine(width: 0),
                                majorTickLines:
                                    const chart.MajorTickLines(size: 0),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    //*chart room 4
                    Card(
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
                                    'Room 4',
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
                            //!Ini kodingan chartnya
                            chart.SfCartesianChart(
                              series: <chart.LineSeries<LiveData, int>>[
                                chart.LineSeries<LiveData, int>(
                                    onRendererCreated:
                                        (chart.ChartSeriesController
                                            controller) {
                                      _chartSeriesController15 = controller;
                                    },
                                    dataSource: chartData15,
                                    color: Colors.blue,
                                    xValueMapper: (LiveData sales, _) =>
                                        sales.time,
                                    yValueMapper: (LiveData sales, _) =>
                                        sales.speed),
                                chart.LineSeries<LiveData, int>(
                                    onRendererCreated:
                                        (chart.ChartSeriesController
                                            controller) {
                                      _chartSeriesController16 = controller;
                                    },
                                    dataSource: chartData16,
                                    color: Colors.red,
                                    xValueMapper: (LiveData sales, _) =>
                                        sales.time,
                                    yValueMapper: (LiveData sales, _) =>
                                        sales.speed),
                              ],
                              primaryXAxis: chart.NumericAxis(
                                  majorGridLines:
                                      const chart.MajorGridLines(width: 0),
                                  edgeLabelPlacement:
                                      chart.EdgeLabelPlacement.shift,
                                  interval: 1,
                                  title:
                                      chart.AxisTitle(text: 'time(seconds)')),
                              primaryYAxis: chart.NumericAxis(
                                axisLine: const chart.AxisLine(width: 0),
                                majorTickLines:
                                    const chart.MajorTickLines(size: 0),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    )
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  //!Ini buat timer line grafik chartnya
  int time = 19;
  void updateDataSource(Timer timer) {
    chartData9.add(LiveData(time++, (math.Random().nextInt(60) + 30)));
    chartData9.removeAt(0);
    _chartSeriesController9.updateDataSource(
        addedDataIndex: chartData9.length - 1, removedDataIndex: 0);
    chartData10.add(LiveData(time++, (math.Random().nextInt(60) + 30)));
    chartData10.removeAt(0);
    _chartSeriesController10.updateDataSource(
        addedDataIndex: chartData10.length - 1, removedDataIndex: 0);
    chartData11.add(LiveData(time++, (math.Random().nextInt(60) + 30)));
    chartData11.removeAt(0);
    _chartSeriesController11.updateDataSource(
        addedDataIndex: chartData11.length - 1, removedDataIndex: 0);
    chartData12.add(LiveData(time++, (math.Random().nextInt(60) + 30)));
    chartData12.removeAt(0);
    _chartSeriesController12.updateDataSource(
        addedDataIndex: chartData12.length - 1, removedDataIndex: 0);
    chartData13.add(LiveData(time++, (math.Random().nextInt(60) + 30)));
    chartData13.removeAt(0);
    _chartSeriesController13.updateDataSource(
        addedDataIndex: chartData13.length - 1, removedDataIndex: 0);
    chartData14.add(LiveData(time++, (math.Random().nextInt(60) + 30)));
    chartData14.removeAt(0);
    _chartSeriesController14.updateDataSource(
        addedDataIndex: chartData14.length - 1, removedDataIndex: 0);
    chartData15.add(LiveData(time++, (math.Random().nextInt(60) + 30)));
    chartData15.removeAt(0);
    _chartSeriesController15.updateDataSource(
        addedDataIndex: chartData15.length - 1, removedDataIndex: 0);
    chartData16.add(LiveData(time++, (math.Random().nextInt(60) + 30)));
    chartData16.removeAt(0);
    _chartSeriesController16.updateDataSource(
        addedDataIndex: chartData16.length - 1, removedDataIndex: 0);
  }

  //!Ini buat data yang diambil chartnya
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

  //!Ini buat data yang diambil chartnya
  List<LiveData> getChartData3() {
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

  List<LiveData> getChartData4() {
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

  //!Ini buat data yang diambil chartnya
  List<LiveData> getChartData5() {
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

  List<LiveData> getChartData6() {
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

  //!Ini buat data yang diambil chartnya
  List<LiveData> getChartData7() {
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

  List<LiveData> getChartData8() {
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
}

//!Ini buat pemanggilan class Livedatanya
class LiveData9 {
  LiveData9(this.time, this.speed);
  final int time;
  final num speed;
}

class LiveData10 {
  LiveData10(this.time, this.speed);
  final int time;
  final num speed;
}

//!Ini buat pemanggilan class Livedatanya
class LiveData11 {
  LiveData11(this.time, this.speed);
  final int time;
  final num speed;
}

class LiveData12 {
  LiveData12(this.time, this.speed);
  final int time;
  final num speed;
}

//!Ini buat pemanggilan class Livedatanya
class LiveData13 {
  LiveData13(this.time, this.speed);
  final int time;
  final num speed;
}

class LiveData14 {
  LiveData14(this.time, this.speed);
  final int time;
  final num speed;
}

//!Ini buat pemanggilan class Livedatanya
class LiveData15 {
  LiveData15(this.time, this.speed);
  final int time;
  final num speed;
}

class LiveData16 {
  LiveData16(this.time, this.speed);
  final int time;
  final num speed;
}
