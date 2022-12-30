// ignore_for_file: camel_case_types, avoid_print, non_constant_identifier_names

part of 'pages.dart';

class profilPage extends StatefulWidget {
  const profilPage({Key? key}) : super(key: key);

  @override
  State<profilPage> createState() => _profilPageState();
}

class _profilPageState extends State<profilPage> {
  late TextEditingController controller;
  late TextEditingController controller2;
  late TextEditingController controller3;
  late TextEditingController controller4;
  late TextEditingController controller5;

  var id = '';
  var namaDepan = '';
  var namaBelakang = '';
  var asalInstitusi = '';
  var kegiatan = '';
  var email = '';
  String namaLengkap = '';

  late SharedPreferences s_prefs;
  var datauser = '';

  _showSavedValue() async {
    s_prefs = await SharedPreferences.getInstance();
    setState(() {
      datauser = s_prefs.getString("KEY_1").toString();
      // print(datauser);
      id = (jsonDecode(datauser)['id']).toString();
      namaDepan = (jsonDecode(datauser)['nama_depan']).toString();
      namaBelakang = (jsonDecode(datauser)['nama_belakang']).toString();
      asalInstitusi = (jsonDecode(datauser)['asal_institusi']).toString();
      kegiatan = (jsonDecode(datauser)['kegiatan']).toString();
      email = (jsonDecode(datauser)['email']).toString();
      print(datauser);
      namaLengkap = '$namaDepan $namaBelakang';
    });
  }

  // Future<void> accessVariable() async {
  //   await userLogin().then((value) {
  //     print(value); // Outputs "Hello"
  //   });
  // }
  // void getData() async {
  //   // Access the variable inside the Future like this:
  //   var namadepan = await userLogin;

  //   // Use the variable here...
  // }
  // Future<void> userLogin(var namadepan) async {
  //   //  String variable = await userLogin();
  //   // print('user nama depan: $namadepan'); // Outputs "Hello"
  //   var namaDepan = namadepan;
  //   print(namaDepan);
  // }

  @override
  void initState() {
    // namaLengkap = namaDepan + ' ' + namaBelakang;
    // userLogin();
    _showSavedValue();
    super.initState();

    // namaDepan = jsonDecode(datauser)[0]["nama_depan"];
    // var hasiluser = jsonDecode(datauser);
    // print(hasiluser);
    // namaDepan = hasiluser['nama_depan'];
    controller = TextEditingController();
    controller2 = TextEditingController();
    controller3 = TextEditingController();
    controller4 = TextEditingController();
    controller5 = TextEditingController();
  }

