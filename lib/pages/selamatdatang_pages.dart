// ignore_for_file: camel_case_types

part of 'pages.dart';

class selamatdatang extends StatefulWidget {
  const selamatdatang({Key? key}) : super(key: key);

  @override
  State<selamatdatang> createState() => _selamatdatangState();
}

class _selamatdatangState extends State<selamatdatang> {
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: showExitPopup,
      child: Scaffold(
        // resizeToAvoidBottomInset: true,
        backgroundColor: backgroundColor,
        body: SafeArea(
          bottom: false,
          child: ListView(
            padding: EdgeInsets.symmetric(horizontal: defaultmargin),
            children: [
              const SizedBox(
                height: 60,
              ),
              Image.asset(
                'assets/images/logo.png',
                height: 300,
                width: 300,
              ),
              const SizedBox(
                height: 36,
              ),
              // Text(
              //   "Selamat Datang",
              //   style: selamatdatangTextStyle.copyWith(
              //       fontSize: 36, color: button2Color),
              //   textAlign: TextAlign.center,
              // ),
              const SizedBox(
                height: 15,
              ),
              Text(
                "MOP Green merupakan sistem informasi \n monitoring dan controlling greenhouse, tersedia dalam versi web untuk admin dan guest serta mobile untuk user.",
                style: deskripsiTextStyle.copyWith(
                    fontSize: 14, color: const Color(0xff737373)),
                textAlign: TextAlign.center,
              ),
              const SizedBox(
                height: 51,
              ),
              SizedBox(
                  height: 60,
                  width: MediaQuery.of(context).size.width - 2 * defaultmargin,
                  child: ElevatedButton(
                      onPressed: () {
                        showModalBottomSheet(
                            isDismissible: true,
                            isScrollControlled: true,
                            context: context,
                            builder: (_) {
                              return const BottomSheetRegister();
                            });
                      },
                      style: ElevatedButton.styleFrom(
                          primary: button2Color,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15))),
                      child: Text(
                        'Register',
                        style: deskripsiTextStyle.copyWith(
                            fontSize: 20,
                            fontWeight: FontWeight.w500,
                            color: primaryColor),
                      ))),
              const SizedBox(
                height: 15,
              ),
              SizedBox(
                  height: 60,
                  width: MediaQuery.of(context).size.width - 2 * defaultmargin,
                  child: ElevatedButton(
                      onPressed: () {
                        showModalBottomSheet(
                            isDismissible: true,
                            isScrollControlled: true,
                            context: context,
                            builder: (_) {
                              return const bottomSheetLogin();
                            });
                      },
                      style: ElevatedButton.styleFrom(
                          primary: button2Color,
                          shape: RoundedRectangleBorder(
                              side: BorderSide(color: button2Color, width: 3),
                              borderRadius: BorderRadius.circular(15))),
                      child: Text(
                        'Login',
                        style: buttonStyle.copyWith(
                            fontSize: 20,
                            fontWeight: FontWeight.w500,
                            color: primaryColor),
                      ))),
            ],
          ),
        ),
      ),
    );
  }

  Future<bool> showExitPopup() async {
    return await showDialog(
          //show confirm dialogue
          //the return value will be from "Yes" or "No" options
          context: context,
          builder: (context) => AlertDialog(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
            title: const Text('Warning'),
            content: const Text('Apakah Anda Yakin Ingin Keluar ?'),
            // controller: controller,

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
