// ignore_for_file: camel_case_types

part of 'pages.dart';

class profilPage extends StatefulWidget {
  const profilPage({Key? key}) : super(key: key);

  @override
  State<profilPage> createState() => _profilPageState();
}

class _profilPageState extends State<profilPage> {
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
          const Card(
            margin: EdgeInsets.all(8),
            child: ListTile(
              contentPadding: EdgeInsets.all(20),
              leading: Text("Foto Profil Saya"),
              trailing: AvatarView(
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
                  leading: const Text("Nama Panggilan",
                      style: TextStyle(fontWeight: FontWeight.w500)),
                  trailing: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: const <Widget>[
                      Text("David Arrozaqi",
                          style: TextStyle(color: Colors.grey, fontSize: 12)),
                      Icon(Icons.arrow_forward_ios_outlined),
                    ],
                  ),
                ),
                const Divider(
                  color: Colors.black26,
                ),
                ListTile(
                  dense: true,
                  leading: const Text("Status",
                      style: TextStyle(fontWeight: FontWeight.w500)),
                  trailing: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: const <Widget>[
                      Text("Mahasiswa",
                          style: TextStyle(color: Colors.grey, fontSize: 12)),
                      Icon(Icons.arrow_forward_ios_outlined),
                    ],
                  ),
                ),
                const Divider(
                  color: Colors.black26,
                ),
                ListTile(
                  dense: true,
                  leading: const Text("Jenis Kelamin",
                      style: TextStyle(fontWeight: FontWeight.w500)),
                  trailing: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: const <Widget>[
                      Text("Laki-Laki",
                          style: TextStyle(color: Colors.grey, fontSize: 12)),
                      Icon(Icons.arrow_forward_ios_outlined),
                    ],
                  ),
                ),
                const Divider(
                  color: Colors.black26,
                ),
                ListTile(
                  dense: true,
                  leading: const Text("Usia",
                      style: TextStyle(fontWeight: FontWeight.w500)),
                  trailing: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: const <Widget>[
                      Text("19 Tahun",
                          style: TextStyle(color: Colors.grey, fontSize: 12)),
                      Icon(Icons.arrow_forward_ios_outlined),
                    ],
                  ),
                ),
                const Divider(
                  color: Colors.black26,
                ),
                ListTile(
                  dense: true,
                  leading: const Text("Nomor Handphone",
                      style: TextStyle(fontWeight: FontWeight.w500)),
                  trailing: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: const <Widget>[
                      Text("081455165124",
                          style: TextStyle(color: Colors.grey, fontSize: 12)),
                      Icon(Icons.arrow_forward_ios_outlined),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
