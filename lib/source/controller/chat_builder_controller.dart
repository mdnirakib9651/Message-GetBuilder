import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:messages/source/model/response/chat_builder_model.dart';
import '../model/request/chat_builder_repo.dart';

class ChatGetBuilderController extends GetxController implements GetxService{
  ChatBuilderRepository chatBuilderRepository = ChatBuilderRepository();

  List<ChatGetbuilderModel> _chatBuilderDataList = [];
  List<ChatGetbuilderModel> get chatBuilderDataList => _chatBuilderDataList;

  List<ChatGetbuilderModel> _inboxSearchList = [];
  List<ChatGetbuilderModel> get inboxSearchList => _inboxSearchList;

  Future<Response> getChatObxList() async{
    Response response = await chatBuilderRepository.getChatObxListData();
    if(response.statusCode == 200){
      _chatBuilderDataList = [];
      _chatBuilderDataList.addAll(response.body);
    } else{
      debugPrint("Nothing to Found");
    }
    update();
    return response;
  }

  onInboxSearch(String text) async {
    _inboxSearchList = [];
    if(text.isEmpty){
      update();
    }
    for(var data in _chatBuilderDataList){
      if(data.username!.toLowerCase().contains(text)){
        _inboxSearchList.add(data);
      }
    }
    debugPrint("${_inboxSearchList}");
    update();
  }
}