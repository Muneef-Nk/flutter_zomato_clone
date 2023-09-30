//
// import 'package:flutter/material.dart';
//
// import '../model/choose_language.dart';
// import '../utils/constants.dart';
// Future<dynamic> showModalBottomSheetLanguage(BuildContext context) {
//
//   return showModalBottomSheet(
//     isScrollControlled: true,
//       backgroundColor: Colors.transparent,
//       context: context,
//       builder: (context) {
//         return SingleChildScrollView(
//           child: Column(
//             mainAxisSize: MainAxisSize.min,
//             mainAxisAlignment: MainAxisAlignment.end,
//             children: [
//               Container(
//                 height: 50,
//                 width: 50,
//                 decoration: BoxDecoration(
//                   shape: BoxShape.circle,
//                   color: Colors.black.withOpacity(0.6),
//                 ),
//                 child: IconButton(
//                   color: Colors.white,
//                   onPressed: () {
//                     Navigator.of(context).pop();
//                   },
//                   icon: Icon(Icons.close),
//                 ),
//               ),
//               SizedBox(
//                 height: 20,
//               ),
//               Container(
//                 width: double.infinity,
//                 height: 50,
//                 decoration: BoxDecoration(
//                   color: Colors.white,
//                   borderRadius: BorderRadius.only(
//                     topLeft: Radius.circular(20), topRight: Radius.circular(20)
//                   )
//                 ),
//                 child: Padding(
//                   padding: const EdgeInsets.only(left: 20, top: 20),
//                   child: Text("Select Language", style: TextStyle(fontSize: 20),),
//                 ),
//               ),
//               Container(
//                 height: 400,
//                 decoration: BoxDecoration(
//                     color: Colors.white,
//                ),
//                 child: ListView.builder(
//                     itemCount: language.length,
//                     itemBuilder: (context, index) {
//                       return Container(
//                         margin: EdgeInsets.all(10),
//                         height: 95,
//                         decoration: BoxDecoration(
//                             color: Color(0xfff3f4f8),
//                             borderRadius:
//                             BorderRadius.circular(10)),
//                         child: RadioMenuButton(
//                             value: true,
//                             groupValue: _value,
//                             onChanged: (v) {
//
//                             },
//                             child: Text(language[index].label)),
//                       );
//                     }),
//               ),
//               InkWell(
//                 onTap: (){},
//                 child: Ink(
//                   padding: EdgeInsets.only(left: 15, right: 15, top: 2, bottom: 15),
//                   width: double.infinity,
//                   height: 80,
//                   color: Colors.white,
//                   child: Container(
//                     width: 40,
//                     height: 20,
//                     decoration: BoxDecoration(
//                     color: primary,
//                     borderRadius: BorderRadius.circular(10)
//                   ),
//                     child: Center(child: Text("Select", style: TextStyle(fontSize: 20, color: Colors.white),)),
//                   ),
//                 ),
//               )
//             ],
//           ),
//         );
//       });
// }