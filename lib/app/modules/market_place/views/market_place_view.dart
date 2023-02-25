import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '../controllers/market_place_controller.dart';

class MarketPlaceView extends GetView<MarketPlaceController> {
  const MarketPlaceView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
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
      body: ListView(
        children: [
          // Figma Flutter Generator Group281Widget - GROUP
          Container(
              width: 100.w,
              height: 280,
              child: Stack(children: <Widget>[
                Positioned(
                    top: 0,
                    left: 0,
                    child: Container(
                        width: 100.w,
                        height: 200,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(30),
                            bottomRight: Radius.circular(30),
                          ),
                          gradient: LinearGradient(
                              begin: Alignment(
                                  0.7756076455116272, -0.06486408412456512),
                              end: Alignment(
                                  0.28273797035217285, 0.7756076455116272),
                              colors: [
                                Color.fromRGBO(1, 134, 54, 1),
                                Color.fromRGBO(80, 190, 143, 1)
                              ]),
                        ))),
                Container(
                  width: 100.w,
                  height: 70,
                  child: Padding(
                    padding: EdgeInsets.only(top: 2.h, left: 3.w, right: 3.w),
                    child: TextFormField(
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
                  ),
                ),
                Positioned(
                    top: 80,
                    child: Container(
                        width: 100.w,
                        height: 188,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(30),
                            topRight: Radius.circular(30),
                            bottomLeft: Radius.circular(30),
                            bottomRight: Radius.circular(30),
                          ),
                          boxShadow: [
                            BoxShadow(
                                color: Color.fromRGBO(
                                    0, 0, 0, 0.05000000074505806),
                                offset: Offset(0, 4),
                                blurRadius: 14)
                          ],
                          image: DecorationImage(
                              image: AssetImage('assets/images/Group 284.png'),
                              fit: BoxFit.fitWidth),
                        ))),
              ])),
          Padding(
            padding: EdgeInsets.only(left: 5.w, right: 5.w),
            child: Text(
              "Choose your type",
              style: GoogleFonts.roboto(
                  fontSize: 18.5.sp, fontWeight: FontWeight.w500),
            ),
          ),
          Image.asset("assets/images/Group 266.png"),
          Padding(
            padding: EdgeInsets.fromLTRB(5.w, 0, 5.w, 0),
            child: Row(
              children: [
                Expanded(
                    child: Divider(
                  thickness: 1,
                )),
                Text(" or "),
                Expanded(
                    child: Divider(
                  thickness: 1,
                ))
              ],
            ),
          ),
          Image.asset("assets/images/Group 267.png"),
        ],
      ),
    );
  }
}
