// ignore_for_file: camel_case_types

part of 'pages.dart';

class logView extends StatefulWidget {
  const logView({super.key, this.restorationId});

  final String? restorationId;

  @override
  State<logView> createState() => _logViewState();
}

class _logViewState extends State<logView> with RestorationMixin {
  @override
  String? get restorationId => widget.restorationId;

  final RestorableDateTimeN _startDate = RestorableDateTimeN(DateTime.now());
  final RestorableDateTimeN _endDate = RestorableDateTimeN(DateTime.now());
  late final RestorableRouteFuture<DateTimeRange?> _rangePicker =
      RestorableRouteFuture<DateTimeRange?>(
    onComplete: _selectDateRange,
    onPresent: (NavigatorState navigator, Object? arguments) {
      return navigator
          .restorablePush(_dateRangePickerRoute, arguments: <String, dynamic>{
        'intialStartDate': _startDate.value?.millisecondsSinceEpoch,
        'IntialEndDate': _endDate.value?.millisecondsSinceEpoch,
      });
    },
  );

  void _selectDateRange(DateTimeRange? newSelectedDate) {
    if (newSelectedDate != null) {
      setState(() {
        _startDate.value = newSelectedDate.start;
        _endDate.value = newSelectedDate.end;
      });
    }
  }

  @override
  void restoreState(RestorationBucket? oldBucket, bool initialRestore) {
    registerForRestoration(_startDate, 'start_date');
    registerForRestoration(_endDate, 'end_date');
    registerForRestoration(_rangePicker, 'date_picker_route_future');
  }

  static Route<DateTimeRange?> _dateRangePickerRoute(
    BuildContext context,
    Object? arguments,
  ) {
    return DialogRoute<DateTimeRange?>(
      context: context,
      builder: (BuildContext context) {
        return DateRangePickerDialog(
          restorationId: 'date_picker_dialog',
          initialDateRange:
              _initialDateTimeRange(arguments! as Map<dynamic, dynamic>),
          firstDate: DateTime(2000),
          lastDate: DateTime(2023),
        );
      },
    );
  }

  static DateTimeRange? _initialDateTimeRange(Map<dynamic, dynamic> arguments) {
    if (arguments['intialStartDate'] != null &&
        arguments['intialEndDate'] != null) {
      return DateTimeRange(
        start: DateTime.fromMillisecondsSinceEpoch(
            arguments['initialStartDate'] as int),
        end: DateTime.fromMillisecondsSinceEpoch(
            arguments['initialEndDate'] as int),
      );
    }
    return null;
  }

  List<String> data = [
    "kemarin",
    "3 hari lalu",
    "1 minggu lalu",
    "1 bulan lalu",
  ];

  int index = 0;
  List dataa = [
    const myroom1(),
    const logroom2(),
    const logroom3(),
    const logroom4(),
  ];

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
                        fit: FlexFit.loose,
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
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 30),
                    child: TextFormField(
                      cursorColor: Colors.white,
                      readOnly: true,
                      onTap: () {
                        setState(() {
                          _rangePicker.present();
                        });
                      },
                      decoration: InputDecoration(
                        icon: const Icon(Icons.calendar_today_rounded),
                        labelText: 'From - To',
                        hintText: ("${_startDate.value}-${_endDate.value}"),
                      ),
                    ),
                  ),
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
                    const SizedBox(
                      height: 10,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 90),
                      child: Card(
                        child: DropdownSearch<dynamic>(
                          popupProps: const PopupProps.menu(
                            fit: FlexFit.loose,
                          ),
                          items: const [
                            "Room chart 1",
                            "Room chart 2",
                            "Room chart 3",
                            "Room chart 4"
                          ],
                          dropdownDecoratorProps: const DropDownDecoratorProps(
                            dropdownSearchDecoration: InputDecoration(
                              contentPadding: EdgeInsets.all(10),
                              labelText: "Pilih Room",
                            ),
                          ),
                          onChanged: (i) {
                            setState(() {
                              switch (i) {
                                case "Room chart 1":
                                  index = 0;
                                  break;
                                case "Room chart 2":
                                  index = 1;
                                  break;
                                case "Room chart 3":
                                  index = 2;
                                  break;
                                case "Room chart 4":
                                  index = 3;
                                  break;
                                default:
                                  index = 0;
                                  break;
                              }
                            });
                          },
                          selectedItem: dataa[index],
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    dataa[index],
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
