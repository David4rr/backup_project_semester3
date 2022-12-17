// ignore_for_file: camel_case_types

part of 'pages.dart';

class aboutUs extends StatelessWidget {
  const aboutUs({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(0xFFF1F2F4),
        appBar: AppBar(
          backgroundColor: button2Color,
          title: const Text("About Us"),
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
        body: GridView.count(
          primary: false,
          padding: const EdgeInsets.all(10),
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
          crossAxisCount: 1,
          childAspectRatio: 4 / 2,
          children: <Widget>[
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.0),
                gradient: const LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    colors: [Color(0xFF16D682), Color(0xFF05BE5E)]),
              ),
              padding: const EdgeInsets.all(15),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: const [
                  AvatarView(
                    radius: 40,
                    avatarType: AvatarType.CIRCLE,
                    backgroundColor: Colors.red,
                    imagePath: "assets/images/AKBR.jpg",
                    placeHolder: Icon(
                      Icons.person,
                      size: 30,
                    ),
                    errorWidget: Icon(
                      Icons.error,
                      size: 30,
                    ),
                  ),
                  SizedBox(
                    height: 25,
                  ),
                  Text(
                    "Akbar Ramadhani Firdaus",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "Project Leader, Web Progammer ",
                    style: TextStyle(
                      fontSize: 11,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.0),
                gradient: const LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    colors: [Color(0xFF16D682), Color(0xFF05BE5E)]),
              ),
              padding: const EdgeInsets.all(15),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: const [
                  AvatarView(
                    radius: 40,
                    avatarType: AvatarType.CIRCLE,
                    backgroundColor: Colors.red,
                    imagePath: "assets/images/Yunanta.jpg",
                    placeHolder: Icon(
                      Icons.person,
                      size: 30,
                    ),
                    errorWidget: Icon(
                      Icons.error,
                      size: 30,
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    "Yunanta Dwi Kristanto",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "Server Administrator, Web Progammer, Mobile Progammer, UI/UX Designer ",
                    style: TextStyle(
                      fontSize: 11,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.0),
                gradient: const LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    colors: [Color(0xFF16D682), Color(0xFF05BE5E)]),
              ),
              padding: const EdgeInsets.all(15),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: const [
                  AvatarView(
                    radius: 40,
                    avatarType: AvatarType.CIRCLE,
                    backgroundColor: Colors.red,
                    imagePath: "assets/images/fahimm.jpg",
                    placeHolder: Icon(
                      Icons.person,
                      size: 30,
                    ),
                    errorWidget: Icon(
                      Icons.error,
                      size: 30,
                    ),
                  ),
                  SizedBox(
                    height: 25,
                  ),
                  Text(
                    "Restu Fahimuroid",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "Embeded System, System Analyst, Software and Hardware Integration ",
                    style: TextStyle(
                      fontSize: 11,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.0),
                gradient: const LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    colors: [Color(0xFF16D682), Color(0xFF05BE5E)]),
              ),
              padding: const EdgeInsets.all(15),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: const [
                  AvatarView(
                    radius: 40,
                    avatarType: AvatarType.CIRCLE,
                    backgroundColor: Colors.red,
                    imagePath: "assets/images/david.png",
                    placeHolder: Icon(
                      Icons.person,
                      size: 30,
                    ),
                    errorWidget: Icon(
                      Icons.error,
                      size: 30,
                    ),
                  ),
                  SizedBox(
                    height: 25,
                  ),
                  Text(
                    "David Arrozaqi",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "Mobile Progammer, UI/UX Designer ",
                    style: TextStyle(
                      fontSize: 11,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.0),
                gradient: const LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    colors: [Color(0xFF16D682), Color(0xFF05BE5E)]),
              ),
              padding: const EdgeInsets.all(15),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: const [
                  AvatarView(
                    radius: 40,
                    avatarType: AvatarType.CIRCLE,
                    backgroundColor: Colors.red,
                    imagePath: "assets/images/fifah.jpg",
                    placeHolder: Icon(
                      Icons.person,
                      size: 30,
                    ),
                    errorWidget: Icon(
                      Icons.error,
                      size: 30,
                    ),
                  ),
                  SizedBox(
                    height: 25,
                  ),
                  Text(
                    "Khofifah Ainurrohmah",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "Mobile Progammer, Software Quality Assurance ",
                    style: TextStyle(
                      fontSize: 11,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
          ],
        ));
  }
}

// part of 'pages.dart';

// class aboutUs extends StatelessWidget {
//   const aboutUs({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         backgroundColor: const Color(0xFFF1F2F4),
//         appBar: AppBar(
//           backgroundColor: button2Color,
//           title: const Text("About Us"),
//           centerTitle: true,
//           leading: Builder(
//             builder: (BuildContext context) {
//               return IconButton(
//                 icon: const Icon(Icons.arrow_back_ios_new_outlined),
//                 onPressed: () {
//                   Navigator.of(context).pop();
//                 },
//               );
//             },
//           ),
//         ),
//         body: GridView.count(
//           primary: false,
//           padding: const EdgeInsets.all(10),
//           crossAxisSpacing: 10,
//           mainAxisSpacing: 10,
//           crossAxisCount: 2,
//           childAspectRatio: 4 / 6,
//           children: <Widget>[
//             Container(
//               decoration: BoxDecoration(
//                 borderRadius: BorderRadius.circular(10.0),
//                 gradient: const LinearGradient(
//                     begin: Alignment.topLeft,
//                     end: Alignment.bottomRight,
//                     colors: [Color(0xFF16D682), Color(0xFF05BE5E)]),
//               ),
//               padding: const EdgeInsets.all(8),
//               child: Column(
//                 mainAxisAlignment: MainAxisAlignment.start,
//                 crossAxisAlignment: CrossAxisAlignment.center,
//                 children: [
//                   Image.asset('assets/images/logo.png', height: 50, width: 50),
//                   const SizedBox(
//                     height: 5,
//                   ),
//                   const Text(
//                     "David Arrozaqi",
//                     style: TextStyle(fontWeight: FontWeight.bold),
//                   ),
//                   const SizedBox(
//                     height: 5,
//                   ),
//                   const Text(
//                     "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially. ",
//                     style: TextStyle(
//                       fontSize: 11,
//                     ),
//                     textAlign: TextAlign.center,
//                   ),
//                 ],
//               ),
//             ),
//             Container(
//               decoration: BoxDecoration(
//                 borderRadius: BorderRadius.circular(10.0),
//                 gradient: const LinearGradient(
//                     begin: Alignment.topLeft,
//                     end: Alignment.bottomRight,
//                     colors: [Color(0xFF16D682), Color(0xFF05BE5E)]),
//               ),
//               padding: const EdgeInsets.all(8),
//               child: Column(
//                 mainAxisAlignment: MainAxisAlignment.start,
//                 crossAxisAlignment: CrossAxisAlignment.center,
//                 children: [
//                   Image.asset('assets/images/logo.png', height: 50, width: 50),
//                   const SizedBox(
//                     height: 5,
//                   ),
//                   const Text(
//                     "David Arrozaqi",
//                     style: TextStyle(fontWeight: FontWeight.bold),
//                   ),
//                   const SizedBox(
//                     height: 5,
//                   ),
//                   const Text(
//                     "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially. ",
//                     style: TextStyle(
//                       fontSize: 11,
//                     ),
//                     textAlign: TextAlign.center,
//                   ),
//                 ],
//               ),
//             ),
//             Container(
//               decoration: BoxDecoration(
//                 borderRadius: BorderRadius.circular(10.0),
//                 gradient: const LinearGradient(
//                     begin: Alignment.topLeft,
//                     end: Alignment.bottomRight,
//                     colors: [Color(0xFF16D682), Color(0xFF05BE5E)]),
//               ),
//               padding: const EdgeInsets.all(8),
//               child: Column(
//                 mainAxisAlignment: MainAxisAlignment.start,
//                 crossAxisAlignment: CrossAxisAlignment.center,
//                 children: [
//                   Image.asset('assets/images/logo.png', height: 50, width: 50),
//                   const SizedBox(
//                     height: 5,
//                   ),
//                   const Text(
//                     "David Arrozaqi",
//                     style: TextStyle(fontWeight: FontWeight.bold),
//                   ),
//                   const SizedBox(
//                     height: 5,
//                   ),
//                   const Text(
//                     "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially. ",
//                     style: TextStyle(
//                       fontSize: 11,
//                     ),
//                     textAlign: TextAlign.center,
//                   ),
//                 ],
//               ),
//             ),
//             Container(
//               decoration: BoxDecoration(
//                 borderRadius: BorderRadius.circular(10.0),
//                 gradient: const LinearGradient(
//                     begin: Alignment.topLeft,
//                     end: Alignment.bottomRight,
//                     colors: [Color(0xFF16D682), Color(0xFF05BE5E)]),
//               ),
//               padding: const EdgeInsets.all(8),
//               child: Column(
//                 mainAxisAlignment: MainAxisAlignment.start,
//                 crossAxisAlignment: CrossAxisAlignment.center,
//                 children: [
//                   Image.asset('assets/images/logo.png', height: 50, width: 50),
//                   const SizedBox(
//                     height: 5,
//                   ),
//                   const Text(
//                     "David Arrozaqi",
//                     style: TextStyle(fontWeight: FontWeight.bold),
//                   ),
//                   const SizedBox(
//                     height: 5,
//                   ),
//                   const Text(
//                     "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially. ",
//                     style: TextStyle(
//                       fontSize: 11,
//                     ),
//                     textAlign: TextAlign.center,
//                   ),
//                 ],
//               ),
//             ),
//             Container(
//               decoration: BoxDecoration(
//                 borderRadius: BorderRadius.circular(10.0),
//                 gradient: const LinearGradient(
//                     begin: Alignment.topLeft,
//                     end: Alignment.bottomRight,
//                     colors: [Color(0xFF16D682), Color(0xFF05BE5E)]),
//               ),
//               padding: const EdgeInsets.all(8),
//               child: Column(
//                 mainAxisAlignment: MainAxisAlignment.start,
//                 crossAxisAlignment: CrossAxisAlignment.center,
//                 children: [
//                   Image.asset('assets/images/logo.png', height: 50, width: 50),
//                   const SizedBox(
//                     height: 5,
//                   ),
//                   const Text(
//                     "David Arrozaqi",
//                     style: TextStyle(fontWeight: FontWeight.bold),
//                   ),
//                   const SizedBox(
//                     height: 5,
//                   ),
//                   const Text(
//                     "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially. ",
//                     style: TextStyle(
//                       fontSize: 11,
//                     ),
//                     textAlign: TextAlign.center,
//                   ),
//                 ],
//               ),
//             ),
//           ],
//         ));
//   }
// }
