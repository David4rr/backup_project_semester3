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
    return Scaffold(
      resizeToAvoidBottomInset: true,
      backgroundColor: primaryColor,
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
            Text(
              "Selamat Datang",
              style: selamatdatangTextStyle.copyWith(
                  fontSize: 36, color: button2Color),
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: 15,
            ),
            Text(
              "TSA END GAME bertujuan untuk meningkatkan keterampilan dan daya saing, \nproduktivitas, profesionalisme SDM bidang teknologi informasi dan komunikasi bagi angkatan kerja \nmuda Indonesia, masyarakat umum, dan aparatur sipil negara.",
              style: deskripsiTextStyle.copyWith(fontSize: 14),
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
                          isDismissible: false,
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
                          isDismissible: false,
                          isScrollControlled: true,
                          context: context,
                          builder: (_) {
                            return const bottomSheetLogin();
                          });
                    },
                    style: ElevatedButton.styleFrom(
                        primary: primaryColor,
                        shape: RoundedRectangleBorder(
                            side: BorderSide(color: button2Color, width: 3),
                            borderRadius: BorderRadius.circular(15))),
                    child: Text(
                      'Login',
                      style: buttonStyle.copyWith(
                          fontSize: 20,
                          fontWeight: FontWeight.w500,
                          color: button2Color),
                    ))),
          ],
        ),
      ),
    );
  }
}
