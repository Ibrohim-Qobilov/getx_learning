import 'package:flutter/material.dart';
import 'package:get/get.dart';

class BottomSheetGetXPage extends StatelessWidget {
  const BottomSheetGetXPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // leading:  IconButton(onPressed: (){Get.back();}, icon: const Icon(Icons.arrow_back_ios_new)),
        iconTheme: const IconThemeData(color: Colors.indigoAccent),
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
        title: const Text(
          "Bottom Sheet",
          style: TextStyle(color: Colors.indigoAccent),
        ),
      ),
      body: Center(
        child: ElevatedButton(
            style: ElevatedButton.styleFrom(
                primary: Colors.indigoAccent, fixedSize: const Size(300, 50)),
            onPressed: () {
              // Get.isDarkMode ? Get.changeTheme(ThemeData.dark()) : Get.changeTheme(ThemeData.light());
              Get.bottomSheet(
                Container(
                
                  child: Wrap(
                    children: <Widget> [
                      ListTile(
                        leading: const Icon(Icons.wb_sunny_outlined),
                        title: const Text("Light Theme"),
                        onTap: (){  Get.changeTheme(ThemeData.light());},
                      ),
                      ListTile(
                        leading: const Icon(Icons.wb_sunny),
                        title: const Text("Night Theme"),
                        onTap: () {Get.changeTheme(ThemeData.dark());},
                      ),
                    ],
                  ),
                ),
              );
            },
            child: const Text("Bottom Sheet")),
      ),
    );
  }
}
