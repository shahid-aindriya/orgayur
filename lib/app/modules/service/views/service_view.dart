import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '../../../colors/colors.dart';
import '../controllers/service_controller.dart';

class ServiceView extends GetView<ServiceController> {
  const ServiceView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.transparent,
        drawer: Drawer(),
        appBar: AppBar(
          toolbarHeight: 70,
          title: Column(
            children: [
              Padding(
                padding: EdgeInsets.only(left: 1.w),
                child: InkWell(
                  onTap: () {},
                  child: Container(
                      width: 100.w,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          border: Border.all(
                              width: 1, color: Color.fromRGBO(1, 134, 54, 1))),
                      child: Padding(
                        padding:
                            const EdgeInsets.only(left: 2.0, top: 8, bottom: 8),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Wrap(
                              crossAxisAlignment: WrapCrossAlignment.center,
                              children: [
                                InkWell(
                                  onTap: () {},
                                  child: Icon(
                                    Icons.location_on,
                                    color: Color.fromRGBO(1, 134, 54, 1),
                                  ),
                                ),
                                SizedBox(
                                  width: 3.w,
                                ),
                                AutoSizeText(
                                  "Set Location",
                                  maxLines: 2,
                                  style: GoogleFonts.roboto(
                                      color: Color.fromARGB(255, 104, 104, 104),
                                      fontSize: 15.sp,
                                      fontWeight: FontWeight.w500),
                                )
                              ],
                            ),
                            InkWell(
                              onTap: () {},
                              child: Icon(
                                Icons.arrow_drop_down,
                                color: Colors.black,
                              ),
                            ),
                          ],
                        ),
                      )),
                ),
              ),
            ],
          ),
          actions: [
            InkWell(
                onTap: () {},
                child: SvgPicture.asset("assets/images/notification_icon.svg")),
            SizedBox(
              width: 3.w,
            ),
            InkWell(
                onTap: () {},
                child: SvgPicture.asset("assets/images/kt_icon.svg")),
            SizedBox(
              width: 2.w,
            )
          ],
          bottomOpacity: 12,
          leadingWidth: 120,
          leading: Container(
            width: 100,
            child: Center(
              child: Image.asset(
                "assets/images/orgayur_appbar_logo.png",
                fit: BoxFit.contain,
              ),
            ),
          ),
          backgroundColor: Colors.white,
        ),
        body: ListView(
          children: [
            // Figma Flutter Generator Group281Widget - GROUP
            Container(
              width: 100.w,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment(0.7756076455116272, -0.06486408412456512),
                    end: Alignment(0.28273797035217285, 0.7756076455116272),
                    colors: [
                      greenGradient2,
                      greenGradient1,
                    ]),
              ),
              child: Column(
                children: [
                  SizedBox(height: 10),
                  Text(
                    "Book Services",
                    style: GoogleFonts.roboto(
                        color: whiteText,
                        fontWeight: FontWeight.bold,
                        fontSize: 22),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                        top: 2.h, left: 3.w, right: 3.w, bottom: 2.h),
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
                ],
              ),
            ),

            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                child: Image.asset("assets/images/service_screen_promo.png"),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  boxShadow: [
                    BoxShadow(
                        color: Color.fromRGBO(0, 0, 0, 0.05000000074505806),
                        offset: Offset(0, 4),
                        blurRadius: 14)
                  ],
                ),
              ),
            ),

            // Padding(
            //   padding: EdgeInsets.only(top: 1.h),
            //   child: Container(
            //     width: 100.w,
            //     child: Image.asset(
            //       "assets/images/Rectangle 44.png",
            //       fit: BoxFit.fitWidth,
            //     ),
            //   ),
            // ),

            Padding(
              padding: EdgeInsets.only(top: 1.h, left: 5.w, right: 5.w),
              child: Text(
                "Top Categories",
                style: GoogleFonts.roboto(
                    color: greenGradient2,
                    fontSize: 18.5.sp,
                    fontWeight: FontWeight.w500),
              ),
            ),
            SizedBox(
              height: 2.h,
            ),
            GridView.builder(
              physics: NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              scrollDirection: Axis.vertical,
              itemCount: 8,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  childAspectRatio: 1.2, crossAxisCount: 4),
              itemBuilder: (context, index) {
                return Column(
                  children: [
                    Image.asset("assets/images/categories.png"),
                    SizedBox(
                      height: 4,
                    ),
                    Text(
                      "Indoor Plants",
                      style: GoogleFonts.roboto(
                          color: Color.fromARGB(255, 15, 100, 53),
                          fontSize: 13.sp,
                          fontWeight: FontWeight.w300),
                    )
                  ],
                );
              },
            ),
            Padding(
              padding:
                  EdgeInsets.only(left: 5.w, right: 5.w, bottom: 1.h, top: 2.h),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Top Services",
                    style: GoogleFonts.roboto(
                        color: greenGradient2,
                        fontSize: 18.5.sp,
                        fontWeight: FontWeight.w500),
                  ),
                ],
              ),
            ),
            GridView.builder(
              physics: NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              scrollDirection: Axis.vertical,
              itemCount: 4,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2, childAspectRatio: .7),
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
                            child:
                                Image.asset("assets/images/popular_item.png"),
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
                                    fontWeight: FontWeight.w500,
                                    fontSize: 17.sp),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 8.0, bottom: 5),
                          child: Row(
                            children: [
                              Image.asset(
                                  "assets/images/service_card_logo.png"),
                              SizedBox(
                                width: 10,
                              ),
                              Text(
                                "By Farmagro",
                                style: GoogleFonts.roboto(
                                  color: greyColorText,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                              left: 8.0, bottom: 5, top: 10),
                          child: Row(
                            children: [
                              Text(
                                "₹200/-",
                                style: GoogleFonts.roboto(
                                    color: textGreenHome,
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold),
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
        ));
  }
}
