import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:orgayur/app/modules/all%20service%20data/service/extra%20Screen/service_provider.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '../../../../colors/colors.dart';

class ServiceDetails extends StatelessWidget {
  const ServiceDetails({super.key});

  @override
  Widget build(BuildContext context) {
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
        title: Text(
          'Category name',
          style: GoogleFonts.roboto(
              color: black, fontSize: 18, fontWeight: FontWeight.w500),
        ),
      ),
      body: ListView(
        children: [
          Padding(
            padding:
                EdgeInsets.only(left: 5.w, right: 5.w, bottom: 1.h, top: 2.h),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Top Brands",
                  style: GoogleFonts.roboto(
                      color: greenGradient2,
                      fontSize: 18.5.sp,
                      fontWeight: FontWeight.w500),
                ),
                InkWell(
                  onTap: () {},
                  child: Text(
                    "View all",
                    style: GoogleFonts.roboto(
                        fontSize: 15.5.sp,
                        fontWeight: FontWeight.w400,
                        color: greyColorText),
                  ),
                )
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 2.w, top: 1.h),
            child: Container(
              height: 140,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 10,
                  itemBuilder: (context, index) {
                    return InkWell(
                      onTap: () {
                        Get.to(ServiceProviderScreen());
                      },
                      child: Card(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10)),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                height: 80,
                                child: ClipRRect(
                                  borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(10),
                                      topRight: Radius.circular(10)),
                                  child: Image.asset(
                                    "assets/images/service_detail_image.png",
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 8.0),
                                child: Row(
                                  children: [
                                    Text(
                                      "Farm Agro",
                                      style: GoogleFonts.jost(
                                          fontWeight: FontWeight.w400,
                                          fontSize: 14),
                                    ),
                                  ],
                                ),
                              )
                            ],
                          )),
                    );
                  }),
            ),
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
                            Image.asset("assets/images/service_card_logo.png"),
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
          ),
          Padding(
            padding:
                EdgeInsets.only(left: 5.w, right: 5.w, bottom: 1.h, top: 2.h),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Featued Services",
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
                            Image.asset("assets/images/service_card_logo.png"),
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
      ),
    );
  }
}
