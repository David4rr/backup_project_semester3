// ignore_for_file: non_constant_identifier_names, use_build_context_synchronously, avoid_print

part of 'modal.dart';

// ignore_for_file: camel_case_types
class MyHttpOverrides2 extends HttpOverrides {
  @override
  HttpClient createHttpClient(SecurityContext? context) {
    return super.createHttpClient(context)
      ..badCertificateCallback =
          (X509Certificate cert, String host, int port) => true;
  }
}

class bottomSheetLogin extends StatefulWidget {
  const bottomSheetLogin({Key? key}) : super(key: key);

  @override
  State<bottomSheetLogin> createState() => _bottomSheetLoginState();
}

class _bottomSheetLoginState extends State<bottomSheetLogin> {
  bool _isHiddenPassword = true;
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  late SharedPreferences s_prefs;

  String datadiri = '';

  Future userLogin(
    String email,
    String password,
  ) async {
    HttpOverrides.global = MyHttpOverrides();

    // SERVER LOGIN API URL
    var url = 'http://mopgreen.my.id/login.php';
    //var url = 'https://20.20.0.254/1.%20KULIAH/MOP-Green/login.php';
    //  Uri.parse(url);

    // Store all data with Param Name.
    var data = {'email': email, 'password': password};
    // var errorcode = true;

    // Starting Web API Call.
    var response = await http.post(Uri.parse(url), body: json.encode(data));

    // Getting Server response into variable.
    // var message = response.body;
    // print(message);
    var datauser = response.body;

    s_prefs = await SharedPreferences.getInstance();
    s_prefs.setString("KEY_1", datauser.toString());

    // var hasiluser = jsonDecode(datauser);
    // var namadepan = hasiluser['nama_depan'];
    // var namabelakang = hasiluser['nama_belakang'];
    // var asalinstitusi = hasiluser['asal_institusi'];
    // var kegiatan = hasiluser['kegiatan'];

    // var message2 = response.statusCode;
    // print(message2);
    // return namadepan;
    // return namabelakang;

    return response.statusCode == 200;
  }

  @override
  Widget build(BuildContext context) {
    final MediaQueryData mediaQueryData = MediaQuery.of(context);
    return Wrap(
      children: [
        //* Bagian Modal
        Container(
          color: Colors.transparent,
          child: Container(
            decoration: BoxDecoration(
                color: backgroundColor,
                borderRadius: const BorderRadius.only(
                    topRight: Radius.circular(40),
                    topLeft: Radius.circular(40))),
            child: Container(
              margin: EdgeInsets.symmetric(horizontal: defaultmargin),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  //jarak
                  const SizedBox(
                    height: 25,
                  ),
                  Row(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Login",
                            style: registrasiTextStyle.copyWith(
                              fontSize: 30,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                      const Spacer(),
                      Center(
                        child: InkWell(
                          onTap: () {
                            //!Ketika Icon di tekan maka popup akan close
                            Navigator.pop(context);
                          },
                          child: Image.asset('assets/images/close.png',
                              height: 24, width: 24),
                        ),
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 25,
                  ),

                  TextField(
                      controller: emailController,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        hintText: "Email",
                        labelText: "Email",
                      )),
                  const SizedBox(
                    height: 10,
                  ),

                  Padding(
                    padding: EdgeInsets.only(
                        bottom: mediaQueryData.viewInsets.bottom),
                    child: TextField(
                      controller: passwordController,
                      obscureText: _isHiddenPassword,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        hintText: "Password",
                        labelText: "Password",
                        suffixIcon: IconButton(
                            icon: Icon(_isHiddenPassword
                                ? Icons.visibility_off
                                : Icons.visibility),
                            onPressed: () {
                              setState(() {
                                _isHiddenPassword = !_isHiddenPassword;
                              });
                            }),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Row(children: const [Text("")]),

                  const SizedBox(
                    height: 10,
                  ),

                  SizedBox(
                      height: 60,
                      width:
                          MediaQuery.of(context).size.width - 2 * defaultmargin,
                      child: ElevatedButton(
                          onPressed: () async {
                            try {
                              String useremail = emailController.text;
                              String userpassword = passwordController.text;
                              if (useremail.isNotEmpty &&
                                  userpassword.isNotEmpty) {
                                bool response =
                                    await userLogin(useremail, userpassword);
                                if (response) {
                                  Navigator.pushReplacement(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) =>
                                          const navigasiPage(),
                                    ),
                                  );
                                } else {
                                  showDialog(
                                      context: context,
                                      builder: (_) => AlertDialog(
                                            title: const Text('Error'),
                                            content: const Text(
                                                'Email dan password salah'),
                                            actions: <Widget>[
                                              ElevatedButton(
                                                child: const Text('Close'),
                                                onPressed: () {
                                                  Navigator.of(context).pop();
                                                },
                                              )
                                            ],
                                          ));
                                }
                              } else {
                                showDialog(
                                    context: context,
                                    builder: (_) => AlertDialog(
                                          title: const Text('Error'),
                                          content: const Text(
                                              'Email dan password harus diisi'),
                                          actions: <Widget>[
                                            ElevatedButton(
                                              child: const Text('Close'),
                                              onPressed: () {
                                                Navigator.of(context).pop();
                                              },
                                            )
                                          ],
                                        ));
                              }
                            } catch (err) {
                              print(err);
                              // print(errorcode);
                              // print(
                              //     'error =  $err');
                              // if (errorcode ==
                              //     false) {
                              //   _showDialog(
                              //       context);
                              // }
                            }
                            // userLogin();
                          },
                          style: ElevatedButton.styleFrom(
                              primary: button2Color,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(15))),
                          child: Text(
                            'Login',
                            style: buttonStyle.copyWith(
                                fontSize: 20,
                                fontWeight: FontWeight.w500,
                                color: backgroundColor),
                          ))),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text("Belum punya Akun? ",
                          style: deskripsiTextStyle.copyWith(
                              color: const Color(0xff737373), fontSize: 14)),
                      TextButton(
                          onPressed: () {
                            Navigator.pop(context);
                            showModalBottomSheet(
                                isDismissible: true,
                                isScrollControlled: true,
                                context: context,
                                builder: (_) {
                                  return const BottomSheetRegister();
                                });
                          },
                          child: Text("Registrasi",
                              style: deskripsiTextStyle.copyWith(
                                  color: primaryColor, fontSize: 14)))
                    ],
                  ),
                  SizedBox(
                    height: defaultmargin,
                  ),
                ],
              ),
            ),
          ),
        )
      ],
    );
  }
}
