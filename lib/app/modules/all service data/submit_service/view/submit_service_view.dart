import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:orgayur/app/modules/all%20product%20data/checkout/views/checkout_view.dart';
import 'package:orgayur/app/modules/all%20service%20data/submit_service/controller/submit_service_controller.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '../../../../colors/colors.dart';

class SubmitServiceView extends GetView<SubmitServiceController> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      backgroundColor: bgcolor,
      appBar: AppBar(
        backgroundColor: whiteText,
        elevation: 0,
        leading: IconButton(
            onPressed: () {
              Get.back();
            },
            icon: Icon(
              Icons.arrow_back,
              color: black,
            )),
      ),
      body: ListView(
        children: [
          Padding(
            padding: EdgeInsets.only(left: 5.w, right: 5.w, top: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Card(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        Container(
                          width: 120,
                          height: 100,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: Image.asset(
                              "assets/images/submit_service_image.png",
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Expanded(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  Flexible(
                                    child: AutoSizeText(
                                      "Garden Cleaning Servi... ",
                                      minFontSize: 18,
                                      maxFontSize: 18,
                                      overflow: TextOverflow.fade,
                                      maxLines: 2,
                                      style: GoogleFonts.roboto(
                                        height: 1.4,
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              Text("₹280",
                                  style: GoogleFonts.jost(
                                      height: 1.2,
                                      color: greenGradient2,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 18)),
                              Text(
                                "Kakkanad",
                                style: GoogleFonts.roboto(
                                    fontWeight: FontWeight.w500,
                                    height: 1.4,
                                    fontSize: 16.sp),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Padding(
                  padding:
                      const EdgeInsets.only(left: 8.0, right: 8, bottom: 10),
                  child: Divider(
                    thickness: 1,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 14.0, bottom: 6),
                  child: Text(
                    "Your Name",
                    style: GoogleFonts.roboto(fontWeight: FontWeight.w500),
                  ),
                ),
                TextFormField(
                  keyboardType: TextInputType.emailAddress,
                  enabled: true,
                  style: GoogleFonts.roboto(
                      fontSize: 16.sp, color: Color.fromRGBO(0, 0, 0, 1)),
                  decoration: InputDecoration(
                      hintText: "Enter your name",
                      contentPadding: const EdgeInsets.symmetric(
                          vertical: 17.0, horizontal: 10),
                      enabled: true,
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(16),
                          borderSide: BorderSide(width: 0, color: whiteText)),
                      errorBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(16),
                          borderSide: BorderSide(width: 0, color: whiteText)),
                      filled: true,
                      focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(width: 0, color: whiteText),
                          borderRadius: BorderRadius.circular(16)),
                      fillColor: whiteText,
                      focusColor: whiteText),
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
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 14.0, bottom: 6),
                  child: Text(
                    "Your Phone Number",
                    style: GoogleFonts.roboto(fontWeight: FontWeight.w500),
                  ),
                ),
                TextFormField(
                  keyboardType: TextInputType.emailAddress,
                  enabled: true,
                  style: GoogleFonts.roboto(
                      fontSize: 16.sp, color: Color.fromRGBO(0, 0, 0, 1)),
                  decoration: InputDecoration(
                      hintText: "Enter your number",
                      contentPadding: const EdgeInsets.symmetric(
                          vertical: 17.0, horizontal: 10),
                      enabled: true,
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(16),
                          borderSide: BorderSide(width: 0, color: whiteText)),
                      errorBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(16),
                          borderSide: BorderSide(width: 0, color: whiteText)),
                      filled: true,
                      focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(width: 0, color: whiteText),
                          borderRadius: BorderRadius.circular(16)),
                      fillColor: whiteText,
                      focusColor: whiteText),
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
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 14.0, bottom: 6),
                  child: Text(
                    "Your Email",
                    style: GoogleFonts.roboto(fontWeight: FontWeight.w500),
                  ),
                ),
                TextFormField(
                  keyboardType: TextInputType.emailAddress,
                  enabled: true,
                  style: GoogleFonts.roboto(
                      fontSize: 16.sp, color: Color.fromRGBO(0, 0, 0, 1)),
                  decoration: InputDecoration(
                      hintText: "Enter your email",
                      contentPadding: const EdgeInsets.symmetric(
                          vertical: 17.0, horizontal: 10),
                      enabled: true,
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(16),
                          borderSide: BorderSide(width: 0, color: whiteText)),
                      errorBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(16),
                          borderSide: BorderSide(width: 0, color: whiteText)),
                      filled: true,
                      focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(width: 0, color: whiteText),
                          borderRadius: BorderRadius.circular(16)),
                      fillColor: whiteText,
                      focusColor: whiteText),
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
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 14.0, bottom: 6),
                  child: Text(
                    "Query",
                    style: GoogleFonts.roboto(fontWeight: FontWeight.w500),
                  ),
                ),
                TextFormField(
                  keyboardType: TextInputType.emailAddress,
                  enabled: true,
                  style: GoogleFonts.roboto(
                      fontSize: 16.sp, color: Color.fromRGBO(0, 0, 0, 1)),
                  maxLines: 8,
                  decoration: InputDecoration(
                      hintText: "type something.....",
                      contentPadding: const EdgeInsets.symmetric(
                          vertical: 17.0, horizontal: 10),
                      enabled: true,
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(16),
                          borderSide: BorderSide(width: 0, color: whiteText)),
                      errorBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(16),
                          borderSide: BorderSide(width: 0, color: whiteText)),
                      filled: true,
                      focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(width: 0, color: whiteText),
                          borderRadius: BorderRadius.circular(16)),
                      fillColor: whiteText,
                      focusColor: whiteText),
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
                  height: 5.h,
                ),
              ],
            ),
          )
        ],
      ),
      bottomNavigationBar: Container(
        height: 60,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                Get.to(CheckoutView());
              },
              child: Text("submit"),
              style: ButtonStyle(
                  fixedSize: MaterialStateProperty.all(Size(70.w, 30)),
                  backgroundColor: MaterialStateProperty.all(greenGradient2),
                  shape: MaterialStateProperty.all(RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15)))),
            ),
          ],
        ),
      ),
    );
  }
}
