import 'package:dotted_line/dotted_line.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '../../../colors/colors.dart';
import '../controllers/cart_controller.dart';

class CartView extends GetView<CartController> {
  const CartView({Key? key}) : super(key: key);
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
            'My Cart',
            style: GoogleFonts.roboto(
                color: black, fontSize: 18, fontWeight: FontWeight.w500),
          ),
        ),
        body: ListView(
          children: [
            Padding(
              padding: EdgeInsets.only(
                top: 2.h,
                left: 5.w,
                right: 5.w,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "1 Items",
                    style: GoogleFonts.roboto(color: greyColorText),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  ListTile(
                    tileColor: Colors.white,
                    isThreeLine: true,
                    leading: Container(
                      child: ClipRRect(
                        child: Image.asset("assets/images/image_for_cart.png"),
                      ),
                    ),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)),
                    title: Text("Garden Pipe"),
                    subtitle: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text("Product Id :12235554448"),
                        Text("1.0 pc")
                      ],
                    ),
                    trailing: Column(
                      children: [
                        Text("₹280",
                            style: GoogleFonts.jost(
                                color: greenGradient2,
                                fontWeight: FontWeight.w600,
                                fontSize: 18)),
                        Flexible(
                            child: IconButton(
                                onPressed: () {}, icon: Icon(Icons.delete)))
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Container(
                    width: 100.w,
                    child: Wrap(
                      children: [
                        Container(
                          width: 70.w,
                          child: TextFormField(
                            enabled: true,
                            style: GoogleFonts.roboto(
                                fontSize: 18,
                                color: Color.fromRGBO(0, 0, 0, 1)),
                            decoration: InputDecoration(
                                hintStyle: GoogleFonts.roboto(
                                  fontSize: 18,
                                  fontWeight: FontWeight.w300,
                                  height: 1.1725,
                                  color: Color.fromARGB(255, 0, 0, 0),
                                ),
                                hintText: "Enter promo code",
                                contentPadding: const EdgeInsets.symmetric(
                                    vertical: 18.0, horizontal: 18),
                                enabled: true,
                                enabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.only(
                                        bottomLeft: Radius.circular(16),
                                        topLeft: Radius.circular(16)),
                                    borderSide:
                                        BorderSide(width: 0, color: whiteText)),
                                filled: true,
                                disabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.only(
                                        bottomLeft: Radius.circular(16),
                                        topLeft: Radius.circular(16)),
                                    borderSide:
                                        BorderSide(width: 0, color: whiteText)),
                                focusedBorder: OutlineInputBorder(
                                    borderSide:
                                        BorderSide(width: 0, color: whiteText),
                                    borderRadius: BorderRadius.only(
                                        bottomLeft: Radius.circular(16),
                                        topLeft: Radius.circular(16))),
                                fillColor: whiteText,
                                focusColor: whiteText),
                          ),
                        ),
                        InkWell(
                            onTap: () {
                              // controller.pickimage();
                            },
                            child: Container(
                                height: 56,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.only(
                                      topRight: Radius.circular(10),
                                      bottomRight: Radius.circular(10)),
                                  border: Border(),
                                  gradient: LinearGradient(
                                    begin: Alignment(-0.934, -1),
                                    end: Alignment(1.125, 1.333),
                                    colors: <Color>[
                                      greenGradient2,
                                      greenGradient1
                                    ],
                                    stops: <double>[0, 1],
                                  ),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Color(0x3f000000),
                                      offset: Offset(0, 0.7870440483),
                                      blurRadius: 2.7546541691,
                                    ),
                                  ],
                                ),
                                child: ElevatedButton(
                                  style: ButtonStyle(
                                      elevation: MaterialStateProperty.all(0),
                                      backgroundColor:
                                          MaterialStateProperty.all(
                                              Colors.transparent)),
                                  onPressed: () {},
                                  child: Text(
                                    'Apply',
                                    style: GoogleFonts.roboto(
                                      fontSize: 18,
                                      fontWeight: FontWeight.w400,
                                      height: 1.2110513051,
                                      color: Color(0xffffffff),
                                    ),
                                  ),
                                ))),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.only(bottom: 15, left: 10, right: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Product Price",
                          style: GoogleFonts.roboto(
                              color: greyColorText,
                              fontSize: 20,
                              fontWeight: FontWeight.w400),
                        ),
                        Text(
                          "₹1000",
                          style: GoogleFonts.roboto(
                              color: greyColorText,
                              fontSize: 20,
                              fontWeight: FontWeight.w400),
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.only(bottom: 15, left: 10, right: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "GST(18%)",
                          style: GoogleFonts.roboto(
                              color: greyColorText,
                              fontSize: 20,
                              fontWeight: FontWeight.w400),
                        ),
                        Text(
                          "₹180",
                          style: GoogleFonts.roboto(
                              color: greyColorText,
                              fontSize: 20,
                              fontWeight: FontWeight.w400),
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.only(bottom: 15, left: 10, right: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Delivery Charge",
                          style: GoogleFonts.roboto(
                              color: greyColorText,
                              fontSize: 20,
                              fontWeight: FontWeight.w400),
                        ),
                        Text(
                          "₹100",
                          style: GoogleFonts.roboto(
                              color: greyColorText,
                              fontSize: 20,
                              fontWeight: FontWeight.w400),
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.only(bottom: 15, left: 10, right: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Delivery GST",
                          style: GoogleFonts.roboto(
                              color: greyColorText,
                              fontSize: 20,
                              fontWeight: FontWeight.w400),
                        ),
                        Text(
                          "₹18",
                          style: GoogleFonts.roboto(
                              color: greyColorText,
                              fontSize: 20,
                              fontWeight: FontWeight.w400),
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 10, right: 10, bottom: 10),
                    child: DottedLine(),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.only(bottom: 15, left: 10, right: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Total Amount",
                          style: GoogleFonts.roboto(
                              color: black,
                              fontSize: 20,
                              fontWeight: FontWeight.w500),
                        ),
                        Text(
                          "₹1298",
                          style: GoogleFonts.roboto(
                              color: black,
                              fontSize: 20,
                              fontWeight: FontWeight.w500),
                        )
                      ],
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      ElevatedButton(
                        onPressed: () {},
                        child: Text("Continue to Checkout"),
                        style: ButtonStyle(
                            fixedSize:
                                MaterialStateProperty.all(Size(70.w, 40)),
                            shape: MaterialStateProperty.all(
                                RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(30))),
                            backgroundColor:
                                MaterialStateProperty.all(greenGradient2)),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ],
        ));
  }
}
