import 'package:get/get.dart';

import '../response/chat_builder_model.dart';

class ChatBuilderRepository{

  Future<Response> getChatObxListData() async{
    try{
      List<ChatGetbuilderModel> ChatObxList = [
        ChatGetbuilderModel(1, "assets/images/Rakib.jpeg", "Md.Nazrul Islam Rakib", "This is message body"),
        ChatGetbuilderModel(1, "assets/images/Rakib.jpeg", "Shek Farid Uddin Robin", "This is message body"),
        ChatGetbuilderModel(1, "assets/images/Rakib.jpeg", "Ifthekhar Hasan", "10 Minit ago"),
        ChatGetbuilderModel(1, "assets/images/Rakib.jpeg", "Kamrul Islam", "This is message body"),
        ChatGetbuilderModel(1, "assets/images/Rakib.jpeg", "Bishogit Chondro Das", "5 Minit ago"),
        ChatGetbuilderModel(1, "assets/images/Rakib.jpeg", "Imteaj Mahie", "This is message body"),
        ChatGetbuilderModel(1, "assets/images/Rakib.jpeg", "Nazmul Islam Sakib", "1 Minit ago"),
        ChatGetbuilderModel(1, "assets/images/Rakib.jpeg", "Farhan Tanvir Chowdhury", "This is message body"),
        ChatGetbuilderModel(1, "assets/images/Rakib.jpeg", "Shafayet Hosain Emon", "This is message body"),
        ChatGetbuilderModel(1, "assets/images/Rakib.jpeg", "Abu Noman Rakib", "Not Active"),
        ChatGetbuilderModel(1, "assets/images/Rakib.jpeg", "Mahin Niham", "This is message body"),
        ChatGetbuilderModel(1, "assets/images/Rakib.jpeg", "Md.Nazrul Islam Rakib", "This is message body"),
        ChatGetbuilderModel(1, "assets/images/Rakib.jpeg", "Md.Nazrul Islam Rakib", "This is message body"),
        ChatGetbuilderModel(1, "assets/images/Rakib.jpeg", "Md.Nazrul Islam Rakib", "This is message body"),
        ChatGetbuilderModel(1, "assets/images/Rakib.jpeg", "Md.Nazrul Islam Rakib", "This is message body"),
        ChatGetbuilderModel(1, "assets/images/Rakib.jpeg", "Md.Nazrul Islam Rakib", "This is message body"),
        ChatGetbuilderModel(1, "assets/images/Rakib.jpeg", "Md.Nazrul Islam Rakib", "This is message body"),
        ChatGetbuilderModel(1, "assets/images/Rakib.jpeg", "Md.Nazrul Islam Rakib", "This is message body"),
        ChatGetbuilderModel(1, "assets/images/Rakib.jpeg", "Md.Nazrul Islam Rakib", "This is message body"),
        ChatGetbuilderModel(1, "assets/images/Rakib.jpeg", "Md.Rakib", "This is message body"),
      ];
      Response chatObxResponse = Response(body: ChatObxList, statusCode: 200);
      return chatObxResponse;
    }catch (e){
      return Response(statusCode: 500, statusText: "Data Not Found");
    }
  }
}
