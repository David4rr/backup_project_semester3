// ignore_for_file: camel_case_types, non_constant_identifier_names, avoid_print

part of 'pages.dart';

class userPage extends StatefulWidget {
  const userPage({Key? key}) : super(key: key);

  @override
  State<userPage> createState() => _userPageState();
}

class _userPageState extends State<userPage> {
  var id = '';
  var namaDepan = '';
  var namaBelakang = '';
  var asalInstitusi = '';
  var kegiatan = '';
  var email = '';
  String namaLengkap = '';

  late SharedPreferences s_prefs;
  var datauser = '';

  void _showSavedValue() async {
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
      print(namaLengkap);
    });
  }

  @override
  void initState() {
    _showSavedValue();

    super.initState();
  }

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
              height: 200,
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
                margin: const EdgeInsets.only(top: 80),
                child: ListTile(
                  contentPadding: const EdgeInsets.symmetric(horizontal: 20),
                  leading: const AvatarView(
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
                  title: Text(
                    namaLengkap,
                    style: wikwokTextStyle.copyWith(
                        fontWeight: FontWeight.bold, color: Colors.black),
                  ),
                  trailing: const Icon(Icons.arrow_forward_ios_outlined),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const profilPage(),
                      ),
                    );
                  },
                ),
              ),
            ),
            Expanded(
              child: Column(
                children: [
                  Card(
                    child: Column(
                      children: [
                        ListTile(
                          dense: true,
                          // contentPadding: EdgeInsets.symmetric(horizontal: 1),
                          leading: const Icon(
                            Icons.map,
                            size: 35,
                          ),
                          title: const Text(
                            "Peta Greenhouse",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          // subtitle: Text("Ketuk Untuk Membuka"),
                          trailing: Row(
                            mainAxisSize: MainAxisSize.min,
                            children: const <Widget>[
                              Text("Ketuk Untuk Membuka",
                                  style: TextStyle(
                                      color: Colors.grey, fontSize: 12)),
                              Icon(Icons.arrow_forward_ios_outlined),
                            ],
                          ),
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const mapPage(),
                              ),
                            );
                          },
                        ),
                        const Divider(height: 3, color: Colors.black26),
                        ListTile(
                          dense: true,
                          leading: const Icon(
                            Icons.book_online_outlined,
                            size: 35,
                          ),
                          title: const Text(
                            "Tentang Kami",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          trailing: Row(
                            mainAxisSize: MainAxisSize.min,
                            children: const <Widget>[
                              Text("Ketuk Untuk Membuka",
                                  style: TextStyle(
                                      color: Colors.grey, fontSize: 12)),
                              Icon(Icons.arrow_forward_ios_outlined),
                            ],
                          ),
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const aboutUs(),
                              ),
                            );
                          },
                        ),
                      ],
                    ),
                  ),
                  Card(
                    child: ListTile(
                      dense: true,
                      leading: const Icon(
                        Icons.delete_forever_rounded,
                        color: Colors.red,
                        size: 35,
                      ),
                      title: const Text(
                        "Hapus Akun",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 14,
                            color: Colors.red),
                      ),
                      trailing: const Icon(Icons.warning_amber_rounded,
                          color: Colors.red),
                      onTap: () {
                        openDialog();
                      },
                    ),
                  ),
                  Card(
                    child: ListTile(
                      dense: true,
                      leading: const Icon(
                        Icons.logout_outlined,
                        size: 35,
                      ),
                      title: const Text(
                        "Keluar",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 14),
                      ),
                      // trailing: const Icon(Icons.arrow_forward_ios_outlined),
                      onTap: () {
                        deleteDialog();
                      },
                    ),
                  ),
                ],
              ),
            ),
          ],
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

  //! ini ui alertdialog
  Future openDialog() => showDialog(
      context: context,
      builder: (context) => AlertDialog(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
            title: const Text('Warning'),
            content: const Text('Apakah Anda Yakin Ingin Menghapus Akun ?'),
            actions: [
              TextButton(
                  onPressed: () {
                    setState(() {
                      Navigator.pop(context);
                    });
                  },
                  child: const Text('Batal',
                      style: TextStyle(color: Colors.grey, fontSize: 14))),
              TextButton(
                  onPressed: () {
                    delrecord(id);
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const selamatdatang(),
                      ),
                    );
                  },
                  child: Text(
                    "Yakin",
                    style: buttonStyle.copyWith(fontSize: 14),
                  )),
            ],
          ));
  Future deleteDialog() => showDialog(
      context: context,
      builder: (context) => AlertDialog(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
            title: const Text('Warning'),
            content: const Text('Apakah Anda Yakin Ingin Keluar ?'),
            actions: [
              TextButton(
                  onPressed: () {
                    setState(() {
                      Navigator.pop(context);
                    });
                  },
                  child: const Text('Batal',
                      style: TextStyle(color: Colors.grey, fontSize: 14))),
              TextButton(
                  onPressed: () {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const selamatdatang(),
                      ),
                    );
                  },
                  child: Text(
                    "Yakin",
                    style: buttonStyle.copyWith(fontSize: 14),
                  )),
            ],
          ));
  Future<void> delrecord(String id) async {
    print(id);
    try {
      var data = {"id": id};
      String uri = "http://mopgreen.my.id/apiapideluser.php";
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
