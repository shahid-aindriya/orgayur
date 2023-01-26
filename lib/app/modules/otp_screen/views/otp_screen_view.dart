import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:orgayur/app/colors/colors.dart';
import 'package:orgayur/app/modules/location_screen/views/location_screen_view.dart';
import 'package:otp_text_field/otp_field.dart';
import 'package:otp_text_field/otp_field_style.dart';
import 'package:otp_text_field/style.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '../controllers/otp_screen_controller.dart';

class OtpScreenView extends GetView<OtpScreenController> {
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
                        SizedBox(height: 4.h),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Enter the OTP",
                              style: GoogleFonts.roboto(
                                  fontSize: 21.sp, fontWeight: FontWeight.w400),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 5.h,
                        ),
                        OTPTextField(
                            otpFieldStyle: OtpFieldStyle(
                                disabledBorderColor: Colors.black,
                                borderColor: Colors.black,
                                enabledBorderColor:
                                    Color.fromARGB(255, 0, 0, 0)),
                            length: 4,
                            width: MediaQuery.of(context).size.width,
                            textFieldAlignment: MainAxisAlignment.spaceAround,
                            fieldWidth: 60,
                            fieldStyle: FieldStyle.underline,
                            outlineBorderRadius: 16,
                            style: GoogleFonts.roboto(fontSize: 25.sp),
                            onChanged: (pin) {
                              print("Changed: $pin");
                            },
                            onCompleted: (pin) {
                              print("Completed: $pin");
                            }),
                        SizedBox(
                          height: 5.h,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "An OTP has been sent to +91 95223 44551",
                              style: GoogleFonts.roboto(
                                  color: greyColorText,
                                  fontWeight: FontWeight.w300),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 10.h,
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 3.w),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Didn’t recieved?",
                                style: GoogleFonts.roboto(
                                    fontWeight: FontWeight.w300,
                                    color: greyColorText),
                              ),
                              Text(
                                "Resend",
                                style: GoogleFonts.roboto(
                                    decorationThickness: 2,
                                    decoration: TextDecoration.underline,
                                    fontWeight: FontWeight.w300,
                                    color: greyColorText),
                              )
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 10.h,
                        ),
                        // Figma Flutter Generator Rectangle21Widget - RECTANGLE
                        InkWell(
                          onTap: () {
                            Get.to(LocationScreenView());
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
                              "Create Account",
                              style: GoogleFonts.roboto(color: Colors.white),
                            )),
                          ),
                        ),
                        // Figma Flutter Generator Rectangle21Widget - RECTANGLE
                       
                      
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
