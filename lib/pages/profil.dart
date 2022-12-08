// ignore_for_file: camel_case_types, avoid_print

part of 'pages.dart';

class profilPage extends StatefulWidget {
  const profilPage({Key? key}) : super(key: key);

  @override
  State<profilPage> createState() => _profilPageState();
}

class _profilPageState extends State<profilPage> {
  late TextEditingController controller;

  String namaDepan = '';
  String namaBelakang = '';
  String asalInstitusi = '';
  String kegiatan = '';
  String email = '';

  @override
  void initState() {
    super.initState();

    controller = TextEditingController();
  }

  @override
  void dispose() {
    controller.dispose();

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
                    final namaDepan = await openDialog();
                    if (namaDepan == null || namaDepan.isEmpty) return;

                    setState(() => this.namaDepan = namaDepan);
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
                    final namaBelakang = await openDialog2();
                    if (namaBelakang == null || namaBelakang.isEmpty) return;

                    setState(() => this.namaBelakang = namaBelakang);
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
                    final asalInstitusi = await openDialog3();
                    if (asalInstitusi == null || asalInstitusi.isEmpty) return;

                    setState(() => this.asalInstitusi = asalInstitusi);
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
                    final kegiatan = await openDialog4();
                    if (kegiatan == null || kegiatan.isEmpty) return;

                    setState(() => this.kegiatan = kegiatan);
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
                    final email = await openDialog5();
                    if (email == null || email.isEmpty) return;

                    setState(() => this.email = email);
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
    Navigator.of(context).pop(controller.text);

    controller.clear();
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
              controller: controller,
            ),
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
                  onPressed: submit,
                  child: Text(
                    "Tentukan",
                    style: buttonStyle.copyWith(fontSize: 14),
                  )),
            ],
          ));

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
              controller: controller,
            ),
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
                  onPressed: submit,
                  child: Text(
                    "Tentukan",
                    style: buttonStyle.copyWith(fontSize: 14),
                  )),
            ],
          ));
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
              controller: controller,
            ),
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
                  onPressed: submit,
                  child: Text(
                    "Tentukan",
                    style: buttonStyle.copyWith(fontSize: 14),
                  )),
            ],
          ));
  Future<String?> openDialog5() => showDialog<String>(
      context: context,
      builder: (context) => AlertDialog(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
            content: TextField(
              maxLength: 40,
              autofocus: true,
              decoration: const InputDecoration(hintText: 'Masukan Email Anda'),
              controller: controller,
            ),
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
                  onPressed: submit,
                  child: Text(
                    "Tentukan",
                    style: buttonStyle.copyWith(fontSize: 14),
                  )),
            ],
          ));
}
