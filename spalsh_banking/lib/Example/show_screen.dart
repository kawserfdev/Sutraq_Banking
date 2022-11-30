// import 'dart:ui';
// import 'package:flutter/material.dart';
// import 'package:spalsh_banking/Const/AppString.dart';
// import 'package:spalsh_banking/Const/Style/FontStyle.dart';
// import '../Const/appColor.dart';
// import 'package:get/get.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';

// class MyWidget extends StatelessWidget {
//   const MyWidget({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return NestedScrollView(
//       controller: ScrollController(keepScrollOffset: true),
//       headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
//         return [
//           SliverList(
//             delegate: SliverChildListDelegate([
//               Padding(
//                 padding: EdgeInsets.only(left: 25.w, right: 25.w),
//                 child: SingleChildScrollView(
//                   child: Column(
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     children: [
//                       SizedBox(
//                         height: 20.h,
//                       ),
//                       Text(
//                         "Explore",
//                       ),
//                       SizedBox(
//                         height: 20.h,
//                       ),
//                       Row(
//                         mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                         children: [
//                           Container(
//                             width: 50,
//                             color: Colors.amberAccent,
//                           )
//                         ],
//                       ),
//                       SizedBox(
//                         height: 20.h,
//                       ),
//                       Text(
//                         "Popular",
//                       ),
//                       SizedBox(
//                         height: 20.h,
//                       ),
//                     ],
//                   ),
//                 ),
//               ),
//             ]),
//           ),
//         ];
//       },
//       body: Padding(
//         padding: EdgeInsets.only(left: 25.w, right: 25.w),
//         child: GridView.builder(
//           itemCount: 20,
//           gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
//             childAspectRatio: 0.65,
//             crossAxisCount: 2,
//             crossAxisSpacing: 10,
//             mainAxisSpacing: 10,
//           ),
//           itemBuilder: (_, index) {
//             return GestureDetector(
//               child: ClipRRect(
//                 borderRadius: BorderRadius.all(
//                   Radius.circular(7.r),
//                 ),
//                 child: Stack(
//                   children: [
//                     Container(
//                       color: Colors.amber,
//                       width: 100,
//                       height: 200,
//                     ),
//                     Positioned(
//                       child: SizedBox(
//                         height: 80.h,
//                         child: ClipRRect(
//                           child: BackdropFilter(
//                             filter: ImageFilter.blur(sigmaX: 5.0, sigmaY: 5.0),
//                             child: Container(
//                               decoration: BoxDecoration(
//                                 color: Colors.white.withOpacity(0.0),
//                               ),
//                               child: Padding(
//                                 padding:
//                                     EdgeInsets.only(left: 10.w, right: 10.w),
//                                 child: Row(
//                                   mainAxisAlignment:
//                                       MainAxisAlignment.spaceBetween,
//                                   crossAxisAlignment: CrossAxisAlignment.center,
//                                   children: [
//                                     Column(
//                                       mainAxisAlignment:
//                                           MainAxisAlignment.center,
//                                       crossAxisAlignment:
//                                           CrossAxisAlignment.start,
//                                       children: [
//                                         Text(
//                                           "Burger",
//                                           style: TextStyle(fontSize: 18.sp),
//                                         ),
//                                         Text("A merchant"),
//                                       ],
//                                     ),
//                                     CircleAvatar(
//                                         radius: 18.r,
//                                         backgroundColor: Colors.white,
//                                         child: Container(
//                                           color: Colors.amberAccent,
//                                         ))
//                                   ],
//                                 ),
//                               ),
//                             ),
//                           ),
//                         ),
//                       ),
//                     ),
//                   ],
//                 ),
//               ),
//               onTap: () {},
//             );
//           },
//         ),
//       ),
//     );
//   }
// }
