import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:messages/source/screen/pages/Obx/chat_gobx_screen.dart';
import 'package:messages/source/screen/pages/getbuilder/char_gobx_screen.dart';

class ElevatedButtons extends StatefulWidget {
  const ElevatedButtons({Key? key}) : super(key: key);

  @override
  State<ElevatedButtons> createState() => _ElevatedButtonsState();
}

class _ElevatedButtonsState extends State<ElevatedButtons> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: 50,),
            InkWell(
              onTap: (){
                Get.to(Chat_GetBuilder_Screen());
              },
              child: Container(
                height: 50,
                color: Colors.purple,
                width: MediaQuery.of(context).size.width,
                child: Center(child: Text("Obx", style: TextStyle(fontSize: 18, color: Colors.white),)),
              ),
            )
          ],
        ),
      ),
    );
  }
}

