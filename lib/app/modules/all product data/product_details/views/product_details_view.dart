import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:orgayur/app/modules/all%20product%20data/cart/views/cart_view.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '../../../../colors/colors.dart';
import '../controllers/product_details_controller.dart';

class ProductDetailsView extends GetView<ProductDetailsController> {
  ProductDetailsView({Key? key}) : super(key: key);
  final ProductDetailsController productDetailsController =
      Get.put(ProductDetailsController());
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
          'Product Name',
          style: GoogleFonts.roboto(
              color: black, fontSize: 18, fontWeight: FontWeight.w500),
        ),
      ),
      body: ListView(
        children: [
          Padding(
            padding: EdgeInsets.only(top: 10, left: 4.w, right: 4.w),
            child: Container(
              width: 100.w,
              child: Card(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15)),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: 282,
                    width: 100.w,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Image.asset(
                        "assets/images/product_detail_image.png",
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16), color: whiteText),
            child: Padding(
              padding:
                  EdgeInsets.only(top: 10, right: 5.w, left: 5.w, bottom: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: 66,
                    height: 22,
                    decoration: BoxDecoration(
                        color: greenGradient2,
                        borderRadius: BorderRadius.circular(5)),
                    child: Center(
                      child: Text(
                        "10% off",
                        style: GoogleFonts.jost(color: whiteText),
                      ),
                    ),
                  ),
                  Text(
                    "Gardening Pipe",
                    style: GoogleFonts.roboto(
                        height: 1.7, fontWeight: FontWeight.w500, fontSize: 20),
                  ),
                  Row(
                    children: [
                      Text("₹280",
                          style: GoogleFonts.jost(
                              height: 1.2,
                              color: greenGradient2,
                              fontWeight: FontWeight.bold,
                              fontSize: 20)),
                      SizedBox(
                        width: 5,
                      ),
                      Text(
                        "/ 20m",
                        style: GoogleFonts.roboto(
                            color: greyColorText,
                            fontWeight: FontWeight.w400,
                            fontSize: 16),
                      )
                    ],
                  ),
                  Divider(thickness: 1),
                  Text(
                    "Select Variant",
                    style: GoogleFonts.roboto(
                        fontWeight: FontWeight.w500, fontSize: 16),
                  ),
                  Row(
                    children: [
                      Obx(() {
                        return ElevatedButton(
                            onPressed: () {
                              productDetailsController.buttonVal.value = 1;
                            },
                            style: ButtonStyle(
                                shape: MaterialStateProperty.all(
                                    RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(10),
                                        side:
                                            BorderSide(color: greenGradient1))),
                                backgroundColor: MaterialStateProperty.all(
                                    productDetailsController.buttonVal.value ==
                                            1
                                        ? greenGradient2
                                        : whiteText)),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  "10m  - ",
                                  style: GoogleFonts.roboto(
                                      color: productDetailsController
                                                  .buttonVal.value ==
                                              1
                                          ? whiteText
                                          : black),
                                ),
                                Text(
                                  " ₹140",
                                  style: GoogleFonts.roboto(
                                      fontWeight: FontWeight.bold,
                                      color: productDetailsController
                                                  .buttonVal.value ==
                                              1
                                          ? whiteText
                                          : black),
                                )
                              ],
                            ));
                      }),
                      SizedBox(width: 20),
                      Obx(() {
                        return ElevatedButton(
                            onPressed: () {
                              productDetailsController.buttonVal.value = 2;
                            },
                            style: ButtonStyle(
                                shape: MaterialStateProperty.all(
                                    RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(10),
                                        side:
                                            BorderSide(color: greenGradient1))),
                                backgroundColor: MaterialStateProperty.all(
                                    productDetailsController.buttonVal.value ==
                                            2
                                        ? greenGradient2
                                        : whiteText)),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  "20m  - ",
                                  style: GoogleFonts.roboto(
                                      color: productDetailsController
                                                  .buttonVal.value ==
                                              2
                                          ? whiteText
                                          : black),
                                ),
                                Text(
                                  " ₹280",
                                  style: GoogleFonts.roboto(
                                      fontWeight: FontWeight.bold,
                                      color: productDetailsController
                                                  .buttonVal.value ==
                                              2
                                          ? whiteText
                                          : black),
                                )
                              ],
                            ));
                      })
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 13.0, bottom: 6),
                    child: Text(
                      "Details",
                      style: GoogleFonts.roboto(
                          fontWeight: FontWeight.w500, fontSize: 18),
                    ),
                  ),
                  Wrap(
                    children: [
                      Column(
                        children: [
                          Text(
                            "Rivera",
                            style: GoogleFonts.roboto(
                                height: 1.5,
                                fontWeight: FontWeight.w300,
                                fontSize: 17),
                          ),
                          Text(
                            "Rivera",
                            style: GoogleFonts.roboto(
                                height: 1.5,
                                fontWeight: FontWeight.w300,
                                fontSize: 17),
                          ),
                          Text(
                            "Rivera",
                            style: GoogleFonts.roboto(
                                height: 1.5,
                                fontWeight: FontWeight.w300,
                                fontSize: 17),
                          ),
                          Text(
                            "Rivera",
                            style: GoogleFonts.roboto(
                                height: 1.5,
                                fontWeight: FontWeight.w300,
                                fontSize: 17),
                          )
                        ],
                      ),
                      SizedBox(
                        width: 10.w,
                      ),
                      Column(
                        children: [
                          Text(
                            "Consequat",
                            style: GoogleFonts.roboto(
                                height: 1.5,
                                fontWeight: FontWeight.w400,
                                fontSize: 17),
                          ),
                          Text(
                            "Consequat",
                            style: GoogleFonts.roboto(
                                height: 1.5,
                                fontWeight: FontWeight.w400,
                                fontSize: 17),
                          ),
                          Text(
                            "Consequat",
                            style: GoogleFonts.roboto(
                                height: 1.5,
                                fontWeight: FontWeight.w400,
                                fontSize: 17),
                          ),
                          Text(
                            "Consequat",
                            style: GoogleFonts.roboto(
                                height: 1.5,
                                fontWeight: FontWeight.w400,
                                fontSize: 17),
                          )
                        ],
                      )
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 13.0, bottom: 6),
                    child: Text(
                      "Description",
                      style: GoogleFonts.roboto(
                          fontWeight: FontWeight.w500, fontSize: 18),
                    ),
                  ),
                  Text(
                    "us pretium pharetra enim vitae. Egestas vitae aenean proin sagittis proin. Vulputate et arcu tortor ut id nec. Molestie ultrices quam pellentesque felis volutpat orci sed tortor non. Sed lectus elit gravida tellus at ac eu viverra at. Massa facilisis mauris tortor interdum tincidunt. Faucibus adipiscing mauris ",
                    style: GoogleFonts.roboto(
                        height: 1.7, fontWeight: FontWeight.w300),
                  )
                ],
              ),
            ),
          ),
          Padding(
            padding:
                EdgeInsets.only(left: 5.w, right: 4.w, bottom: 1.h, top: 1.3.h),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Similar items",
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
          GridView.builder(
            physics: NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            scrollDirection: Axis.vertical,
            itemCount: 2,
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
      bottomNavigationBar: Container(
        height: 60,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            ElevatedButton(
              onPressed: () {
                Get.to(CartView());
              },
              child: Text("Order Now"),
              style: ButtonStyle(
                  fixedSize: MaterialStateProperty.all(Size(40.w, 30)),
                  backgroundColor: MaterialStateProperty.all(greenGradient2),
                  shape: MaterialStateProperty.all(RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8)))),
            ),
            ElevatedButton(
              onPressed: () {},
              child: Text(
                "Add to Cart",
                style:
                    GoogleFonts.roboto(color: Color.fromARGB(255, 1, 134, 54)),
              ),
              style: ButtonStyle(
                  fixedSize: MaterialStateProperty.all(Size(40.w, 30)),
                  backgroundColor: MaterialStateProperty.all(liteGreen),
                  shape: MaterialStateProperty.all(RoundedRectangleBorder(
                      side: BorderSide(color: greenGradient2),
                      borderRadius: BorderRadius.circular(8)))),
            )
          ],
        ),
      ),
    );
  }
}
