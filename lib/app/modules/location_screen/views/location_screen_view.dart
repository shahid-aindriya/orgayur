import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:orgayur/app/colors/colors.dart';
import 'package:orgayur/app/modules/location_detected/views/location_detected_view.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '../controllers/location_screen_controller.dart';

class LocationScreenView extends GetView<LocationScreenController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: bgcolor,
        body: SafeArea(
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.only(left: 5.w),
                child: Row(
                  children: [
                    Container(
                        height: 24.h,
                        child: SvgPicture.asset(
                          "assets/images/bg.svg",
                          fit: BoxFit.fitHeight,
                        )),
                  ],
                ),
              ),
              SizedBox(
                height: 3.h,
              ),
              Expanded(
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(60),
                          topRight: Radius.circular(60))),
                  child: Padding(
                    padding: EdgeInsets.only(left: 8.w, right: 8.w),
                    child: ListView(
                      children: [
                        SizedBox(height: 8.h),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Hi, Welcome to Orga Ayur",
                              style: GoogleFonts.roboto(
                                  color: greyColorText, fontSize: 17.sp),
                            )
                          ],
                        ),
                        SizedBox(
                          height: 2.h,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text("Provide your location to ",
                                style: GoogleFonts.roboto(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 21.sp)),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text("serve you better ",
                                style: GoogleFonts.roboto(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 21.sp)),
                          ],
                        ),
                        SizedBox(
                          height: 5.h,
                        ),
                        Container(
                            width: 20.w,
                            child: SvgPicture.asset(
                              "assets/images/location.svg",
                              fit: BoxFit.contain,
                            )),
                        SizedBox(
                          height: 10.h,
                        ),
                        // Figma Flutter Generator Rectangle21Widget - RECTANGLE
                        InkWell(
                          onTap: () {
                            Get.to(LocationDetectedView());
                          },
                          child: Container(
                            width: 100.w,
                            height: 50,
                            decoration: BoxDecoration(
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.black12,
                                  offset: Offset(0, 8),
                                  blurRadius: 8,
                                ),
                              ],
                              borderRadius: BorderRadius.circular(60),
                              gradient: LinearGradient(
                                  begin: Alignment(1, 0),
                                  end: Alignment(0, 1),
                                  colors: [greenGradient1, greenGradient2]),
                            ),
                            child: Center(
                                child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(
                                  Icons.my_location,
                                  color: Colors.white,
                                ),
                                SizedBox(
                                  width: 2.w,
                                ),
                                Text(
                                  "Use my current location",
                                  style:
                                      GoogleFonts.roboto(color: Colors.white),
                                ),
                              ],
                            )),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ));
  }
}
