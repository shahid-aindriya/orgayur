import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:orgayur/app/colors/colors.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '../controllers/myorders_controller.dart';

class MyordersView extends GetView<MyordersController> {
  const MyordersView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
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
              'My Orders',
              style: GoogleFonts.roboto(
                  color: black, fontSize: 18, fontWeight: FontWeight.w500),
            ),
          ),
          body: Column(
            children: [
              Container(
                color: whiteText,
                child: TabBar(
                    labelColor: greenGradient2,
                    labelStyle: GoogleFonts.roboto(
                        fontSize: 18, fontWeight: FontWeight.w400),
                    unselectedLabelColor: greyColorText,
                    indicatorColor: greenGradient2,
                    tabs: [
                      Tab(
                        child: Text("Products"),
                      ),
                      Tab(
                        child: Text("Services"),
                      )
                    ]),
              ),
              Expanded(
                  child: TabBarView(children: [ProductTab(), ServicesTab()]))
            ],
          )),
    );
  }
}

class ServicesTab extends StatelessWidget {
  const ServicesTab({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 4.w, right: 4.w, top: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 8.0, bottom: 10),
            child: Text("2 orders"),
          ),
          ListTile(
            tileColor: Colors.white,
            isThreeLine: true,
            leading: Container(
              child: ClipRRect(
                child: Image.asset("assets/images/image_for_cart.png"),
              ),
            ),
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
            title: Text("Garden Pipe"),
            subtitle: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text("Order Id :12235554448"),
                Row(
                  children: [
                    Text("₹280",
                        style: GoogleFonts.jost(
                            color: greenGradient2,
                            fontWeight: FontWeight.w600,
                            fontSize: 15)),
                    SizedBox(
                      width: 10,
                    ),
                    Text("3 items"),
                  ],
                )
              ],
            ),
            trailing: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Icon(Icons.arrow_forward_ios_rounded),
                Flexible(child: Text("Feb 12"))
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class ProductTab extends StatelessWidget {
  const ProductTab({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 4.w, right: 4.w, top: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 8.0, bottom: 10),
            child: Text("2 orders"),
          ),
          ListTile(
            tileColor: Colors.white,
            isThreeLine: true,
            leading: Container(
              child: ClipRRect(
                child: Image.asset("assets/images/image_for_cart.png"),
              ),
            ),
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
            title: Text("Garden Pipe"),
            subtitle: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text("Order Id :12235554448"),
                Row(
                  children: [
                    Text("₹280",
                        style: GoogleFonts.jost(
                            color: greenGradient2,
                            fontWeight: FontWeight.w600,
                            fontSize: 15)),
                    SizedBox(
                      width: 10,
                    ),
                    Text("3 items"),
                  ],
                )
              ],
            ),
            trailing: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Icon(Icons.arrow_forward_ios_rounded),
                Flexible(child: Text("Feb 12"))
              ],
            ),
          ),
        ],
      ),
    );
  }
}
