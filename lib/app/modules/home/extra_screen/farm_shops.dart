import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:orgayur/app/colors/colors.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '../controllers/home_controller.dart';

class FarmShops extends StatelessWidget {
  const FarmShops({super.key, required this.homeController});
  final HomeController homeController;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgcolor,
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Get.back();
          },
          icon: Icon(Icons.arrow_back),
          color: Colors.black,
        ),
        backgroundColor: whiteText,
        title: Text(
          "Farms",
          style: GoogleFonts.roboto(
              color: Colors.black, fontSize: 20, fontWeight: FontWeight.w500),
        ),
      ),
      body: ListView(
        children: [
          Container(
            width: 100.w,
            decoration: BoxDecoration(
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
          Padding(
            padding:
                EdgeInsets.only(left: 5.w, right: 4.w, bottom: 1.h, top: 1.h),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Featured Shops",
                  style: GoogleFonts.roboto(
                      fontSize: 18.5.sp, fontWeight: FontWeight.w500),
                ),
                InkWell(
                  onTap: () {},
                  child: Text(
                    "See all",
                    style: GoogleFonts.roboto(
                        fontSize: 15.5.sp,
                        fontWeight: FontWeight.w400,
                        color: greyColorText),
                  ),
                )
              ],
            ),
          ),
          GridView.builder(
            physics: NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            scrollDirection: Axis.vertical,
            itemCount: 4,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2, childAspectRatio: .85),
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.all(8.0),
                child: Card(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)),
                  child: Column(
                    children: [
                      Container(
                        child: ClipRRect(
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(10),
                              topRight: Radius.circular(10)),
                          child: Image.asset("assets/images/popular_item.png"),
                        ),
                      ),
                      Padding(
                        padding:
                            const EdgeInsets.only(left: 8, top: 6, bottom: 5),
                        child: Row(
                          children: [
                            Text(
                              "Green Choice",
                              style: GoogleFonts.roboto(
                                  fontWeight: FontWeight.w500, fontSize: 17.sp),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 8.0, bottom: 5),
                        child: Row(
                          children: [
                            SvgPicture.asset('assets/images/location_home.svg'),
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              "Kakkanad",
                              style: GoogleFonts.roboto(
                                color: textGreenHome,
                              ),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              );
            },
          ),
          Padding(
            padding:
                EdgeInsets.only(left: 5.w, right: 4.w, bottom: 1.h, top: 1.h),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Top Rated",
                  style: GoogleFonts.roboto(
                      fontSize: 18.5.sp, fontWeight: FontWeight.w500),
                ),
                InkWell(
                  onTap: () {},
                  child: Text(
                    "See all",
                    style: GoogleFonts.roboto(
                        fontSize: 15.5.sp,
                        fontWeight: FontWeight.w400,
                        color: greyColorText),
                  ),
                )
              ],
            ),
          ),
          GridView.builder(
            physics: NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            scrollDirection: Axis.vertical,
            itemCount: 4,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2, childAspectRatio: .85),
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.all(8.0),
                child: Card(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)),
                  child: Column(
                    children: [
                      Container(
                        child: ClipRRect(
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(10),
                              topRight: Radius.circular(10)),
                          child: Image.asset("assets/images/popular_item.png"),
                        ),
                      ),
                      Padding(
                        padding:
                            const EdgeInsets.only(left: 8, top: 6, bottom: 5),
                        child: Row(
                          children: [
                            Text(
                              "Green Choice",
                              style: GoogleFonts.roboto(
                                  fontWeight: FontWeight.w500, fontSize: 17.sp),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 8.0, bottom: 5),
                        child: Row(
                          children: [
                            SvgPicture.asset('assets/images/location_home.svg'),
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              "Kakkanad",
                              style: GoogleFonts.roboto(
                                color: textGreenHome,
                              ),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              );
            },
          ),
          Padding(
            padding:
                EdgeInsets.only(left: 5.w, right: 4.w, bottom: 1.h, top: 1.h),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Most Nearby",
                  style: GoogleFonts.roboto(
                      fontSize: 18.5.sp, fontWeight: FontWeight.w500),
                ),
                InkWell(
                  onTap: () {},
                  child: Text(
                    "See all",
                    style: GoogleFonts.roboto(
                        fontSize: 15.5.sp,
                        fontWeight: FontWeight.w400,
                        color: greyColorText),
                  ),
                )
              ],
            ),
          ),
          GridView.builder(
            physics: NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            scrollDirection: Axis.vertical,
            itemCount: 4,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2, childAspectRatio: .85),
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.all(8.0),
                child: Card(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)),
                  child: Column(
                    children: [
                      Container(
                        child: ClipRRect(
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(10),
                              topRight: Radius.circular(10)),
                          child: Image.asset("assets/images/popular_item.png"),
                        ),
                      ),
                      Padding(
                        padding:
                            const EdgeInsets.only(left: 8, top: 6, bottom: 5),
                        child: Row(
                          children: [
                            Text(
                              "Green Choice",
                              style: GoogleFonts.roboto(
                                  fontWeight: FontWeight.w500, fontSize: 17.sp),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 8.0, bottom: 5),
                        child: Row(
                          children: [
                            SvgPicture.asset('assets/images/location_home.svg'),
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              "Kakkanad",
                              style: GoogleFonts.roboto(
                                color: textGreenHome,
                              ),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              );
            },
          )
        ],
      ),
    );
  }
}
