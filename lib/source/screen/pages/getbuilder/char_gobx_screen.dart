import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:messages/services/images.dart';
import 'package:messages/source/controller/chat_builder_controller.dart';
import '../../../../services/all_size.dart';
import '../../../../services/styles.dart';
import 'inbox_gobx_screen.dart';

class Chat_GetBuilder_Screen extends StatefulWidget {
  const Chat_GetBuilder_Screen({Key? key}) : super(key: key);

  @override
  State<Chat_GetBuilder_Screen> createState() => _Chat_GetBuilder_ScreenState();
}

class _Chat_GetBuilder_ScreenState extends State<Chat_GetBuilder_Screen> {

  GlobalKey textKey = GlobalKey<FormState>();
  TextEditingController searchController = TextEditingController();
  String search = "";
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Get.put(ChatGetBuilderController());
    Get.find<ChatGetBuilderController>().getChatObxList();
  }

  @override
  Widget build(BuildContext context) {
    return GetBuilder<ChatGetBuilderController>(
      init: ChatGetBuilderController(),
      builder: (objects){
        return Scaffold(
          backgroundColor: Colors.white,
          appBar: AppBar(
            backgroundColor: Colors.white,
            elevation: 0,
            title: const Text("Messages", style: TextStyle(fontSize: 16, color: Colors.black, fontWeight: FontWeight.bold),),
            leading: IconButton(
              splashColor: Colors.transparent,
              highlightColor: Colors.transparent,
              hoverColor: Colors.transparent,
              focusColor: Colors.transparent,
              onPressed: (){},
              icon: const Icon(Icons.arrow_back_ios, color: Colors.black,),
            ),
            actions: [
              IconButton(
                splashColor: Colors.transparent,
                highlightColor: Colors.transparent,
                hoverColor: Colors.transparent,
                focusColor: Colors.transparent,
                onPressed: (){},
                icon: const Icon(Icons.open_in_new, color: Colors.black,),),
              const SizedBox(width: 10,),
            ],
          ),
          body: ListView(
            physics: const NeverScrollableScrollPhysics(),
            children: [
              Padding(
                padding: const EdgeInsets.all(10),
                child: Row(
                  children: [
                    Expanded(
                      child: SizedBox(
                        height: 45,
                        child: TextField(
                          controller: searchController,
                          decoration: const InputDecoration(
                            hintText: "Search",
                            hintStyle: TextStyle(fontSize: 16, color: Colors.grey),
                            contentPadding: EdgeInsets.symmetric(horizontal: 30),
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.all(Radius.circular(5)),
                              borderSide: BorderSide(color: Colors.grey),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.all(Radius.circular(5)),
                              borderSide: BorderSide(color: Colors.grey),
                            ),
                            prefixIcon: Icon(Icons.search, color: Colors.grey,),
                          ),
                          onChanged: (text){
                            objects.onInboxSearch(text);
                          },
                        ),
                      ),
                    ),
                    SizedBox(width: 10,),
                    Container(
                      height: 42,
                      width: 42,
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey),
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: Icon(Icons.tune_outlined, color: Colors.grey,),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 20,),
              NotificationListener<OverscrollIndicatorNotification>(
                onNotification: (overScroll){
                  overScroll.disallowIndicator();
                  return true;
                },
                child: SizedBox(
                  height: MediaQuery.of(context).size.height - 175,
                  width: MediaQuery.of(context).size.width,
                  child: (objects.inboxSearchList.isNotEmpty || searchController.text.isNotEmpty) ? objects.inboxSearchList.isEmpty
                      ? Container(child: Center(child: Column(
                        children: [
                          Image.asset(Images.NotFound),
                          Text("Not Found"),
                        ],
                      )),)
                      : ListView.builder(
                      itemCount: objects.inboxSearchList.length,
                      itemBuilder: (BuildContext context, int index){
                        return InkWell(
                          splashColor: Colors.transparent,
                          highlightColor: Colors.transparent,
                          hoverColor: Colors.transparent,
                          focusColor: Colors.transparent,
                          onTap: (){
                            Get.to(Inbox_Getbuilder_Screen(chatGetbuilderModel: objects.inboxSearchList[index],));
                          },
                          child: Padding(
                            padding: const EdgeInsets.only(top: 10, left: 10),
                            child: SizedBox(
                              width: MediaQuery.of(context).size.width,
                              child: Row(
                                children: [
                                  ClipRRect(
                                      borderRadius: BorderRadius.circular(100),
                                      child: Image.asset("${objects.inboxSearchList[index].image}", fit: BoxFit.cover, height: 60, width: 60,)),
                                  const SizedBox(width: 10,),
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text("${objects.inboxSearchList[index].username}", style: heeboBold.copyWith(color: Colors.black, fontSize: AllSizes.fontSizeExtraLarge),),
                                      const SizedBox(height: 3,),
                                      Text("${objects.inboxSearchList[index].subtitle}", style: heebooReguler.copyWith(color: Colors.black, fontSize: AllSizes.fontSizeDefault),),
                                    ],
                                  )
                                ],
                              ),
                            ),
                          ),
                        );
                      })
                      : ListView.builder(
                      itemCount: objects.chatBuilderDataList.length,
                      itemBuilder: (BuildContext context, int index){
                        return InkWell(
                          splashColor: Colors.transparent,
                          highlightColor: Colors.transparent,
                          hoverColor: Colors.transparent,
                          focusColor: Colors.transparent,
                          onTap: (){
                            Get.to(Inbox_Getbuilder_Screen(chatGetbuilderModel: objects.chatBuilderDataList[index],));
                          },
                          child: Padding(
                            padding: const EdgeInsets.only(top: 10, left: 10),
                            child: SizedBox(
                              width: MediaQuery.of(context).size.width,
                              child: Row(
                                children: [
                                  ClipRRect(
                                      borderRadius: BorderRadius.circular(100),
                                      child: Image.asset("${objects.chatBuilderDataList[index].image}", fit: BoxFit.cover, height: 60, width: 60,)),
                                  const SizedBox(width: 10,),
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text("${objects.chatBuilderDataList[index].username}", style: heeboBold.copyWith(color: Colors.black, fontSize: AllSizes.fontSizeExtraLarge),),
                                      const SizedBox(height: 3,),
                                      Text("${objects.chatBuilderDataList[index].subtitle}", style: heebooReguler.copyWith(color: Colors.black, fontSize: AllSizes.fontSizeDefault),),
                                    ],
                                  )
                                ],
                              ),
                            ),
                          ),
                        );
                      }),
                ),
              ),
            ],
          ),
        );
      }
    );
  }
}