  @override
  void dispose() {
    controller.dispose();
    controller2.dispose();
    controller3.dispose();
    controller4.dispose();
    controller5.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF1F2F4),
      appBar: AppBar(
        backgroundColor: button2Color,
        title: const Text("Profil Pribadi"),
        centerTitle: true,
        leading: Builder(
          builder: (BuildContext context) {
            return IconButton(
              icon: const Icon(Icons.arrow_back_ios_new_outlined),
              onPressed: () {
                Navigator.of(context).pop();
              },
            );
          },
        ),
      ),
      body: Column(
        children: [
          Card(
            margin: const EdgeInsets.all(8),
            child: ListTile(
              contentPadding: const EdgeInsets.all(20),
              leading: Text(namaLengkap.toString()),
              trailing: const AvatarView(
                radius: 30,
                avatarType: AvatarType.CIRCLE,
                backgroundColor: Colors.red,
                imagePath: "assets/images/avatar.png",
                placeHolder: Icon(
                  Icons.person,
                  size: 30,
                ),
                errorWidget: Icon(
                  Icons.error,
                  size: 30,
                ),
              ),
            ),
          ),
          Card(
            child: Column(
              // mainAxisSize: MainAxisSize.min,
              children: [
                ListTile(
                  dense: true,
                  leading: const Text("Nama Depan",
                      style: TextStyle(fontWeight: FontWeight.w500)),
                  trailing: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Text(namaDepan,
                          maxLines: 1,
                          style: const TextStyle(
                              color: Colors.grey, fontSize: 12)),
                      const Icon(Icons.arrow_forward_ios_outlined),
                    ],
                  ),
                  onTap: () async {
                    controller.text = namaDepan;
                    await openDialog();
                    // final namaDepan = await openDialog();
                    // if (namaDepan == null || namaDepan.isEmpty) return;

                    // setState(() => this.namaDepan = namaDepan);
                  },
                ),
                const Divider(
                  height: 3,
                  color: Colors.black26,
                ),
                ListTile(
                  dense: true,
                  leading: const Text("Nama Belakang",
                      style: TextStyle(fontWeight: FontWeight.w500)),
                  trailing: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Text(namaBelakang,
                          style: const TextStyle(
                              color: Colors.grey, fontSize: 12)),
                      const Icon(Icons.arrow_forward_ios_outlined),
                    ],
                  ),
                  onTap: () async {
                    controller2.text = namaBelakang;
                    await openDialog2();
                    // final namaBelakang = await openDialog2();
                    // if (namaBelakang == null || namaBelakang.isEmpty) return;

                    // setState(() => this.namaBelakang = namaBelakang);
                  },
                ),
                const Divider(
                  height: 3,
                  color: Colors.black26,
                ),
                ListTile(
                  dense: true,
                  leading: const Text("Asal Institusi",
                      maxLines: 50,
                      style: TextStyle(fontWeight: FontWeight.w500)),
                  trailing: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Text(asalInstitusi,
                          style: const TextStyle(
                              color: Colors.grey, fontSize: 12)),
                      const Icon(Icons.arrow_forward_ios_outlined),
                    ],
                  ),
                  onTap: () async {
                    controller3.text = asalInstitusi;
                    await openDialog3();
                    // final asalInstitusi = await openDialog3();
                    // if (asalInstitusi == null || asalInstitusi.isEmpty) return;

                    // setState(() => this.asalInstitusi = asalInstitusi);
                  },
                ),
                const Divider(
                  height: 3,
                  color: Colors.black26,
                ),
                ListTile(
                  dense: true,
                  leading: const Text("Kegiatan",
                      style: TextStyle(fontWeight: FontWeight.w500)),
                  trailing: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Text(kegiatan,
                          style: const TextStyle(
                              color: Colors.grey, fontSize: 12)),
                      const Icon(Icons.arrow_forward_ios_outlined),
                    ],
                  ),
                  onTap: () async {
                    controller4.text = kegiatan;
                    await openDialog4();
                    // final kegiatan = await openDialog4();
                    // if (kegiatan == null || kegiatan.isEmpty) return;

                    // setState(() => this.kegiatan = kegiatan);
                  },
                ),
                const Divider(
                  height: 3,
                  color: Colors.black26,
                ),
                ListTile(
                  dense: true,
                  leading: const Text("Email",
                      style: TextStyle(fontWeight: FontWeight.w500)),
                  trailing: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Text(email,
                          style: const TextStyle(
                              color: Colors.grey, fontSize: 12)),
                      const Icon(Icons.arrow_forward_ios_outlined),
                    ],
                  ),
                  onTap: () async {
                    controller5.text = email;
                    await openDialog5();
                    // final email = await openDialog5();
                    // if (email == null || email.isEmpty) return;

                    // setState(() => this.email = email);
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Future<String?> openDialog() => showDialog<String>(
      context: context,
      builder: (context) => AlertDialog(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
            content: TextField(
              maxLength: 40,
              autofocus: true,
              decoration:
                  const InputDecoration(hintText: 'Masukan Nama Depan Anda'),
              controller: controller,
            ),
            actions: [
              TextButton(
                  onPressed: () {
                    setState(() {
                      controller.text = "";
                      Navigator.pop(context);
                    });
                  },
                  child: const Text('Batal',
                      style: TextStyle(color: Colors.grey, fontSize: 14))),
              TextButton(
                  onPressed: submit,
                  child: Text(
                    "Tentukan",
                    style: buttonStyle.copyWith(fontSize: 14),
                  )),
            ],
          ));
  void submit() {
    // controller.text = "";
    setState(() {
      namaDepan = controller.text;
    });
    updatefn(id, namaDepan);
    Navigator.of(context).pop();

    // controller.clear();
  }

  Future<String?> openDialog2() => showDialog<String>(
      context: context,
      builder: (context) => AlertDialog(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
            content: TextField(
              maxLength: 40,
              autofocus: true,
              decoration:
                  const InputDecoration(hintText: 'Masukan Nama Belakang Anda'),
              controller: controller2,
            ),
            actions: [
              TextButton(
                  onPressed: () {
                    setState(() {
                      controller2.text = "";
                      Navigator.pop(context);
                    });
                  },
                  child: const Text('Batal',
                      style: TextStyle(color: Colors.grey, fontSize: 14))),
              TextButton(
                  onPressed: submit2,
                  child: Text(
                    "Tentukan",
                    style: buttonStyle.copyWith(fontSize: 14),
                  )),
            ],
          ));
  void submit2() {
    setState(() {
      namaBelakang = controller2.text;
    });
    updateln(id, namaBelakang);
    Navigator.of(context).pop();

    // controller.clear();
  }

  Future<String?> openDialog3() => showDialog<String>(
      context: context,
      builder: (context) => AlertDialog(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
            content: TextField(
              maxLength: 40,
              autofocus: true,
              decoration: const InputDecoration(
                  hintText: 'Masukan Asal Institusi Anda'),
              controller: controller3,
            ),
            actions: [
              TextButton(
                  onPressed: () {
                    setState(() {
                      controller3.text = "";
                      Navigator.pop(context);
                    });
                  },
                  child: const Text('Batal',
                      style: TextStyle(color: Colors.grey, fontSize: 14))),
              TextButton(
                  onPressed: submit3,
                  child: Text(
                    "Tentukan",
                    style: buttonStyle.copyWith(fontSize: 14),
                  )),
            ],
          ));
  void submit3() {
    // controller.text = "";
    setState(() {
      asalInstitusi = controller3.text;
    });
    updateasalins(id, asalInstitusi);
    Navigator.of(context).pop();

    // controller.clear();
  }

  Future<String?> openDialog4() => showDialog<String>(
      context: context,
      builder: (context) => AlertDialog(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
            content: TextField(
              maxLength: 40,
              autofocus: true,
              decoration:
                  const InputDecoration(hintText: 'Masukan Kegiatan Anda'),
              controller: controller4,
            ),
            actions: [
              TextButton(
                  onPressed: () {
                    setState(() {
                      controller4.text = "";
                      Navigator.pop(context);
                    });
                  },
                  child: const Text('Batal',
                      style: TextStyle(color: Colors.grey, fontSize: 14))),
              TextButton(
                  onPressed: submit4,
                  child: Text(
                    "Tentukan",
                    style: buttonStyle.copyWith(fontSize: 14),
                  )),
            ],
          ));
  void submit4() {
    // controller.text = "";
    setState(() {
      kegiatan = controller4.text;
    });
    updatekeg(id, kegiatan);
    Navigator.of(context).pop();

    // controller.clear();
  }

  Future<String?> openDialog5() => showDialog<String>(
      context: context,
      builder: (context) => AlertDialog(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
            content: TextField(
              maxLength: 40,
              autofocus: true,
              decoration: const InputDecoration(hintText: 'Masukan Email Anda'),
              controller: controller5,
            ),
            actions: [
              TextButton(
                  onPressed: () {
                    setState(() {
                      controller5.text = "";
                      Navigator.pop(context);
                    });
                  },
                  child: const Text('Batal',
                      style: TextStyle(color: Colors.grey, fontSize: 14))),
              TextButton(
                  onPressed: submit5,
                  child: Text(
                    "Tentukan",
                    style: buttonStyle.copyWith(fontSize: 14),
                  )),
            ],
          ));
  void submit5() {
    // controller.text = "";
    setState(() {
      email = controller5.text;
    });
    updateemail(id, email);
    Navigator.of(context).pop();

    // controller.clear();
  }

  Future<void> updatefn(String id, String namaDepan) async {
    print(id);
    print(namaDepan);
    try {
      var data = {"id": id, "nama_depan": namaDepan};
      String uri = "http://mopgreen.my.id/apiapiupdatefn.php";
      var res = await http.post(Uri.parse(uri), body: json.encode(data));
      var response = jsonDecode(res.body);
      if (response["success"] == true) {
        print("data berhasil dihapus");
      } else {
        print("Terjadi kendala silakan ulangi!");
      }
    } catch (e) {
      print(e);
    }
  }

  Future<void> updateln(String id, String namaBelakang) async {
    print(id);
    print(namaBelakang);
    try {
      var data = {"id": id, "nama_belakang": namaBelakang};
      String uri = "http://mopgreen.my.id/apiapiupdateln.php";
      var res = await http.post(Uri.parse(uri), body: json.encode(data));
      var response = jsonDecode(res.body);
      if (response["success"] == true) {
        print("data berhasil dihapus");
      } else {
        print("Terjadi kendala silakan ulangi!");
      }
    } catch (e) {
      print(e);
    }
  }

  Future<void> updateasalins(String id, String asalInstitusi) async {
    print(id);
    print(asalInstitusi);
    try {
      var data = {"id": id, "asal_institusi": asalInstitusi};
      String uri = "http://mopgreen.my.id/apiapiupdateasalins.php";
      var res = await http.post(Uri.parse(uri), body: json.encode(data));
      var response = jsonDecode(res.body);
      if (response["success"] == true) {
        print("data berhasil dihapus");
      } else {
        print("Terjadi kendala silakan ulangi!");
      }
    } catch (e) {
      print(e);
    }
  }

  Future<void> updatekeg(String id, String kegiatan) async {
    print(id);
    print(kegiatan);
    try {
      var data = {"id": id, "kegiatan": kegiatan};
      String uri = "http://mopgreen.my.id/apiapiupdatekeg.php";
      var res = await http.post(Uri.parse(uri), body: json.encode(data));
      var response = jsonDecode(res.body);
      if (response["success"] == true) {
        print("data berhasil dihapus");
      } else {
        print("Terjadi kendala silakan ulangi!");
      }
    } catch (e) {
      print(e);
    }
  }

  Future<void> updateemail(String id, String email) async {
    print(id);
    print(email);
    try {
      var data = {"id": id, "email": email};
      String uri = "http://mopgreen.my.id/apiapiupdateemail.php";
      var res = await http.post(Uri.parse(uri), body: json.encode(data));
      var response = jsonDecode(res.body);
      if (response["success"] == true) {
        print("data berhasil dihapus");
      } else {
        print("Terjadi kendala silakan ulangi!");
      }
    } catch (e) {
      print(e);
    }
  }
}
