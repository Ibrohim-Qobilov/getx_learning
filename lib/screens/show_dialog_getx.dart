import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ShowDialogGetXPAge extends StatelessWidget {
  const ShowDialogGetXPAge({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.indigoAccent),
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
        title: const Text(
          "Show dialog",
          style: TextStyle(color: Colors.indigoAccent),
        ),
      ),
      body: Center(
        child: ElevatedButton(
            style: ElevatedButton.styleFrom(
                primary: Colors.indigoAccent, fixedSize: const Size(300, 50)),
            onPressed: () {
              Get.defaultDialog(
                title: "Sow Dialog ",
                middleText: "This  is Show dialog",
                middleTextStyle: const TextStyle(color: Colors.white),
                backgroundColor: Colors.indigoAccent,
                buttonColor: Colors.greenAccent,
                radius: 40,
                textCancel: "Cencel",
                cancelTextColor: Colors.blue,
                textConfirm: 'OK',
                titlePadding: const EdgeInsets.all(10),
                onConfirm: (){},
                onCancel: (){},
                // content: Row(children: [CircularProgressIndicator(), Text("Text")],)
                // cancel: ElevatedButton(onPressed: (){}, child: Text("orqaga"))
                // actions: [
                //   ElevatedButton(
                //     onPressed: () {},
                //     child: const Text("Cencel"),
                //   ),
                //   ElevatedButton(
                //     onPressed: () {},
                //     child: const Text("OK"),
                //   ),
                // ],
              );
            },
            child: const Text("Show dialog")),
      ),
    );
  }
}
