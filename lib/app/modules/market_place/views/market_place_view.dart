import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '../../../colors/colors.dart';
import '../controllers/market_place_controller.dart';

class MarketPlaceView extends GetView<MarketPlaceController> {
  const MarketPlaceView({Key? key}) : super(key: key);
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
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(20),
                bottomRight: Radius.circular(20),
              ),
              gradient: LinearGradient(
                  begin: Alignment(0.7756076455116272, -0.06486408412456512),
                  end: Alignment(0.28273797035217285, 0.7756076455116272),
                  colors: [
                    Color.fromRGBO(1, 134, 54, 1),
                    Color.fromRGBO(80, 190, 143, 1)
                  ]),
            ),
            child: Padding(
              padding:
                  EdgeInsets.only(top: 2.h, left: 3.w, right: 3.w, bottom: 2.h),
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
                mainAxisSpacing: 5, childAspectRatio: 1, crossAxisCount: 4),
            itemBuilder: (context, index) {
              return Column(
                children: [
                  Image.asset("assets/images/markerplace_category.png"),
                  SizedBox(
                    height: 4,
                  ),
                  Text(
                    "Fresh Fruits",
                    style: GoogleFonts.roboto(
                        fontSize: 14.sp, fontWeight: FontWeight.w300),
                  )
                ],
              );
            },
          ),

          Padding(
            padding: EdgeInsets.only(top: 1.h, left: 5.w, right: 5.w),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Best Selling Products",
                  style: GoogleFonts.roboto(
                      color: greenGradient2,
                      fontSize: 18.5.sp,
                      fontWeight: FontWeight.w500),
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
                crossAxisCount: 2, childAspectRatio: .77),
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  child: Card(
                    elevation: 10,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15.0)),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 8, top: 6),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Flexible(
                            child: InkWell(
                              onTap: () {},
                              child: Container(
                                  width: 100.w,
                                  height: 18.h,
                                  decoration: BoxDecoration(
                                      image: DecorationImage(
                                    image: AssetImage(
                                      "assets/images/image 2.png",
                                    ),
                                    fit: BoxFit.contain,
                                  )),
                                  child: Padding(
                                    padding: const EdgeInsets.all(0.0),
                                    child: Row(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      children: [
                                        // Figma Flutter Generator Rectangle33Widget - RECTANGLE
                                        IconButton(
                                            onPressed: () {},
                                            icon: Icon(
                                              Icons.favorite,
                                              color: Colors.grey,
                                            ))
                                      ],
                                    ),
                                  )),
                            ),
                          ),
                          Text(
                            "Broccoli Florets",
                            style: GoogleFonts.roboto(
                                fontSize: 17.sp, fontWeight: FontWeight.w500),
                          ),
                          SizedBox(
                            height: 3,
                          ),
                          // Figma Flutter Generator Rectangle90Widget - RECTANGLE
                          Padding(
                            padding: const EdgeInsets.only(
                                right: 8, top: 2, bottom: 6),
                            child: Column(
                              children: [
                                Container(
                                  decoration: BoxDecoration(
                                      color: liteGrey,
                                      borderRadius: BorderRadius.circular(3)),
                                  child: Padding(
                                    padding: const EdgeInsets.only(
                                        left: 8.0, right: 8, top: 5, bottom: 5),
                                    child: Text("1 Kilo Grams",
                                        style: GoogleFonts.roboto(
                                            fontSize: 13.sp,
                                            fontWeight: FontWeight.w400)),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 4, right: 6),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "₹ 150",
                                  style: GoogleFonts.roboto(
                                      fontSize: 18.sp,
                                      color: Color.fromARGB(255, 1, 134, 54),
                                      fontWeight: FontWeight.w500),
                                ),
                                Container(
                                  height: 25,
                                  child: ElevatedButton(
                                      onPressed: () {},
                                      style: ButtonStyle(
                                          fixedSize: MaterialStateProperty.all(
                                              Size(80, 30)),
                                          padding: MaterialStateProperty.all(
                                              EdgeInsets.all(0)),
                                          backgroundColor:
                                              MaterialStateProperty.all(
                                                  greenGradient2)),
                                      child: Text(
                                        "Add to cart",
                                        style: GoogleFonts.roboto(fontSize: 10),
                                      )),
                                )
                                // Figma Flutter Generator Rectangle89Widget - RECTANGLE
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
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
