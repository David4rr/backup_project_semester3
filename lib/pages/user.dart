// ignore_for_file: camel_case_types

part of 'pages.dart';

class userPage extends StatefulWidget {
  const userPage({Key? key}) : super(key: key);

  @override
  State<userPage> createState() => _userPageState();
}

class _userPageState extends State<userPage> {
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
                    "David Arrozaqi",
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
                            "Map Greenhouse",
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
                            "About Us",
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
                        "Hapus Account",
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
                        "Log Out",
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
}
