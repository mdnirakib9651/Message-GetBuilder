//
//
// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import 'package:messages/services/all_size.dart';
// import 'package:messages/services/styles.dart';
//
// class Inbox_gGetX_Screen extends StatefulWidget {
//   const Inbox_gGetX_Screen({Key? key}) : super(key: key);
//
//   @override
//   State<Inbox_gGetX_Screen> createState() => _Inbox_gGetX_ScreenState();
// }
//
// class _Inbox_gGetX_ScreenState extends State<Inbox_gGetX_Screen> {
//
//   final textController = TextEditingController();
//   // String userPost = '';
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.white,
//       appBar: AppBar(
//         backgroundColor: Colors.white,
//         elevation: 1,
//         toolbarHeight: 65,
//         leading: IconButton(
//           splashColor: Colors.transparent,
//           highlightColor: Colors.transparent,
//           hoverColor: Colors.transparent,
//           focusColor: Colors.transparent,
//           onPressed: (){
//             Get.back();
//           },
//           icon: const Icon(Icons.arrow_back_ios, color: Colors.black,),
//         ),
//         title: Row(
//           children: [
//             ClipRRect(
//               borderRadius: BorderRadius.circular(100),
//                 child: Image.asset("assets/images/Rakib.jpeg", height: 40, width: 40, fit: BoxFit.cover,)),
//             const SizedBox(width: 10,),
//             Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 Text("Md.Nazrul Islam Rakib", style: heeboBold.copyWith(color: Colors.black, fontSize: AllSizes.fontSizeExtraLarge),),
//                 Text("Active now", style: heeboLight.copyWith(color: Colors.grey, fontSize: AllSizes.fontSizeDefault),),
//               ],
//             ),
//           ],
//         ),
//       ),
//       body: Column(
//         children: [
//           Expanded(
//             child: Column(
//               children: [
//                 const SizedBox(height: 30,),
//                 Center(
//                     child: ClipRRect(
//                         borderRadius: BorderRadius.circular(100),
//                         child: Image.asset("assets/images/Rakib.jpeg", height: 70, width: 70, fit: BoxFit.cover,))),
//                 const SizedBox(height: 10,),
//                 Text("Md.Nazrul Islam Rakib", style: heeboBold.copyWith(color: Colors.black, fontSize: AllSizes.fontSizeOverLarge),),
//                 Text("App Developer", style: heeboLight.copyWith(color: Colors.grey, fontSize: AllSizes.fontSizeLarge),),
//                 InkWell(
//                     splashColor: Colors.transparent,
//                     highlightColor: Colors.transparent,
//                     hoverColor: Colors.transparent,
//                     focusColor: Colors.transparent,
//                     onTap: (){},
//                     child: Text("View profile",style: heeboBold.copyWith(color: Colors.blue, fontSize: AllSizes.fontSizeLarge),)),
//               ],
//             ),
//           ),
//           Row(
//             children: [
//               Expanded(
//                 child: Padding(
//                   padding: const EdgeInsets.all(10),
//                   child: Container(
//                     decoration: BoxDecoration(
//                       borderRadius: BorderRadius.circular(60),
//                       color: Colors.grey[200],
//                     ),
//                     child: Row(
//                       children: [
//                         SizedBox(width: 20,),
//                         InkWell(
//                           onTap: (){},
//                           child: Icon(Icons.camera_alt_outlined, color: Colors.grey[600],),),
//                          Expanded(
//                           child: SizedBox(
//                             height: 50,
//                             child: Padding(
//                               padding: const EdgeInsets.only(top: 6, bottom: 6),
//                               child: TextField(
//                                 keyboardType: TextInputType.multiline,
//                                 maxLines: null,
//                                 controller: textController,
//                                 decoration: InputDecoration(
//                                   filled: true,
//                                   fillColor: Colors.grey[200],
//                                   contentPadding: EdgeInsets.symmetric(horizontal: 10),
//                                   hintText: 'Message',
//                                   enabledBorder: OutlineInputBorder(
//                                     borderSide: BorderSide.none,
//                                     borderRadius: BorderRadius.circular(50),
//                                   ),
//                                   focusedBorder: OutlineInputBorder(
//                                     borderSide: BorderSide.none,
//                                     borderRadius: BorderRadius.circular(50),
//                                   ),
//                                 ),
//
//                               ),
//                             ),
//                           ),
//                         ),
//                         InkWell(
//                           onTap: (){},
//                           child: Icon(Icons.keyboard_voice_outlined, color: Colors.grey[600],),),
//                         const SizedBox(width: 10,),
//                         InkWell(
//                           onTap: (){},
//                           child: Icon(Icons.image_outlined, color: Colors.grey[600],),),
//                         const SizedBox(width: 10,),
//                         InkWell(
//                             onTap: (){},
//                             child: Icon(Icons.emoji_emotions_outlined, color: Colors.grey[600],)),
//                         const SizedBox(width: 10,),
//                       ],
//                     ),
//                   ),
//                 ),
//               ),
//               SizedBox(width: 5,),
//               InkWell(
//                   splashColor: Colors.transparent,
//                   highlightColor: Colors.transparent,
//                   hoverColor: Colors.transparent,
//                   focusColor: Colors.transparent,
//                   onTap: (){},
//                   child: Icon(Icons.send, color: Colors.grey[600],)),
//               const SizedBox(width: 15,),
//             ],
//           ),
//         ],
//       ),
//     );
//   }
// }
