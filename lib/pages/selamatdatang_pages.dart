part of 'pages.dart';

class selamatdatang extends StatefulWidget {
  const selamatdatang({Key? key}) : super(key: key);

  @override
  State<selamatdatang> createState() => _selamatdatangState();
}

class _selamatdatangState extends State<selamatdatang> {
  bool _isHiddenPassword = true;
  bool _isHiddenConfrimPassword = true;

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
            Container(
                height: 60,
                width: MediaQuery.of(context).size.width - 2 * defaultmargin,
                child: ElevatedButton(
                    onPressed: () {
                      showModalBottomSheet(
                          isScrollControlled: true,
                          context: context,
                          builder: (context) {
                            return StatefulBuilder(builder:
                                (BuildContext context, StateSetter setState) {
                              return Wrap(
                                children: [
                                  //* Bagian Modal
                                  Container(
                                      color: Colors.transparent,
                                      child: Container(
                                        decoration: const BoxDecoration(
                                            gradient: LinearGradient(
                                              begin: Alignment.topLeft,
                                              end: Alignment.bottomRight,
                                              colors: [
                                                Color(0xFF16D682),
                                                Color(0xFF05BE5E)
                                              ],
                                            ),
                                            borderRadius: BorderRadius.only(
                                                topRight: Radius.circular(40),
                                                topLeft: Radius.circular(40))),
                                        child: Container(
                                          margin: EdgeInsets.symmetric(
                                              horizontal: defaultmargin),
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              //jarak
                                              const SizedBox(
                                                height: 25,
                                              ),
                                              Row(
                                                children: [
                                                  Column(
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      Text(
                                                        "Registrasi",
                                                        style:
                                                            registrasiTextStyle
                                                                .copyWith(
                                                          fontSize: 30,
                                                          fontWeight:
                                                              FontWeight.bold,
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
                                                      child: Image.asset(
                                                          'assets/images/close.png',
                                                          height: 24,
                                                          width: 24),
                                                    ),
                                                  )
                                                ],
                                              ),
                                              const SizedBox(
                                                height: 25,
                                              ),

                                              TextField(
                                                  decoration: InputDecoration(
                                                border: OutlineInputBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(10),
                                                ),
                                                hintText: "Nama Depan",
                                                labelText: "Nama Depan",
                                              )),
                                              const SizedBox(
                                                height: 20,
                                              ),

                                              TextField(
                                                  decoration: InputDecoration(
                                                border: OutlineInputBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(10),
                                                ),
                                                hintText: "Nama Belakang",
                                                labelText: "Nama Belakang",
                                              )),
                                              const SizedBox(
                                                height: 20,
                                              ),

                                              TextField(
                                                  decoration: InputDecoration(
                                                border: OutlineInputBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(10),
                                                ),
                                                hintText: "Fullname",
                                                labelText: "Fullname",
                                              )),
                                              const SizedBox(
                                                height: 20,
                                              ),

                                              TextField(
                                                  decoration: InputDecoration(
                                                border: OutlineInputBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(10),
                                                ),
                                                hintText: "Email",
                                                labelText: "Email",
                                              )),
                                              const SizedBox(
                                                height: 20,
                                              ),

                                              TextField(
                                                  obscureText:
                                                      _isHiddenPassword,
                                                  decoration: InputDecoration(
                                                    border: OutlineInputBorder(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              10),
                                                    ),
                                                    hintText: "Password",
                                                    labelText: "Password",
                                                    suffixIcon: IconButton(
                                                        icon: Icon(_isHiddenPassword
                                                            ? Icons
                                                                .visibility_off
                                                            : Icons.visibility),
                                                        onPressed: () {
                                                          setState(() {
                                                            _isHiddenPassword =
                                                                !_isHiddenPassword;
                                                          });
                                                        }),
                                                  )),
                                              const SizedBox(
                                                height: 20,
                                              ),

                                              TextField(
                                                  obscureText:
                                                      _isHiddenConfrimPassword,
                                                  decoration: InputDecoration(
                                                    border: OutlineInputBorder(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              10),
                                                    ),
                                                    hintText:
                                                        "Confirm Password",
                                                    labelText:
                                                        "Confirm Password",
                                                    suffixIcon: IconButton(
                                                        icon: Icon(
                                                            _isHiddenConfrimPassword
                                                                ? Icons
                                                                    .visibility_off
                                                                : Icons
                                                                    .visibility),
                                                        onPressed: () {
                                                          setState(() {
                                                            _isHiddenConfrimPassword =
                                                                !_isHiddenConfrimPassword;
                                                          });
                                                        }),
                                                  )),
                                              const SizedBox(
                                                height: 20,
                                              ),
                                              Container(
                                                  height: 60,
                                                  width: MediaQuery.of(context)
                                                          .size
                                                          .width -
                                                      2 * defaultmargin,
                                                  child: ElevatedButton(
                                                      onPressed: () {},
                                                      child: Text(
                                                        'Registrasi',
                                                        style: buttonStyle
                                                            .copyWith(
                                                          fontSize: 20,
                                                          fontWeight:
                                                              FontWeight.w500,
                                                        ),
                                                      ),
                                                      style: ElevatedButton.styleFrom(
                                                          primary: primaryColor,
                                                          shape: RoundedRectangleBorder(
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          15))))),
                                              const SizedBox(
                                                height: 10,
                                              ),
                                              Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.center,
                                                children: [
                                                  Text("Sudah punya Akun? ",
                                                      style: deskripsiTextStyle
                                                          .copyWith(
                                                              fontSize: 14)),
                                                  Text("Login",
                                                      style: deskripsiTextStyle
                                                          .copyWith(
                                                              color:
                                                                  primaryColor,
                                                              fontSize: 14))
                                                ],
                                              ),
                                              SizedBox(
                                                height: defaultmargin,
                                              ),
                                            ],
                                          ),
                                        ),
                                      ))
                                ],
                              );
                            });
                          });
                    },
                    child: Text(
                      'Register',
                      style: deskripsiTextStyle.copyWith(
                          fontSize: 20,
                          fontWeight: FontWeight.w500,
                          color: primaryColor),
                    ),
                    style: ElevatedButton.styleFrom(
                        primary: button2Color,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15))))),
            const SizedBox(
              height: 15,
            ),
            Container(
                height: 60,
                width: MediaQuery.of(context).size.width - 2 * defaultmargin,
                child: ElevatedButton(
                    onPressed: () {
                      showModalBottomSheet(
                          isScrollControlled: true,
                          context: context,
                          builder: (context) {
                            return StatefulBuilder(builder:
                                (BuildContext context, StateSetter setState) {
                              return Wrap(
                                children: [
                                  //* Bagian Modal
                                  Container(
                                      color: Colors.transparent,
                                      child: Container(
                                        decoration: const BoxDecoration(
                                            gradient: LinearGradient(
                                              begin: Alignment.topLeft,
                                              end: Alignment.bottomRight,
                                              colors: [
                                                Color(0xFF16D682),
                                                Color(0xFF05BE5E)
                                              ],
                                            ),
                                            borderRadius: BorderRadius.only(
                                                topRight: Radius.circular(40),
                                                topLeft: Radius.circular(40))),
                                        child: Container(
                                          margin: EdgeInsets.symmetric(
                                              horizontal: defaultmargin),
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              //jarak
                                              const SizedBox(
                                                height: 25,
                                              ),
                                              Row(
                                                children: [
                                                  Column(
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      Text(
                                                        "Login",
                                                        style:
                                                            registrasiTextStyle
                                                                .copyWith(
                                                          fontSize: 30,
                                                          fontWeight:
                                                              FontWeight.bold,
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
                                                      child: Image.asset(
                                                          'assets/images/close.png',
                                                          height: 24,
                                                          width: 24),
                                                    ),
                                                  )
                                                ],
                                              ),
                                              const SizedBox(
                                                height: 25,
                                              ),

                                              TextField(
                                                  decoration: InputDecoration(
                                                border: OutlineInputBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(10),
                                                ),
                                                hintText: "Your Username",
                                                labelText: "Username",
                                              )),
                                              const SizedBox(
                                                height: 20,
                                              ),

                                              TextField(
                                                  obscureText:
                                                      _isHiddenPassword,
                                                  decoration: InputDecoration(
                                                    border: OutlineInputBorder(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              10),
                                                    ),
                                                    hintText: "Password",
                                                    labelText: "Password",
                                                    suffixIcon: IconButton(
                                                        icon: Icon(_isHiddenPassword
                                                            ? Icons
                                                                .visibility_off
                                                            : Icons.visibility),
                                                        onPressed: () {
                                                          setState(() {
                                                            _isHiddenPassword =
                                                                !_isHiddenPassword;
                                                          });
                                                        }),
                                                  )),

                                              const SizedBox(
                                                height: 15,
                                              ),
                                              Row(children: [
                                                Container(
                                                  child:
                                                      Text("Forgot Password ?"),
                                                )
                                              ]),

                                              const SizedBox(
                                                height: 15,
                                              ),
                                              Container(
                                                  height: 60,
                                                  width: MediaQuery.of(context)
                                                          .size
                                                          .width -
                                                      2 * defaultmargin,
                                                  child: ElevatedButton(
                                                      onPressed: () {
                                                        Navigator
                                                            .pushReplacement(
                                                          context,
                                                          MaterialPageRoute(
                                                            builder: (context) =>
                                                                const dashboard(),
                                                          ),
                                                        );
                                                      },
                                                      child: Text(
                                                        'Login',
                                                        style: buttonStyle
                                                            .copyWith(
                                                                fontSize: 20,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w500,
                                                                color:
                                                                    button2Color),
                                                      ),
                                                      style: ElevatedButton.styleFrom(
                                                          primary: primaryColor,
                                                          shape: RoundedRectangleBorder(
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          15))))),
                                              const SizedBox(
                                                height: 10,
                                              ),
                                              Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.center,
                                                children: [
                                                  Text("Belum punya Akun? ",
                                                      style: deskripsiTextStyle
                                                          .copyWith(
                                                              fontSize: 14)),
                                                  Text("Registrasi",
                                                      style: deskripsiTextStyle
                                                          .copyWith(
                                                              color:
                                                                  primaryColor,
                                                              fontSize: 14))
                                                ],
                                              ),
                                              SizedBox(
                                                height: defaultmargin,
                                              ),
                                            ],
                                          ),
                                        ),
                                      ))
                                ],
                              );
                            });
                          });
                    },
                    child: Text(
                      'Login',
                      style: buttonStyle.copyWith(
                          fontSize: 20,
                          fontWeight: FontWeight.w500,
                          color: button2Color),
                    ),
                    style: ElevatedButton.styleFrom(
                        primary: primaryColor,
                        shape: RoundedRectangleBorder(
                            side: BorderSide(color: button2Color, width: 3),
                            borderRadius: BorderRadius.circular(15))))),
          ],
        ),
      ),
    );
  }
}
