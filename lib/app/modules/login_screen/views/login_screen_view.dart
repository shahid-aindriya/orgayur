import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:orgayur/app/colors/colors.dart';
import 'package:orgayur/app/modules/otp_screen/views/otp_screen_view.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '../controllers/login_screen_controller.dart';

class LoginScreenView extends GetView<LoginScreenController> {
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
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Sign In / Sign Up",
                            style: GoogleFonts.roboto(
                                fontSize: 20.sp, fontWeight: FontWeight.w400),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 5.h,
                      ),
                      TextFormField(
                        maxLength: 10,
                        keyboardType: TextInputType.numberWithOptions(),
                        decoration: InputDecoration(
                            hintText: "Enter your mobile number"),
                      ),
                      SizedBox(
                        height: 17.h,
                      ),
                      // Figma Flutter Generator Rectangle21Widget - RECTANGLE
                      InkWell(
                        onTap: () {
                          Get.to(OtpScreenView());
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
                            "Request OTP",
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
      ),
    );
  }
}
