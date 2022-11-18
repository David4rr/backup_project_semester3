part of 'pages.dart';

class dashboard extends StatefulWidget {
  const dashboard({Key? key}) : super(key: key);

  @override
  State<dashboard> createState() => _dashboardState();
}

class _dashboardState extends State<dashboard> {
  late List<LiveData> chartData;
  late List<LiveData> chartData2;
  late List<LiveData> chartData3;
  late List<LiveData> chartData4;
  late List<LiveData> chartData5;
  late List<LiveData> chartData6;
  late List<LiveData> chartData7;
  late List<LiveData> chartData8;
  late chart.ChartSeriesController _chartSeriesController;
  late chart.ChartSeriesController _chartSeriesController2;
  late chart.ChartSeriesController _chartSeriesController3;
  late chart.ChartSeriesController _chartSeriesController4;
  late chart.ChartSeriesController _chartSeriesController5;
  late chart.ChartSeriesController _chartSeriesController6;
  late chart.ChartSeriesController _chartSeriesController7;
  late chart.ChartSeriesController _chartSeriesController8;

  void initState() {
    chartData = getChartData();
    chartData2 = getChartData2();
    chartData3 = getChartData3();
    chartData4 = getChartData4();
    chartData5 = getChartData5();
    chartData6 = getChartData6();
    chartData7 = getChartData7();
    chartData8 = getChartData8();
    Timer.periodic(const Duration(seconds: 1), updateDataSource);
    super.initState();
  }

  //!Tampilan Bottom Navigasi
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  int _selectedIndex = 0;
  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static const List<Widget> _widgetOptions = <Widget>[
    Text(
      'Index 0: Home',
      style: optionStyle,
    ),
    Text(
      'Index 1: Business',
      style: optionStyle,
    ),
    Text(
      'Index 2: School',
      style: optionStyle,
    ),
  ];

