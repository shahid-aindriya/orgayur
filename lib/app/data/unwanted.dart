// {
// Row(
//                       children: [
//                         Column(
//                           children: [
//                             Text(
//                               "Shop By",
//                               style: GoogleFonts.roboto(
//                                   fontWeight: FontWeight.w300,
//                                   color: Colors.white,
//                                   fontSize: 15),
//                             ),
//                             Text("Categories",
//                                 style: GoogleFonts.roboto(
//                                     fontWeight: FontWeight.bold,
//                                     color: Colors.white,
//                                     fontSize: 11)),
//                           ],
//                         ),
//                         SizedBox(
//                           width: 10,
//                         ),
//                         Expanded(
//                           child: SingleChildScrollView(
//                               scrollDirection: Axis.horizontal,
//                               child: Row(
//                                 mainAxisAlignment:
//                                     MainAxisAlignment.spaceBetween,
//                                 children: [
//                                   Column(
//                                     children: [
//                                       CircleAvatar(
//                                         radius: 26,
//                                         backgroundImage: AssetImage(
//                                             "assets/images/profilePic.png"),
//                                       ),
//                                       Text("vegetables",
//                                           style: GoogleFonts.roboto(
//                                               fontWeight: FontWeight.w400,
//                                               color: Colors.white,
//                                               fontSize: 11))
//                                     ],
//                                   ),
//                                   SizedBox(
//                                     width: 3.w,
//                                   ),
//                                   Column(
//                                     children: [
//                                       CircleAvatar(
//                                         radius: 26,
//                                         backgroundImage: AssetImage(
//                                             "assets/images/profilePic.png"),
//                                       ),
//                                       Text("Fruits",
//                                           style: GoogleFonts.roboto(
//                                               fontWeight: FontWeight.w400,
//                                               color: Colors.white,
//                                               fontSize: 11))
//                                     ],
//                                   ),
//                                   SizedBox(
//                                     width: 3.w,
//                                   ),
//                                   Column(
//                                     children: [
//                                       CircleAvatar(
//                                         radius: 26,
//                                         backgroundImage: AssetImage(
//                                             "assets/images/profilePic.png"),
//                                       ),
//                                       Text("Exotic",
//                                           style: GoogleFonts.roboto(
//                                               fontWeight: FontWeight.w400,
//                                               color: Colors.white,
//                                               fontSize: 11))
//                                     ],
//                                   ),
//                                   SizedBox(
//                                     width: 3.w,
//                                   ),
//                                   Column(
//                                     children: [
//                                       CircleAvatar(
//                                         radius: 26,
//                                         backgroundImage: AssetImage(
//                                             "assets/images/profilePic.png"),
//                                       ),
//                                       Text("Fresh Cuts",
//                                           style: GoogleFonts.roboto(
//                                               fontWeight: FontWeight.w400,
//                                               color: Colors.white,
//                                               fontSize: 11))
//                                     ],
//                                   ),
//                                   SizedBox(
//                                     width: 3.w,
//                                   ),
//                                   Column(
//                                     children: [
//                                       CircleAvatar(
//                                         radius: 26,
//                                         backgroundImage: AssetImage(
//                                             "assets/images/profilePic.png"),
//                                       ),
//                                       Text("Nutrition",
//                                           style: GoogleFonts.roboto(
//                                               fontWeight: FontWeight.w400,
//                                               color: Colors.white,
//                                               fontSize: 11))
//                                     ],
//                                   )
//                                 ],
//                               )),
//                         )
//                       ],
//                     )}






  // Container(
  //             height: 143,
  //             child: Padding(
  //               padding: EdgeInsets.only(left: 5.w),
  //               child: ListView.builder(
  //                 scrollDirection: Axis.horizontal,
  //                 itemCount: 10,
  //                 itemBuilder: (BuildContext context, int index) {
  //                   return Container(
  //                     width: 148,
  //                     decoration: BoxDecoration(
  //                         borderRadius: BorderRadius.circular(16)),
  //                     child: Card(
  //                       shape: RoundedRectangleBorder(
  //                           borderRadius: BorderRadius.circular(16)),
  //                       child: Column(
  //                         mainAxisAlignment: MainAxisAlignment.center,
  //                         children: [
  //                           CircleAvatar(
  //                             radius: 30,
  //                             backgroundImage:
  //                                 AssetImage("assets/images/top_merchant.png"),
  //                           ),
  //                           SizedBox(
  //                             height: 1.h,
  //                           ),
  //                           Text("Heera Farms",
  //                               style: GoogleFonts.roboto(
  //                                 fontSize: 15.5.sp,
  //                                 fontWeight: FontWeight.w500,
  //                               )),
  //                           Text("Kakkanad",
  //                               style: GoogleFonts.roboto(
  //                                   fontSize: 14.5.sp,
  //                                   fontWeight: FontWeight.w300,
  //                                   color: greyColorText)),
  //                           SizedBox(
  //                             height: 1.h,
  //                           ),
  //                           Text("56 items Listed",
  //                               style: GoogleFonts.roboto(
  //                                   fontSize: 14.5.sp,
  //                                   fontWeight: FontWeight.w600,
  //                                   color: greenGradient1))
  //                         ],
  //                       ),
  //                     ),
  //                   );
  //                 },
  //               ),
  //             ),
  //           )


  // Padding(
  //                 padding: const EdgeInsets.all(8.0),
  //                 child: Container(
  //                   child: Card(
  //                     elevation: 10,
  //                     shape: RoundedRectangleBorder(
  //                         borderRadius: BorderRadius.circular(15.0)),
  //                     child: Padding(
  //                       padding: const EdgeInsets.only(left: 8, top: 6),
  //                       child: Column(
  //                         crossAxisAlignment: CrossAxisAlignment.start,
  //                         children: [
  //                           Flexible(
  //                             child: InkWell(
  //                               onTap: () {},
  //                               child: Container(
  //                                   width: 100.w,
  //                                   height: 18.h,
  //                                   decoration: BoxDecoration(
  //                                       image: DecorationImage(
  //                                     image: AssetImage(
  //                                       "assets/images/image 2.png",
  //                                     ),
  //                                     fit: BoxFit.contain,
  //                                   )),
  //                                   child: Padding(
  //                                     padding: const EdgeInsets.all(0.0),
  //                                     child: Row(
  //                                       crossAxisAlignment:
  //                                           CrossAxisAlignment.start,
  //                                       mainAxisAlignment:
  //                                           MainAxisAlignment.end,
  //                                       children: [
  //                                         // Figma Flutter Generator Rectangle33Widget - RECTANGLE
  //                                         IconButton(
  //                                             onPressed: () {},
  //                                             icon: Icon(
  //                                               Icons.favorite,
  //                                               color: Colors.grey,
  //                                             ))
  //                                       ],
  //                                     ),
  //                                   )),
  //                             ),
  //                           ),
  //                           Text(
  //                             "Broccoli Florets",
  //                             style: GoogleFonts.roboto(
  //                                 fontSize: 17.sp, fontWeight: FontWeight.w500),
  //                           ),
  //                           SizedBox(
  //                             height: 3,
  //                           ),
  //                           // Figma Flutter Generator Rectangle90Widget - RECTANGLE
  //                           Padding(
  //                             padding:
  //                                 const EdgeInsets.only(left: 4, bottom: 8),
  //                             child: Container(
  //                               decoration: BoxDecoration(
  //                                 borderRadius: BorderRadius.circular(5),
  //                                 color: Color.fromRGBO(217, 217, 217, 1),
  //                               ),
  //                               child: Padding(
  //                                 padding: const EdgeInsets.only(
  //                                     left: 8, right: 8, top: 6, bottom: 6),
  //                                 child: Column(
  //                                   children: [
  //                                     Text("1 Kilo Grams",
  //                                         style: GoogleFonts.roboto(
  //                                             fontSize: 13.sp,
  //                                             fontWeight: FontWeight.w400)),
  //                                   ],
  //                                 ),
  //                               ),
  //                             ),
  //                           ),
  //                           Padding(
  //                             padding:
  //                                 const EdgeInsets.symmetric(horizontal: 4),
  //                             child: Row(
  //                               mainAxisAlignment:
  //                                   MainAxisAlignment.spaceBetween,
  //                               children: [
  //                                 Text(
  //                                   "₹ 150",
  //                                   style: GoogleFonts.roboto(
  //                                       fontSize: 18.sp,
  //                                       color: Color.fromARGB(255, 1, 134, 54),
  //                                       fontWeight: FontWeight.w500),
  //                                 ),

  //                                 // Figma Flutter Generator Rectangle89Widget - RECTANGLE
  //                                 InkWell(
  //                                   onTap: () {},
  //                                   child: Container(
  //                                       decoration: BoxDecoration(
  //                                         borderRadius: BorderRadius.only(
  //                                           topLeft: Radius.circular(4),
  //                                           topRight: Radius.circular(4),
  //                                           bottomLeft: Radius.circular(4),
  //                                           bottomRight: Radius.circular(4),
  //                                         ),
  //                                         color: Color.fromRGBO(1, 134, 54, 1),
  //                                       ),
  //                                       child: Padding(
  //                                         padding:
  //                                             EdgeInsets.fromLTRB(8, 6, 8, 6),
  //                                         child: Column(
  //                                           children: [
  //                                             Text(
  //                                               "Add to Cart",
  //                                               style: GoogleFonts.roboto(
  //                                                   fontSize: 14.sp,
  //                                                   color: Colors.white,
  //                                                   fontWeight:
  //                                                       FontWeight.w400),
  //                                             ),
  //                                           ],
  //                                         ),
  //                                       )),
  //                                 )

  //                                 // ElevatedButton(
  //                                 //     style: ButtonStyle(
  //                                 //         maximumSize:
  //                                 //             MaterialStateProperty.all(
  //                                 //                 Size(83, 24)),
  //                                 //         padding: MaterialStateProperty.all(
  //                                 //             EdgeInsets.all(2)),
  //                                 //         fixedSize: MaterialStateProperty.all(
  //                                 //             Size(82, 24))),
  //                                 //     onPressed: () {},
  //                                 //     child: Text(
  //                                 //       "Add to Cart",
  //                                 //       style: GoogleFonts.roboto(
  //                                 //           fontSize: 13.sp,
  //                                 //           fontWeight: FontWeight.w400),
  //                                 //     ))
  //                               ],
  //                             ),
  //                           )
  //                         ],
  //                       ),
  //                     ),
  //                   ),
  //                 ),
  //               )




  // Padding(
  //                     padding: const EdgeInsets.all(8.0),
  //                     child: Container(
  //                       width: 158,
  //                       child: Card(
  //                         elevation: 10,
  //                         shape: RoundedRectangleBorder(
  //                             borderRadius: BorderRadius.circular(15.0)),
  //                         child: Padding(
  //                           padding: const EdgeInsets.only(
  //                               left: 8, top: 1, bottom: 10),
  //                           child: Column(
  //                             crossAxisAlignment: CrossAxisAlignment.start,
  //                             children: [
  //                               Flexible(
  //                                 child: InkWell(
  //                                   onTap: () {},
  //                                   child: Container(
  //                                       width: 100.w,
  //                                       height: 120,
  //                                       decoration: BoxDecoration(
  //                                           image: DecorationImage(
  //                                         image: AssetImage(
  //                                           "assets/images/Rectangle 49.png",
  //                                         ),
  //                                         fit: BoxFit.contain,
  //                                       )),
  //                                       child: Padding(
  //                                         padding: const EdgeInsets.all(0.0),
  //                                         child: Row(
  //                                           crossAxisAlignment:
  //                                               CrossAxisAlignment.start,
  //                                           mainAxisAlignment:
  //                                               MainAxisAlignment.end,
  //                                           children: [
  //                                             // Figma Flutter Generator Rectangle33Widget - RECTANGLE
  //                                             IconButton(
  //                                                 onPressed: () {},
  //                                                 icon: Icon(
  //                                                   Icons.favorite,
  //                                                   color: Colors.grey,
  //                                                 ))
  //                                           ],
  //                                         ),
  //                                       )),
  //                                 ),
  //                               ),
  //                               Text(
  //                                 "Cactus Plant",
  //                                 style: GoogleFonts.roboto(
  //                                     fontSize: 17.sp,
  //                                     fontWeight: FontWeight.w500),
  //                               ),
  //                               SizedBox(
  //                                 height: 3,
  //                               ),
  //                               // Figma Flutter Generator Rectangle90Widget - RECTANGLE
  //                               Padding(
  //                                 padding:
  //                                     const EdgeInsets.only(left: 4, bottom: 8),
  //                                 child: Container(
  //                                   decoration: BoxDecoration(
  //                                     borderRadius: BorderRadius.circular(5),
  //                                     color: Color.fromRGBO(217, 217, 217, 1),
  //                                   ),
  //                                   child: Padding(
  //                                     padding: const EdgeInsets.only(
  //                                         left: 8, right: 8, top: 6, bottom: 6),
  //                                     child: Column(
  //                                       children: [
  //                                         Text("Indoor Plant",
  //                                             style: GoogleFonts.roboto(
  //                                                 fontSize: 13.sp,
  //                                                 fontWeight: FontWeight.w400)),
  //                                       ],
  //                                     ),
  //                                   ),
  //                                 ),
  //                               ),
  //                               Padding(
  //                                 padding:
  //                                     const EdgeInsets.symmetric(horizontal: 4),
  //                                 child: Row(
  //                                   mainAxisAlignment:
  //                                       MainAxisAlignment.spaceBetween,
  //                                   children: [
  //                                     Text(
  //                                       "₹ 150",
  //                                       style: GoogleFonts.roboto(
  //                                           fontSize: 18.sp,
  //                                           color:
  //                                               Color.fromARGB(255, 1, 134, 54),
  //                                           fontWeight: FontWeight.w500),
  //                                     ),

  //                                     // Figma Flutter Generator Rectangle89Widget - RECTANGLE
  //                                     InkWell(
  //                                       onTap: () {},
  //                                       child: Image.asset(
  //                                           "assets/images/bxs_cart-add.png"),
  //                                     )
  //                                   ],
  //                                 ),
  //                               )
  //                             ],
  //                           ),
  //                         ),
  //                       ),
  //                     ),
  //                   );