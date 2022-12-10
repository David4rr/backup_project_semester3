part of 'modal.dart';
// ignore_for_file: camel_case_types

class bottomSheetLogin extends StatefulWidget {
  const bottomSheetLogin({Key? key}) : super(key: key);

  @override
  State<bottomSheetLogin> createState() => _bottomSheetLoginState();
}

class _bottomSheetLoginState extends State<bottomSheetLogin> {
  bool _isHiddenPassword = true;
  // final bool _isHiddenConfrimPassword = true;
  @override
  Widget build(BuildContext context) {
    final MediaQueryData mediaQueryData = MediaQuery.of(context);
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
                  colors: [Color(0xFF16D682), Color(0xFF05BE5E)],
                ),
                borderRadius: BorderRadius.only(
                    topRight: Radius.circular(40),
                    topLeft: Radius.circular(40))),
            child: Container(
              margin: EdgeInsets.symmetric(horizontal: defaultmargin),
              // child: Padding(
              //   padding:
              //       EdgeInsets.only(bottom: mediaQueryData.viewInsets.bottom),
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
                      decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    hintText: "Your Username",
                    labelText: "Username",
                  )),
                  const SizedBox(
                    height: 20,
                  ),

                  Padding(
                    padding: EdgeInsets.only(
                        bottom: mediaQueryData.viewInsets.bottom),
                    child: TextField(
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
                        )),
                  ),

                  const SizedBox(
                    height: 15,
                  ),
                  Row(children: const [Text("Forgot Password ?")]),

                  const SizedBox(
                    height: 15,
                  ),
                  SizedBox(
                      height: 60,
                      width:
                          MediaQuery.of(context).size.width - 2 * defaultmargin,
                      child: ElevatedButton(
                          onPressed: () {
                            Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const navigasiPage(),
                              ),
                            );
                          },
                          style: ElevatedButton.styleFrom(
                              primary: primaryColor,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(15))),
                          child: Text(
                            'Login',
                            style: buttonStyle.copyWith(
                                fontSize: 20,
                                fontWeight: FontWeight.w500,
                                color: button2Color),
                          ))),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text("Belum punya Akun? ",
                          style: deskripsiTextStyle.copyWith(fontSize: 14)),
                      Text("Registrasi",
                          style: deskripsiTextStyle.copyWith(
                              color: primaryColor, fontSize: 14))
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
