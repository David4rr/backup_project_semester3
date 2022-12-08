// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';
import 'package:mop_green/shared/shared.dart';

class namaDepan extends StatefulWidget {
  const namaDepan({Key? key}) : super(key: key);

  @override
  State<namaDepan> createState() => _namaDepanState();
}

class _namaDepanState extends State<namaDepan> {
  late TextEditingController controller;
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
    return const Scaffold();
  }

  Future<String?> openDialog() => showDialog<String>(
      context: context,
      builder: (context) => AlertDialog(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
            content: TextField(
              autofocus: true,
              decoration: const InputDecoration(hintText: 'Masukan Nama Anda'),
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
    //!Jika ingin mengedit tanpa nama di textfield bisa aktifkan kode di bawah ini!!!
    // controller.clear();
  }
}