  //!Body
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF1F2F4),
      body: Column(
        children: [
          Container(
            width: 414,
            height: 363,
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
              margin: EdgeInsets.all(10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    'Today',
                    style: selamatdatangTextStyle.copyWith(
                        fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  //!Grafik Suhu
                  Row(
                    children: [
                      Expanded(
                        child: Column(
                          children: [
                            Container(
                              child: Column(
                                children: [
                                  Container(
                                    width: 121,
                                    height: 121,
                                    child: SfRadialGauge(
                                      axes: <RadialAxis>[
                                        RadialAxis(
                                          axisLineStyle: AxisLineStyle(
                                            thickness: 0.2,
                                            thicknessUnit: GaugeSizeUnit.factor,
                                            cornerStyle: CornerStyle.bothCurve,
                                          ),
                                          showTicks: false,
                                          showLabels: false,
                                          onAxisTapped: (value) {},
                                          pointers: <GaugePointer>[
                                            RangePointer(
                                              color: Colors.white,
                                              value: 60,
                                              onValueChanged: (value) {},
                                              cornerStyle:
                                                  CornerStyle.bothCurve,
                                              onValueChangeEnd: (value) {},
                                              onValueChangeStart: (value) {},
                                              enableDragging: true,
                                              width: 0.2,
                                              sizeUnit: GaugeSizeUnit.factor,
                                            ),
                                          ],
                                          annotations: <GaugeAnnotation>[
                                            GaugeAnnotation(
                                              widget: Column(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: [
                                                  Text(
                                                    "65.0",
                                                    style: wikwokTextStyle,
                                                  ),
                                                  Text(
                                                    "suhu",
                                                    style: meTextStyle,
                                                  )
                                                ],
                                              ),
                                              positionFactor: 0.13,
                                              angle: 0.5,
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Text(
                                    "Rata-rata Suhu",
                                    style: meTextStyle,
                                  ),
                                  Text(
                                    "25",
                                    style: wikwokTextStyle,
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Text(
                                    "Suhu Tertinggi",
                                    style: meTextStyle,
                                  ),
                                  Text(
                                    "25",
                                    style: wikwokTextStyle,
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Text(
                                    "Suhu Terendah",
                                    style: meTextStyle,
                                  ),
                                  Text(
                                    "25",
                                    style: wikwokTextStyle,
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      //! Grafik Kelembapan
                      Expanded(
                        child: Column(
                          children: [
                            Container(
                              child: Column(
                                children: [
                                  Container(
                                    width: 121,
                                    height: 121,
                                    child: SfRadialGauge(
                                      axes: <RadialAxis>[
                                        RadialAxis(
                                          axisLineStyle: AxisLineStyle(
                                            thickness: 0.2,
                                            thicknessUnit: GaugeSizeUnit.factor,
                                            cornerStyle: CornerStyle.bothCurve,
                                          ),
                                          showTicks: false,
                                          showLabels: false,
                                          onAxisTapped: (value) {},
                                          pointers: <GaugePointer>[
                                            RangePointer(
                                              color: Colors.white,
                                              value: 60,
                                              onValueChanged: (value) {},
                                              cornerStyle:
                                                  CornerStyle.bothCurve,
                                              onValueChangeEnd: (value) {},
                                              onValueChangeStart: (value) {},
                                              enableDragging: true,
                                              width: 0.2,
                                              sizeUnit: GaugeSizeUnit.factor,
                                            ),
                                          ],
                                          annotations: <GaugeAnnotation>[
                                            GaugeAnnotation(
                                              widget: Column(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: [
                                                  Text(
                                                    "65.0",
                                                    style: wikwokTextStyle,
                                                  ),
                                                  Text(
                                                    "Kelembapan",
                                                    style: meTextStyle.copyWith(
                                                        fontSize: 12),
                                                  ),
                                                ],
                                              ),
                                              positionFactor: 0.13,
                                              angle: 0.5,
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Text(
                                    "Rata-rata Kelembapan",
                                    style: meTextStyle,
                                  ),
                                  Text(
                                    "25",
                                    style: wikwokTextStyle,
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Text(
                                    "Kelembapan Tertinggi",
                                    style: meTextStyle,
                                  ),
                                  Text(
                                    "25",
                                    style: wikwokTextStyle,
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Text(
                                    "Kelembapan Terendah",
                                    style: meTextStyle,
                                  ),
                                  Text(
                                    "25",
                                    style: wikwokTextStyle,
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          // SizedBox(
          //   height: 19,
          // ),
          //!Scrollview
          Expanded(
            child: SingleChildScrollView(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 3),
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
                                  const SizedBox(
                                    width: 150,
                                  ),
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
                                      _chartSeriesController = controller;
                                    },
                                    dataSource: chartData,
                                    color: Colors.blue,
                                    xValueMapper: (LiveData sales, _) =>
                                        sales.time,
                                    yValueMapper: (LiveData sales, _) =>
                                        sales.speed),
                                chart.LineSeries<LiveData, int>(
                                    onRendererCreated:
                                        (chart.ChartSeriesController
                                            controller) {
                                      _chartSeriesController2 = controller;
                                    },
                                    dataSource: chartData2,
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
                    SizedBox(
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
                                  const SizedBox(
                                    width: 150,
                                  ),
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
                                      _chartSeriesController3 = controller;
                                    },
                                    dataSource: chartData3,
                                    color: Colors.blue,
                                    xValueMapper: (LiveData sales, _) =>
                                        sales.time,
                                    yValueMapper: (LiveData sales, _) =>
                                        sales.speed),
                                chart.LineSeries<LiveData, int>(
                                    onRendererCreated:
                                        (chart.ChartSeriesController
                                            controller) {
                                      _chartSeriesController4 = controller;
                                    },
                                    dataSource: chartData4,
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
                    SizedBox(
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
                                  const SizedBox(
                                    width: 150,
                                  ),
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
                                      _chartSeriesController5 = controller;
                                    },
                                    dataSource: chartData5,
                                    color: Colors.blue,
                                    xValueMapper: (LiveData sales, _) =>
                                        sales.time,
                                    yValueMapper: (LiveData sales, _) =>
                                        sales.speed),
                                chart.LineSeries<LiveData, int>(
                                    onRendererCreated:
                                        (chart.ChartSeriesController
                                            controller) {
                                      _chartSeriesController6 = controller;
                                    },
                                    dataSource: chartData6,
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
                    SizedBox(
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
                                  const SizedBox(
                                    width: 150,
                                  ),
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
                                      _chartSeriesController7 = controller;
                                    },
                                    dataSource: chartData7,
                                    color: Colors.blue,
                                    xValueMapper: (LiveData sales, _) =>
                                        sales.time,
                                    yValueMapper: (LiveData sales, _) =>
                                        sales.speed),
                                chart.LineSeries<LiveData, int>(
                                    onRendererCreated:
                                        (chart.ChartSeriesController
                                            controller) {
                                      _chartSeriesController8 = controller;
                                    },
                                    dataSource: chartData8,
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
                    SizedBox(
                      height: 30,
                    )
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
      //!Tampilan Bottom Navigasi
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: backgroundColor,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.business),
            label: 'Business',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.school),
            label: 'School',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Color(0xFF10CF6F),
        onTap: _onItemTapped,
      ),
    );
  }

  //!Ini buat timer line grafik chartnya
  int time = 19;
  void updateDataSource(Timer timer) {
    chartData.add(LiveData(time++, (math.Random().nextInt(60) + 30)));
    chartData.removeAt(0);
    _chartSeriesController.updateDataSource(
        addedDataIndex: chartData.length - 1, removedDataIndex: 0);
    chartData2.add(LiveData(time++, (math.Random().nextInt(60) + 30)));
    chartData2.removeAt(0);
    _chartSeriesController2.updateDataSource(
        addedDataIndex: chartData.length - 1, removedDataIndex: 0);
    chartData3.add(LiveData(time++, (math.Random().nextInt(60) + 30)));
    chartData3.removeAt(0);
    _chartSeriesController3.updateDataSource(
        addedDataIndex: chartData.length - 1, removedDataIndex: 0);
    chartData4.add(LiveData(time++, (math.Random().nextInt(60) + 30)));
    chartData4.removeAt(0);
    _chartSeriesController4.updateDataSource(
        addedDataIndex: chartData.length - 1, removedDataIndex: 0);
    chartData5.add(LiveData(time++, (math.Random().nextInt(60) + 30)));
    chartData5.removeAt(0);
    _chartSeriesController5.updateDataSource(
        addedDataIndex: chartData.length - 1, removedDataIndex: 0);
    chartData6.add(LiveData(time++, (math.Random().nextInt(60) + 30)));
    chartData6.removeAt(0);
    _chartSeriesController6.updateDataSource(
        addedDataIndex: chartData.length - 1, removedDataIndex: 0);
    chartData7.add(LiveData(time++, (math.Random().nextInt(60) + 30)));
    chartData7.removeAt(0);
    _chartSeriesController7.updateDataSource(
        addedDataIndex: chartData.length - 1, removedDataIndex: 0);
    chartData8.add(LiveData(time++, (math.Random().nextInt(60) + 30)));
    chartData8.removeAt(0);
    _chartSeriesController8.updateDataSource(
        addedDataIndex: chartData.length - 1, removedDataIndex: 0);
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
class LiveData {
  LiveData(this.time, this.speed);
  final int time;
  final num speed;
}

class LiveData2 {
  LiveData2(this.time, this.speed);
  final int time;
  final num speed;
}

//!Ini buat pemanggilan class Livedatanya
class LiveData3 {
  LiveData3(this.time, this.speed);
  final int time;
  final num speed;
}

class LiveData4 {
  LiveData4(this.time, this.speed);
  final int time;
  final num speed;
}

//!Ini buat pemanggilan class Livedatanya
class LiveData5 {
  LiveData5(this.time, this.speed);
  final int time;
  final num speed;
}

class LiveData6 {
  LiveData6(this.time, this.speed);
  final int time;
  final num speed;
}

//!Ini buat pemanggilan class Livedatanya
class LiveData7 {
  LiveData7(this.time, this.speed);
  final int time;
  final num speed;
}

class LiveData8 {
  LiveData8(this.time, this.speed);
  final int time;
  final num speed;
}
