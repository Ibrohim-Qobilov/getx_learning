import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx/pages/pages.dart';

class NavigatorNamedGetXPage extends StatelessWidget {
  const NavigatorNamedGetXPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.indigoAccent),
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
        title: const Text(
          "Navigator named",
          style: TextStyle(color: Colors.indigoAccent),
        ),
      ),
      body: Center(
        child: ElevatedButton(
            style: ElevatedButton.styleFrom(
                primary: Colors.indigoAccent, fixedSize: const Size(300, 50)),
            onPressed: () {
              Get.to(const NextScreensGetXPage(),
                  arguments: 'Data from Screen',
                  fullscreenDialog: true,
                  transition: Transition.zoom,
                  duration: const Duration(microseconds: 500),
                  // popGesture: true
                  curve: Curves.bounceInOut);
            },
            child: const Text("Navigator named")),
      ),
    );
  }
}

class NextScreensGetXPage extends StatelessWidget {
  const NextScreensGetXPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.indigoAccent),
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
        title: Text(
          "${Get.arguments}",
          style: const TextStyle(color: Colors.indigoAccent),
        ),
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
                style: ElevatedButton.styleFrom(
                    primary: Colors.indigoAccent,
                    fixedSize: const Size(300, 50)),
                onPressed: () {
                  Get.off(Pages());
                },
                child: const Text("Main Page")),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
                style: ElevatedButton.styleFrom(
                    primary: Colors.indigoAccent,
                    fixedSize: const Size(300, 50)),
                onPressed: () {
                  Get.back();
                },
                child: const Text("Back to main")),
          ],
        ),
      ),
    );
  }
}
