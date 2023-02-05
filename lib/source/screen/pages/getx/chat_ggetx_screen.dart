// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import '../../../../services/all_size.dart';
// import '../../../../services/styles.dart';
// import '../Obx/inbox_gobx_screen.dart';
// import 'inbox_ggetx_screen.dart';
//
// class Chat_gGetX_Screen extends StatefulWidget {
//   const Chat_gGetX_Screen({Key? key}) : super(key: key);
//
//   @override
//   State<Chat_gGetX_Screen> createState() => _Chat_gGetX_ScreenState();
// }
//
// class _Chat_gGetX_ScreenState extends State<Chat_gGetX_Screen> {
//
//   GlobalKey textKey = GlobalKey<FormState>();
//   TextEditingController searchController = TextEditingController();
//   String search = "";
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.white,
//       appBar: AppBar(
//         backgroundColor: Colors.white,
//         elevation: 0,
//         title: const Text("Messages", style: TextStyle(fontSize: 16, color: Colors.black, fontWeight: FontWeight.bold),),
//         leading: IconButton(
//           splashColor: Colors.transparent,
//           highlightColor: Colors.transparent,
//           hoverColor: Colors.transparent,
//           focusColor: Colors.transparent,
//           onPressed: (){},
//           icon: const Icon(Icons.arrow_back_ios, color: Colors.black,),
//         ),
//         actions: [
//           IconButton(
//             splashColor: Colors.transparent,
//             highlightColor: Colors.transparent,
//             hoverColor: Colors.transparent,
//             focusColor: Colors.transparent,
//             onPressed: (){},
//             icon: const Icon(Icons.open_in_new, color: Colors.black,),),
//           const SizedBox(width: 10,),
//         ],
//       ),
//       body: ListView(
//         physics: const NeverScrollableScrollPhysics(),
//         children: [
//           Padding(
//             padding: const EdgeInsets.all(10),
//             child: Row(
//               children: [
//                 Expanded(
//                   child: SizedBox(
//                     height: 45,
//                     child: TextFormField(
//                       controller: searchController,
//                       decoration: const InputDecoration(
//                           hintText: "Search",
//                         hintStyle: TextStyle(fontSize: 16, color: Colors.grey),
//                         contentPadding: EdgeInsets.symmetric(horizontal: 30),
//                         enabledBorder: OutlineInputBorder(
//                           borderRadius: BorderRadius.all(Radius.circular(5)),
//                           borderSide: BorderSide(color: Colors.grey),
//                         ),
//                         focusedBorder: OutlineInputBorder(
//                           borderRadius: BorderRadius.all(Radius.circular(5)),
//                           borderSide: BorderSide(color: Colors.grey),
//                         ),
//                         prefixIcon: Icon(Icons.search, color: Colors.grey,),
//                       ),
//                       onChanged: (value){
//                         print(value);
//                         setState(() {
//                           search = value.toString();
//                         });
//                       },
//                     ),
//                   ),
//                 ),
//                 SizedBox(width: 10,),
//                 Container(
//                   height: 42,
//                   width: 42,
//                   decoration: BoxDecoration(
//                     border: Border.all(color: Colors.grey),
//                     borderRadius: BorderRadius.circular(5),
//                   ),
//                   child: Icon(Icons.tune_outlined, color: Colors.grey,),
//                 ),
//               ],
//             ),
//           ),
//           const SizedBox(height: 20,),
//           NotificationListener<OverscrollIndicatorNotification>(
//             onNotification: (overScroll){
//               overScroll.disallowIndicator();
//               return true;
//             },
//             child: SizedBox(
//               height: MediaQuery.of(context).size.height - 175,
//               width: MediaQuery.of(context).size.width,
//               child: ListView.builder(
//                 itemCount: 20,
//                   itemBuilder: (BuildContext context, int index){
//                   late String position = index.toString();
//                   if(searchController.text.isEmpty){
//                     return InkWell(
//                       splashColor: Colors.transparent,
//                       highlightColor: Colors.transparent,
//                       hoverColor: Colors.transparent,
//                       focusColor: Colors.transparent,
//                       onTap: (){
//                         Get.to(const Inbox_gObx_Screen());
//                       },
//                       child: Padding(
//                         padding: const EdgeInsets.only(top: 10, left: 10),
//                         child: SizedBox(
//                           width: MediaQuery.of(context).size.width,
//                           child: Row(
//                             children: [
//                               Container(
//                                 height: 60,
//                                 width: 60,
//                                 decoration: const BoxDecoration(
//                                   shape: BoxShape.circle,
//                                   color: Colors.red,
//                                 ),
//                               ),
//                               const SizedBox(width: 10,),
//                               Column(
//                                 mainAxisAlignment: MainAxisAlignment.center,
//                                 crossAxisAlignment: CrossAxisAlignment.start,
//                                 children: [
//                                   Text("Cody Fisher", style: heeboBold.copyWith(color: Colors.black, fontSize: AllSizes.fontSizeExtraLarge),),
//                                   const SizedBox(height: 3,),
//                                   Text("This is message body", style: heebooReguler.copyWith(color: Colors.black, fontSize: AllSizes.fontSizeDefault),),
//                                 ],
//                               )
//                             ],
//                           ),
//                         ),
//                       ),
//                     );
//                   }
//                   else if (position.toString().contains(searchController.text.toString())){
//                     return InkWell(
//                       splashColor: Colors.transparent,
//                       highlightColor: Colors.transparent,
//                       hoverColor: Colors.transparent,
//                       focusColor: Colors.transparent,
//                       onTap: (){
//                         Get.to(const Inbox_gObx_Screen());
//                       },
//                       child: Padding(
//                         padding: const EdgeInsets.only(top: 10, left: 10),
//                         child: SizedBox(
//                           width: MediaQuery.of(context).size.width,
//                           child: Row(
//                             children: [
//                               Container(
//                                 height: 60,
//                                 width: 60,
//                                 decoration: const BoxDecoration(
//                                   shape: BoxShape.circle,
//                                   color: Colors.red,
//                                 ),
//                               ),
//                               const SizedBox(width: 10,),
//                               Column(
//                                 mainAxisAlignment: MainAxisAlignment.center,
//                                 crossAxisAlignment: CrossAxisAlignment.start,
//                                 children: [
//                                   Text("Cody Fisher", style: heeboBold.copyWith(color: Colors.black, fontSize: AllSizes.fontSizeExtraLarge),),
//                                   const SizedBox(height: 3,),
//                                   Text("This is message body", style: heebooReguler.copyWith(color: Colors.black, fontSize: AllSizes.fontSizeDefault),),
//                                 ],
//                               )
//                             ],
//                           ),
//                         ),
//                       ),
//                     );
//                   }
//                   else if (position.toLowerCase().contains(searchController.text.toLowerCase())){
//                     return InkWell(
//                       splashColor: Colors.transparent,
//                       highlightColor: Colors.transparent,
//                       hoverColor: Colors.transparent,
//                       focusColor: Colors.transparent,
//                       onTap: (){
//                         Get.to(const Inbox_gObx_Screen());
//                       },
//                       child: Padding(
//                         padding: const EdgeInsets.only(top: 10, left: 10),
//                         child: SizedBox(
//                           width: MediaQuery.of(context).size.width,
//                           child: Row(
//                             children: [
//                               Container(
//                                 height: 60,
//                                 width: 60,
//                                 decoration: const BoxDecoration(
//                                   shape: BoxShape.circle,
//                                   color: Colors.red,
//                                 ),
//                               ),
//                               const SizedBox(width: 10,),
//                               Column(
//                                 mainAxisAlignment: MainAxisAlignment.center,
//                                 crossAxisAlignment: CrossAxisAlignment.start,
//                                 children: [
//                                   Text("Cody Fisher", style: heeboBold.copyWith(color: Colors.black, fontSize: AllSizes.fontSizeExtraLarge),),
//                                   const SizedBox(height: 3,),
//                                   Text("This is message body", style: heebooReguler.copyWith(color: Colors.black, fontSize: AllSizes.fontSizeDefault),),
//                                 ],
//                               )
//                             ],
//                           ),
//                         ),
//                       ),
//                     );
//                   }
//                   else{
//                     return Container();
//                   }
//               }),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }