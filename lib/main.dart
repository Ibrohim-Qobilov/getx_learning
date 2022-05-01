import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'pages/pages.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Get X',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home:  Pages(),
      // initialRoute: '/',
      // defaultTransition: Transition.zoom,
      // getPages: [
      //   GetPage(name: '/', page: () => Pages()),
      //   GetPage(name: '/snackBar', page: () => const SnackBarPage(), ),
        
        
      // ],
    );
  }
}


