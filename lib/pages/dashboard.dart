// ignore_for_file: camel_case_types

part of 'pages.dart';

class dashboard extends StatefulWidget {
  const dashboard({Key? key}) : super(key: key);

  @override
  State<dashboard> createState() => _dashboardState();
}

class _dashboardState extends State<dashboard> {
  // int dropdownIndex = 0;
  // List data = [
  //   const room1(),
  // const room2(),
  // const room3(),
  // const room4(),
  // ];

  //!Body
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: showExitPopup,
      child: Scaffold(
        backgroundColor: const Color(0xFFF1F2F4),
        body: Column(
          children: [
            Container(
              width: double.infinity,
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
                margin: const EdgeInsets.all(10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const SizedBox(
                      height: 30,
                    ),
                    Text(
                      'Room 1',
                      style: selamatdatangTextStyle.copyWith(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    //!Grafik Suhu
                    Row(
                      children: [
                        Expanded(
                          child: Column(
                            children: [
                              Column(
                                children: [
                                  SizedBox(
                                    width: 121,
                                    height: 121,
                                    child: SfRadialGauge(
                                      axes: <RadialAxis>[
                                        RadialAxis(
                                          axisLineStyle: const AxisLineStyle(
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
                                  const SizedBox(
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
                                  const SizedBox(
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
                                  const SizedBox(
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
                            ],
                          ),
                        ),
                        //! Grafik Kelembapan
                        Expanded(
                          child: Column(
                            children: [
                              Column(
                                children: [
                                  SizedBox(
                                    width: 121,
                                    height: 121,
                                    child: SfRadialGauge(
                                      axes: <RadialAxis>[
                                        RadialAxis(
                                          axisLineStyle: const AxisLineStyle(
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
                                  const SizedBox(
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
                                  const SizedBox(
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
                                  const SizedBox(
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
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            //!Scrollview
            Expanded(
              child: SingleChildScrollView(
                // scrollDirection: Axis.vertical,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 3),
                  child: Column(
                    children: const [
                      SizedBox(
                        height: 5,
                      ),
                      room1()
                      // const SizedBox(
                      //   height: 10,
                      // ),
                      // Padding(
                      //   padding: const EdgeInsets.symmetric(horizontal: 90),
                      //   child: Card(
                      //     child: DropdownSearch<dynamic>(
                      //       popupProps: const PopupProps.menu(
                      //         fit: FlexFit.loose,
                      //       ),
                      //       items: const [
                      //         "room1",
                      //         // "room2", "room3", "room4"
                      //       ],
                      //       dropdownDecoratorProps: const DropDownDecoratorProps(
                      //         dropdownSearchDecoration: InputDecoration(
                      //           contentPadding: EdgeInsets.all(10),
                      //           labelText: "Pilih Room",
                      //         ),
                      //       ),
                      //       onChanged: (o) {
                      //         setState(() {
                      //           switch (o) {
                      //             case "room1":
                      //               dropdownIndex = 0;
                      //               break;
                      //             case "room2":
                      //               dropdownIndex = 1;
                      //               break;
                      //             case "room3":
                      //               dropdownIndex = 2;
                      //               break;
                      //             case "room4":
                      //               dropdownIndex = 3;
                      //               break;
                      //             default:
                      //               dropdownIndex = 0;
                      //               break;
                      //           }
                      //         });
                      //       },
                      //       selectedItem: data[dropdownIndex],
                      //     ),
                      //   ),
                      // ),
                      // const SizedBox(
                      //   height: 10,
                      // ),
                      // data[dropdownIndex],
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Future<bool> showExitPopup() async {
    return await showDialog(
          context: context,
          builder: (context) => AlertDialog(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
            title: const Text('Warning'),
            content: const Text('Apakah Anda Yakin Ingin Keluar ?'),
            actions: [
              TextButton(
                  onPressed: () => Navigator.of(context).pop(false),
                  child: const Text('Tidak',
                      style: TextStyle(color: Colors.grey, fontSize: 14))),
              TextButton(
                  onPressed: () => Navigator.of(context).pop(true),
                  child: Text(
                    "Iya",
                    style: buttonStyle.copyWith(fontSize: 14),
                  )),
            ],
          ),
        ) ??
        false; //if showDialouge had returned null, then return false
  }
}
