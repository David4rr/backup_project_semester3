// ignore_for_file: avoid_print

part of 'modal.dart';

class MyHttpOverrides extends HttpOverrides {
  @override
  HttpClient createHttpClient(SecurityContext? context) {
    return super.createHttpClient(context)
      ..badCertificateCallback =
          (X509Certificate cert, String host, int port) => true;
  }
}

class BottomSheetRegister extends StatefulWidget {
  const BottomSheetRegister({Key? key}) : super(key: key);

  @override
  State<BottomSheetRegister> createState() => _BottomSheetRegisterState();
}

class _BottomSheetRegisterState extends State<BottomSheetRegister> {
  bool _isHiddenPassword = true;
  bool _isHiddenConfrimPassword = true;

  final namadepanController = TextEditingController();
  final namabelakangController = TextEditingController();
  // final emailController = TextEditingController();
  // final passwordController = TextEditingController();
  final asalinstitusiController = TextEditingController();
  final kegiatanController = TextEditingController();

  final regisemailController = TextEditingController();
  final regispasswordController = TextEditingController();

  Future userRegister(String userFN, String userLN, String userAsalInstitusi,
      String userKegiatan, String userEmail, String userPassword) async {
    HttpOverrides.global = MyHttpOverrides();

    // SERVER LOGIN API URL
    var url = 'http://mopgreen.my.id/register.php';
    // var url = 'https://20.20.0.254/1.%20KULIAH/MOP-Green/register.php';
    //  Uri.parse(url);

    // Store all data with Param Name.
    var data = {
      'nama_depan': userFN,
      'nama_belakang': userLN,
      'asal_institusi': userAsalInstitusi,
      'kegiatan': userKegiatan,
      'email': userEmail,
      'password': userPassword
    };
    // var errorcode = true;

    // Starting Web API Call.
    var response = await http.post(Uri.parse(url), body: json.encode(data));
    var dataprint = json.encode(data);
    print(dataprint);
    // Getting Server response into variable.
    // var message = response.statusCode;
    //var datauser = response.body;
    //var hasiluser = jsonDecode(datauser);
    // var namadepan = hasiluser['nama_depan'];
    // var namabelakang = hasiluser['nama_belakang'];
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
              padding: EdgeInsets.symmetric(horizontal: defaultmargin),
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
                            "Registrasi",
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
                      controller: namadepanController,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        hintText: "Nama Depan",
                        labelText: "Nama Depan",
                      )),

                  const SizedBox(
                    height: 10,
                  ),

                  TextField(
                      controller: namabelakangController,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        hintText: "Nama Belakang",
                        labelText: "Nama Belakang",
                      )),
                  const SizedBox(
                    height: 10,
                  ),

                  TextField(
                      controller: regisemailController,
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

                  TextField(
                      controller: asalinstitusiController,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        hintText: "Asal Institusi",
                        labelText: "Asal Institusi",
                      )),
                  const SizedBox(
                    height: 10,
                  ),

                  TextField(
                      controller: kegiatanController,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        hintText: "Kegiatan",
                        labelText: "Kegiatan",
                      )),
                  const SizedBox(
                    height: 10,
                  ),

                  Padding(
                    padding: EdgeInsets.only(
                        bottom: mediaQueryData.viewInsets.bottom),
                    child: TextField(
                      // TextField(
                      controller: regispasswordController,
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
                    height: 10,
                  ),

                  // Padding(
                  //   padding: EdgeInsets.only(
                  //       bottom: mediaQueryData.viewInsets.bottom),
                  //   child: TextField(
                  //       controller: regispasswordController,
                  //       obscureText: _isHiddenConfrimPassword,
                  //       decoration: InputDecoration(
                  //         border: OutlineInputBorder(
                  //           borderRadius: BorderRadius.circular(10),
                  //         ),
                  //         hintText: "Confirm Password",
                  //         labelText: "Confirm Password",
                  //         suffixIcon: IconButton(
                  //             icon: Icon(_isHiddenConfrimPassword
                  //                 ? Icons.visibility_off
                  //                 : Icons.visibility),
                  //             onPressed: () {
                  //               setState(() {
                  //                 _isHiddenConfrimPassword =
                  //                     !_isHiddenConfrimPassword;
                  //               });
                  //             }),
                  //       )),
                  // ),
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
                              String namadepan = namadepanController.text;
                              String namabelakang = namabelakangController.text;
                              String asalinstitusi =
                                  asalinstitusiController.text;
                              String kegiatan = kegiatanController.text;
                              String regisuseremail = regisemailController.text;
                              String regisuserpassword =
                                  regispasswordController.text;

                              if (namadepan.isNotEmpty &&
                                  namabelakang.isNotEmpty &&
                                  asalinstitusi.isNotEmpty &&
                                  kegiatan.isNotEmpty &&
                                  regisuseremail.isNotEmpty &&
                                  regisuserpassword.isNotEmpty) {
                                bool response = await userRegister(
                                    namadepan,
                                    namabelakang,
                                    asalinstitusi,
                                    kegiatan,
                                    regisuseremail,
                                    regisuserpassword);
                                if (response) {
                                  showDialog(
                                      context: context,
                                      builder: (_) => AlertDialog(
                                            title: const Text('Success'),
                                            content: const Text(
                                                'Registrasi berhasil'),
                                            actions: <Widget>[
                                              ElevatedButton(
                                                child: const Text('Close'),
                                                onPressed: () {
                                                  Navigator.of(context).pop();
                                                },
                                              )
                                            ],
                                          ));

                                  // Navigator
                                  //     .pushReplacement(
                                  //   context,
                                  //   MaterialPageRoute(
                                  //     builder:
                                  //         (context) =>
                                  //             const selamatdatang(),
                                  //   ),
                                  // );
                                } else {
                                  showDialog(
                                      context: context,
                                      builder: (_) => AlertDialog(
                                            title: const Text('Error'),
                                            content: const Text(
                                                'Registrasi gagal, silakan registrasi ulang!'),
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
                                              'Semua form harus diisi'),
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
                            'Registrasi',
                            style: buttonStyle.copyWith(
                              color: backgroundColor,
                              fontSize: 20,
                              fontWeight: FontWeight.w500,
                            ),
                          ))),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text("Sudah punya Akun? ",
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
                                  return const bottomSheetLogin();
                                });
                            // Navigator.pushReplacement(
                            //   context,
                            //   MaterialPageRoute(
                            //     builder: (context) => const bottomSheetLogin(),
                            //   ),
                            // );
                            //   Navigator.of(context).pop();
                            //   setState(() {
                            //     const bottomSheetLogin();
                            //   });
                          },
                          child: Text("Login",
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
        ),
        // )
      ],
    );
  }
}
