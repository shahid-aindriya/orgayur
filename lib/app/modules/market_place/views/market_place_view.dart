import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:orgayur/app/colors/colors.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '../controllers/market_place_controller.dart';

class MarketPlaceView extends GetView<MarketPlaceController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgcolor,
      drawer: Drawer(),
      appBar: AppBar(
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 8.0),
            child: InkWell(
              child: CircleAvatar(
                  backgroundImage: AssetImage("assets/images/profilePic.png")),
            ),
          )
        ],
        leading: Builder(builder: (contezxt) {
          return InkWell(
            onTap: () {
              Scaffold.of(contezxt).openDrawer();
            },
            child: Container(
              decoration: BoxDecoration(),
              child: Center(
                child: SvgPicture.asset("assets/images/Vector.svg"),
              ),
            ),
          );
        }),
        backgroundColor: Colors.white,
      ),
      body: Column(
        children: [
          Container(
            width: 100.w,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(27),
                bottomRight: Radius.circular(27),
              ),
              gradient: LinearGradient(
                  begin: Alignment(0.7756076455116272, -0.06486408412456512),
                  end: Alignment(0.28273797035217285, 0.7756076455116272),
                  colors: [
                    Color.fromARGB(255, 57, 171, 121),
                    Color.fromRGBO(1, 134, 54, 1),
                  ]),
            ),
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 5.w, vertical: 2.h),
              child: Column(
                children: [
                  InkWell(
                    onTap: () {
                      log("message");
                    },
                    child: TextFormField(
                      enabled: false,
                      decoration: InputDecoration(
                          hintStyle: GoogleFonts.roboto(
                              color: Colors.white, fontSize: 15),
                          hintText: "Edachira Jn, Kakkanad, Kerala",
                          prefixIcon: Icon(
                            Icons.location_on_outlined,
                            color: Colors.white,
                          ),
                          suffixIcon: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(right: 8.0),
                                child: Text(
                                  "Change",
                                  style: GoogleFonts.roboto(
                                      color: Colors.white,
                                      fontSize: 11,
                                      decoration: TextDecoration.underline),
                                ),
                              ),
                            ],
                          ),
                          contentPadding:
                              EdgeInsets.symmetric(vertical: 1, horizontal: 10),
                          border: OutlineInputBorder(
                              borderSide:
                                  BorderSide(color: Colors.white, width: 1),
                              borderRadius: BorderRadius.circular(16)),
                          enabledBorder: OutlineInputBorder(
                              borderSide:
                                  BorderSide(color: Colors.white, width: 1),
                              borderRadius: BorderRadius.circular(16)),
                          disabledBorder: OutlineInputBorder(
                              borderSide:
                                  BorderSide(color: Colors.white, width: 1),
                              borderRadius: BorderRadius.circular(16)),
                          filled: true),
                    ),
                  ),
                  SizedBox(
                    height: 2.h,
                  ),
                  TextFormField(
                    keyboardType: TextInputType.visiblePassword,
                    enabled: true,
                    style: GoogleFonts.roboto(
                        fontSize: 16.sp, color: Color.fromRGBO(0, 0, 0, 1)),
                    decoration: InputDecoration(
                        suffixIcon: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                                width: 30,
                                height: 30,
                                child: SvgPicture.asset(
                                  "assets/images/ep_search.svg",
                                  fit: BoxFit.cover,
                                )),
                          ],
                        ),
                        hintText: "Search",
                        contentPadding: const EdgeInsets.symmetric(
                            vertical: 14.0, horizontal: 10),
                        enabled: true,
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(16),
                            borderSide: BorderSide(
                                width: 0,
                                color: Color.fromARGB(255, 255, 255, 255))),
                        filled: true,
                        focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                                width: 0,
                                color: Color.fromARGB(255, 255, 255, 255)),
                            borderRadius: BorderRadius.circular(16)),
                        fillColor: Color.fromARGB(255, 255, 255, 255),
                        focusColor: Color.fromARGB(255, 231, 231, 231)),
                    validator: (value) {
                      if (!RegExp(r'^[a-zA-Z0-9+_.-]+@[a-zA-Z0-9.-]+$')
                              .hasMatch(value!) ||
                          value.length < 3) {
                        return 'please enter valid email';
                      } else {
                        return null;
                      }
                    },
                  ),
                  SizedBox(
                    height: 2.h,
                  ),
                  Row(
                    children: [
                      Column(
                        children: [
                          Text(
                            "Shop By",
                            style: GoogleFonts.roboto(
                                fontWeight: FontWeight.w300,
                                color: Colors.white,
                                fontSize: 15),
                          ),
                          Text("Categories",
                              style: GoogleFonts.roboto(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                  fontSize: 11)),
                        ],
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Expanded(
                        child: SingleChildScrollView(
                            scrollDirection: Axis.horizontal,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Column(
                                  children: [
                                    CircleAvatar(
                                      radius: 26,
                                      backgroundImage: AssetImage(
                                          "assets/images/profilePic.png"),
                                    ),
                                    Text("vegetables",
                                        style: GoogleFonts.roboto(
                                            fontWeight: FontWeight.w400,
                                            color: Colors.white,
                                            fontSize: 11))
                                  ],
                                ),
                                SizedBox(
                                  width: 3.w,
                                ),
                                Column(
                                  children: [
                                    CircleAvatar(
                                      radius: 26,
                                      backgroundImage: AssetImage(
                                          "assets/images/profilePic.png"),
                                    ),
                                    Text("Fruits",
                                        style: GoogleFonts.roboto(
                                            fontWeight: FontWeight.w400,
                                            color: Colors.white,
                                            fontSize: 11))
                                  ],
                                ),
                                SizedBox(
                                  width: 3.w,
                                ),
                                Column(
                                  children: [
                                    CircleAvatar(
                                      radius: 26,
                                      backgroundImage: AssetImage(
                                          "assets/images/profilePic.png"),
                                    ),
                                    Text("Exotic",
                                        style: GoogleFonts.roboto(
                                            fontWeight: FontWeight.w400,
                                            color: Colors.white,
                                            fontSize: 11))
                                  ],
                                ),
                                SizedBox(
                                  width: 3.w,
                                ),
                                Column(
                                  children: [
                                    CircleAvatar(
                                      radius: 26,
                                      backgroundImage: AssetImage(
                                          "assets/images/profilePic.png"),
                                    ),
                                    Text("Fresh Cuts",
                                        style: GoogleFonts.roboto(
                                            fontWeight: FontWeight.w400,
                                            color: Colors.white,
                                            fontSize: 11))
                                  ],
                                ),
                                SizedBox(
                                  width: 3.w,
                                ),
                                Column(
                                  children: [
                                    CircleAvatar(
                                      radius: 26,
                                      backgroundImage: AssetImage(
                                          "assets/images/profilePic.png"),
                                    ),
                                    Text("Nutrition",
                                        style: GoogleFonts.roboto(
                                            fontWeight: FontWeight.w400,
                                            color: Colors.white,
                                            fontSize: 11))
                                  ],
                                )
                              ],
                            )),
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 2.w, right: 2.w),
            child: Container(
              width: 100.w,
              child: Image.asset(
                "assets/images/Group 280.png",
                fit: BoxFit.fitWidth,
              ),
            ),
          ),
          Container(
            height: 10.h,
            child: Padding(
              padding: EdgeInsets.only(left: 5.w),
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 10,
                itemBuilder: (BuildContext context, int index) {
                  return Container(
                    width: 100,
                    child: Card(
                      child: Text("itemList"),
                    ),
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
