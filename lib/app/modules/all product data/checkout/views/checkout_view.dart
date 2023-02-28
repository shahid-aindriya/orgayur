import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:orgayur/app/modules/all%20product%20data/checkout/extra_screen/success_after_order.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '../../../../colors/colors.dart';
import '../controllers/checkout_controller.dart';

class CheckoutView extends GetView<CheckoutController> {
  CheckoutView({Key? key}) : super(key: key);
  @override
  final CheckoutController checkoutController = Get.put(CheckoutController());
  final _optionsGroup1 = ['Razorpay', 'Cash On Delivery'];
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
          'Checkout',
          style: GoogleFonts.roboto(
              color: black, fontSize: 18, fontWeight: FontWeight.w500),
        ),
      ),
      body: ListView(
        children: [
          Padding(
            padding: EdgeInsets.only(top: 2.h, left: 5.w, right: 5.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Delivery Address",
                  style: GoogleFonts.roboto(color: greyColorText),
                ),
                Card(
                  elevation: 0,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)),
                  child: Column(
                    children: [
                      GetBuilder<CheckoutController>(builder: (csd) {
                        return RadioListTile(
                          toggleable: true,
                          value: true,
                          activeColor: greenGradient2,
                          groupValue: checkoutController.values,
                          onChanged: (val) {
                            checkoutController.setSelectedRadio(val);
                          },
                          title: Text(
                            'Home',
                            style: GoogleFonts.roboto(
                              fontSize: 18,
                              fontWeight: FontWeight.w500,
                              height: 1.1725,
                            ),
                          ),
                        );
                      }),
                      Padding(
                        padding: EdgeInsets.only(left: 28, right: 20),
                        child: Row(
                          children: [
                            Flexible(
                              child: Text(
                                  "12AS , 4th floor, Blue well Building, Netaji Road Mahatma Gandhi Street, Central Square Bangalore, Kerala, 155 566",
                                  style: GoogleFonts.roboto(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w400,
                                    height: 1.1725,
                                  )),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                            left: 28, right: 20, top: 10, bottom: 10),
                        child: Row(
                          children: [
                            Flexible(
                                child: Text(
                              "+91 95565 66222",
                              style: GoogleFonts.roboto(
                                fontSize: 16,
                                fontWeight: FontWeight.w400,
                                height: 1.1725,
                              ),
                            )),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    SizedBox(
                      width: 5,
                    ),
                    ElevatedButton(
                        onPressed: () {},
                        style: ButtonStyle(
                            backgroundColor:
                                MaterialStateProperty.all(liteGreen),
                            shape: MaterialStateProperty.all(
                                RoundedRectangleBorder(
                                    side: BorderSide(color: greenGradient2),
                                    borderRadius: BorderRadius.circular(10)))),
                        child: Row(
                          children: [
                            Icon(
                              Icons.add,
                              color: greenGradient2,
                            ),
                            Text(
                              "Add New Address",
                              style: GoogleFonts.roboto(color: greenGradient2),
                            )
                          ],
                        )),
                  ],
                ),
                Padding(
                  padding: EdgeInsets.only(top: 18.0, bottom: 14, left: 5),
                  child: Text(
                    "Payment Method",
                    style: GoogleFonts.roboto(
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
                Container(
                    width: 100.w,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(13),
                      gradient: LinearGradient(
                          begin: Alignment(
                              1.0684057474136353, 0.011194117367267609),
                          end: Alignment(
                              -0.011194117367267609, 0.014712272211909294),
                          colors: [
                            Color.fromRGBO(255, 255, 255, 0.8500000238418579),
                            Color.fromRGBO(255, 255, 255, 0.6899999976158142)
                          ]),
                    ),
                    child: Column(
                      children: _optionsGroup1.map((option) {
                        return Obx(() => RadioListTile(
                              title: Text(option),
                              value: option,
                              activeColor: greenGradient2,
                              groupValue:
                                  checkoutController.selectedOption.value,
                              onChanged: (value) {
                                checkoutController.updateSelection(value!);
                              },
                            ));
                      }).toList(),
                    )),
              ],
            ),
          )
        ],
      ),
      bottomNavigationBar: Container(
        height: 70,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                Get.to(SuccessAfterOrder());
              },
              child: Text("Place Order"),
              style: ButtonStyle(
                  fixedSize: MaterialStateProperty.all(Size(70.w, 40)),
                  shape: MaterialStateProperty.all(RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30))),
                  backgroundColor: MaterialStateProperty.all(greenGradient2)),
            ),
          ],
        ),
      ),
    );
  }
}
