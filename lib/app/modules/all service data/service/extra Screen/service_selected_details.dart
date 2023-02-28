import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:orgayur/app/modules/all%20service%20data/submit_service/view/submit_service_view.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '../../../../colors/colors.dart';

class ServiceSelectedDetails extends StatelessWidget {
  const ServiceSelectedDetails({super.key});

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
          'Service Name',
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
                  // Container(
                  //   width: 66,
                  //   height: 22,
                  //   decoration: BoxDecoration(
                  //       color: greenGradient2,
                  //       borderRadius: BorderRadius.circular(5)),
                  //   child: Center(
                  //     child: Text(
                  //       "10% off",
                  //       style: GoogleFonts.jost(color: whiteText),
                  //     ),
                  //   ),
                  // ),
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
                      // Text(
                      //   "/ 20m",
                      //   style: GoogleFonts.roboto(
                      //       color: greyColorText,
                      //       fontWeight: FontWeight.w400,
                      //       fontSize: 16),
                      // )
                    ],
                  ),
                  Divider(thickness: 1),
                  // Text(
                  //   "Select Variant",
                  //   style: GoogleFonts.roboto(
                  //       fontWeight: FontWeight.w500, fontSize: 16),
                  // ),
                  Row(
                    children: [],
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
        ],
      ),
      bottomNavigationBar: Container(
        height: 60,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                Get.to(SubmitServiceView());
              },
              child: Text("Book services"),
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
