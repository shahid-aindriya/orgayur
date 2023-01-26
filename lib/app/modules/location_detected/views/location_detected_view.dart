import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:orgayur/app/colors/colors.dart';
import 'package:orgayur/app/modules/bottombar/views/bottombar_view.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '../controllers/location_detected_controller.dart';

class LocationDetectedView extends GetView<LocationDetectedController> {
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
                        SizedBox(height: 13.h),

                        Column(
                          children: [
                            SvgPicture.asset("assets/images/CheckCircle.svg"),
                            SizedBox(
                              height: 1.h,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  "LOCATION DETECTED",
                                  style: GoogleFonts.roboto(
                                      color: greyColorText, fontSize: 15.sp),
                                )
                              ],
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 2.h,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text("Edachira Jn, Kakkanad",
                                style: GoogleFonts.roboto(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 21.sp)),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                                "Olive Courtyard, 4A, Edachira Jn,\n Kakkanad, Kerala 682030, India",
                                style: GoogleFonts.roboto(
                                    color: greyColorText,
                                    fontWeight: FontWeight.w400,
                                    fontSize: 16.sp)),
                          ],
                        ),
                        SizedBox(
                          height: 16.h,
                        ),

                        // Figma Flutter Generator Rectangle21Widget - RECTANGLE
                        InkWell(
                          onTap: () {
                            Get.to(BottombarView());
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
                                child: Text(
                              "Continue",
                              style: GoogleFonts.roboto(color: Colors.white),
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
