import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SnackBarPage extends StatelessWidget {
  const SnackBarPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.indigoAccent),
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
        title: const Text(
          "Snack Bar",
          style: TextStyle(color: Colors.indigoAccent),
        ),
      ),
      body: Center(
        child: ElevatedButton(
            style: ElevatedButton.styleFrom(
                primary: Colors.indigoAccent, fixedSize: const Size(300, 50)),
            onPressed: () {
              Get.snackbar("This  is snackBar", "Snack bar Message Salom dunyo",
                  borderRadius: 20);
            },
            child: const Text("Snack Bar")),
      ),
    );
  }
}
