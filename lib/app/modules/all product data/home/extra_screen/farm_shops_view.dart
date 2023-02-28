import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:orgayur/app/modules/all%20product%20data/product_details/views/product_details_view.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '../../../../colors/colors.dart';
import '../controllers/home_controller.dart';

class FarmShopsView extends GetView<HomeController> {
  const FarmShopsView({super.key, required this.homeController});
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
          "Farm Shop",
          style: GoogleFonts.roboto(
              color: Colors.black, fontSize: 20, fontWeight: FontWeight.w500),
        ),
      ),
      body: ListView(
        children: [
          // Figma Flutter Generator Group281Widget - GROUP
          Container(
              width: 100.w,
              height: 340,
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
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Card(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          Wrap(
                            children: [
                              Container(
                                height: 100,
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(10),
                                  child: Image.asset(
                                    "assets/images/farm_shops_image.png",
                                    fit: BoxFit.contain,
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: 20,
                              ),
                              Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Farm Shop ",
                                    style: GoogleFonts.roboto(
                                        height: 1.4,
                                        fontWeight: FontWeight.w600,
                                        fontSize: 18.sp),
                                  ),
                                  Text(
                                    "Fertilizer",
                                    style: GoogleFonts.roboto(
                                        color: greyColorText,
                                        height: 1.4,
                                        fontWeight: FontWeight.w400,
                                        fontSize: 15.sp),
                                  ),
                                  Text(
                                    "Kakkanad",
                                    style: GoogleFonts.roboto(
                                        fontWeight: FontWeight.w500,
                                        height: 1.4,
                                        fontSize: 16.sp),
                                  )
                                ],
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Positioned(
                    top: 140,
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
                              image: AssetImage('assets/images/Group 244.png'),
                              fit: BoxFit.fitWidth),
                        ))),
              ])),
          Padding(
            padding: EdgeInsets.only(left: 3.w, right: 3.w, bottom: 1.h),
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
                          width: 0, color: Color.fromARGB(255, 255, 255, 255))),
                  filled: true,
                  focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                          width: 0, color: Color.fromARGB(255, 255, 255, 255)),
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
          Padding(
            padding: EdgeInsets.only(left: 5.w, right: 5.w, top: 10),
            child: Text(
              "Shop by Categories",
              style: GoogleFonts.roboto(
                  fontSize: 18.5.sp, fontWeight: FontWeight.w500),
            ),
          ),

          Padding(
            padding: EdgeInsets.only(left: 2.w, top: 1.h),
            child: Container(
              height: 110,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 10,
                  itemBuilder: (context, index) {
                    return InkWell(
                      onTap: () {
                        homeController.selectedIndexs.value = index;
                      },
                      child: Obx(() {
                        return Card(
                            color: homeController.selectedIndexs.value == index
                                ? greenGradient2
                                : whiteText,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10)),
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                children: [
                                  CircleAvatar(
                                    radius: 30,
                                    backgroundImage: AssetImage(
                                        "assets/images/popular_item.png"),
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Text(
                                    "Equipments",
                                    style: GoogleFonts.roboto(
                                        color: homeController
                                                    .selectedIndexs.value ==
                                                index
                                            ? whiteText
                                            : Colors.black),
                                  )
                                ],
                              ),
                            ));
                      }),
                    );
                  }),
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
                              onTap: () {
                                Get.to(ProductDetailsView());
                              },
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
                                        // IconButton(
                                        //     onPressed: () {},
                                        //     icon: Icon(
                                        //       Icons.favorite,
                                        //       color: Colors.grey,
                                        //     ))
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
                                Text("Pack of 1",
                                    style: GoogleFonts.roboto(
                                        fontSize: 13.sp,
                                        fontWeight: FontWeight.w400)),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 4, right: 10),
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
                                Image.asset("assets/images/bxs_cart-add.png")
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
