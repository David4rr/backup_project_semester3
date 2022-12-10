part of 'modal.dart';

class BottomSheetRegister extends StatefulWidget {
  const BottomSheetRegister({Key? key}) : super(key: key);

  @override
  State<BottomSheetRegister> createState() => _BottomSheetRegisterState();
}

class _BottomSheetRegisterState extends State<BottomSheetRegister> {
  bool _isHiddenPassword = true;
  bool _isHiddenConfrimPassword = true;
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
              padding: EdgeInsets.symmetric(horizontal: defaultmargin),
              // margin: EdgeInsets.symmetric(
              //     horizontal: defaultmargin),
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

                  TextField(
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
                  const SizedBox(
                    height: 10,
                  ),

                  Padding(
                    padding: EdgeInsets.only(
                        bottom: mediaQueryData.viewInsets.bottom),
                    child: TextField(
                        obscureText: _isHiddenConfrimPassword,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          hintText: "Confirm Password",
                          labelText: "Confirm Password",
                          suffixIcon: IconButton(
                              icon: Icon(_isHiddenConfrimPassword
                                  ? Icons.visibility_off
                                  : Icons.visibility),
                              onPressed: () {
                                setState(() {
                                  _isHiddenConfrimPassword =
                                      !_isHiddenConfrimPassword;
                                });
                              }),
                        )),
                  ),
                  const SizedBox(
                    height: 10,
                  ),

                  SizedBox(
                      height: 60,
                      width:
                          MediaQuery.of(context).size.width - 2 * defaultmargin,
                      child: ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                              primary: primaryColor,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(15))),
                          child: Text(
                            'Registrasi',
                            style: buttonStyle.copyWith(
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
                          style: deskripsiTextStyle.copyWith(fontSize: 14)),
                      Text("Login",
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
        ),
        // )
      ],
    );
  }
}
