import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'source/screen/elevated_button.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: ElevatedButtons(),
      // initialRoute: "/EleButton",
      // getPages: [
      //   GetPage(name: "/EleButton", page: () => ElevatedButtons()),
      // ],
    );
  }
}
