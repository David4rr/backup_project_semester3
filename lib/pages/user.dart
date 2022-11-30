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
    return Scaffold(
      backgroundColor: const Color(0xFFF1F2F4),
      body: Column(
        children: [
          Container(
            width: 414,
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
                      ),
                      const Divider(color: Colors.black26),
                      ListTile(
                        dense: true,
                        leading: const Icon(
                          Icons.book_online_outlined,
                          size: 35,
                        ),
                        title: const Text(
                          "About",
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
                      ),
                    ],
                  ),
                ),
                // Divider(
                //   color: Colors.black,
                // ),

                // Divider(
                //   color: Colors.black,
                // ),
                Card(
                  child: ListTile(
                    dense: true,
                    leading: const Icon(
                      Icons.logout_outlined,
                      size: 35,
                    ),
                    title: const Text(
                      "Log Out",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 14),
                    ),
                    trailing: const Icon(Icons.arrow_forward_ios_outlined),
                    onTap: () {
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const selamatdatang(),
                        ),
                      );
                    },
                  ),
                ),
                // Divider(
                //   color: Colors.black,
                // ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
