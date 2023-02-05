

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:messages/services/all_size.dart';
import 'package:messages/services/styles.dart';
import 'package:messages/source/model/response/chat_builder_model.dart';

class Inbox_Getbuilder_Screen extends StatefulWidget {

  ChatGetbuilderModel chatGetbuilderModel;
  Inbox_Getbuilder_Screen({Key? key, required this.chatGetbuilderModel}) : super(key: key);

  @override
  State<Inbox_Getbuilder_Screen> createState() => _Inbox_Getbuilder_ScreenState();
}

class _Inbox_Getbuilder_ScreenState extends State<Inbox_Getbuilder_Screen> {

  final textController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 1,
        toolbarHeight: 65,
        leading: IconButton(
          splashColor: Colors.transparent,
          highlightColor: Colors.transparent,
          hoverColor: Colors.transparent,
          focusColor: Colors.transparent,
          onPressed: (){
            Get.back();
          },
          icon: const Icon(Icons.arrow_back_ios, color: Colors.black,),
        ),
        title: Row(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(100),
                child: Image.asset("${widget.chatGetbuilderModel.image}", height: 40, width: 40, fit: BoxFit.cover,)),
            const SizedBox(width: 10,),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("${widget.chatGetbuilderModel.username}", style: heeboBold.copyWith(color: Colors.black, fontSize: AllSizes.fontSizeExtraLarge),),
                Text("Active now", style: heeboLight.copyWith(color: Colors.grey, fontSize: AllSizes.fontSizeDefault),),
              ],
            ),
          ],
        ),
      ),
      body: Column(
        children: [
          Expanded(
            child: Column(
              children: [
                const SizedBox(height: 30,),
                Center(
                    child: ClipRRect(
                        borderRadius: BorderRadius.circular(100),
                        child: Image.asset("${widget.chatGetbuilderModel.image}", height: 70, width: 70, fit: BoxFit.cover,))),
                const SizedBox(height: 10,),
                Text("${widget.chatGetbuilderModel.username}", style: heeboBold.copyWith(color: Colors.black, fontSize: AllSizes.fontSizeOverLarge),),
                Text("App Developer", style: heeboLight.copyWith(color: Colors.grey, fontSize: AllSizes.fontSizeLarge),),
                InkWell(
                    splashColor: Colors.transparent,
                    highlightColor: Colors.transparent,
                    hoverColor: Colors.transparent,
                    focusColor: Colors.transparent,
                    onTap: (){},
                    child: Text("View profile",style: heeboBold.copyWith(color: Colors.blue, fontSize: AllSizes.fontSizeLarge),)),
              ],
            ),
          ),
          Row(
            children: [
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(10),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(60),
                      color: Colors.grey[200],
                    ),
                    child: Row(
                      children: [
                        SizedBox(width: 20,),
                        InkWell(
                          onTap: (){},
                          child: Icon(Icons.camera_alt_outlined, color: Colors.grey[600],),),
                         Expanded(
                          child: SizedBox(
                            height: 50,
                            child: Padding(
                              padding: const EdgeInsets.only(top: 6, bottom: 6),
                              child: TextField(
                                keyboardType: TextInputType.multiline,
                                maxLines: null,
                                controller: textController,
                                decoration: InputDecoration(
                                  filled: true,
                                  fillColor: Colors.grey[200],
                                  contentPadding: EdgeInsets.symmetric(horizontal: 10),
                                  hintText: 'Message',
                                  enabledBorder: OutlineInputBorder(
                                    borderSide: BorderSide.none,
                                    borderRadius: BorderRadius.circular(50),
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                    borderSide: BorderSide.none,
                                    borderRadius: BorderRadius.circular(50),
                                  ),
                                ),

                              ),
                            ),
                          ),
                        ),
                        InkWell(
                          onTap: (){},
                          child: Icon(Icons.keyboard_voice_outlined, color: Colors.grey[600],),),
                        const SizedBox(width: 10,),
                        InkWell(
                          onTap: (){},
                          child: Icon(Icons.image_outlined, color: Colors.grey[600],),),
                        const SizedBox(width: 10,),
                        InkWell(
                            onTap: (){},
                            child: Icon(Icons.emoji_emotions_outlined, color: Colors.grey[600],)),
                        const SizedBox(width: 10,),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(width: 5,),
              InkWell(
                  splashColor: Colors.transparent,
                  highlightColor: Colors.transparent,
                  hoverColor: Colors.transparent,
                  focusColor: Colors.transparent,
                  onTap: (){},
                  child: Icon(Icons.send, color: Colors.grey[600],)),
              const SizedBox(width: 15,),
            ],
          ),
        ],
      ),
    );
  }
}
