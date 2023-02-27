import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '../../../colors/colors.dart';
import '../controllers/user_profile_controller.dart';

class UserProfileView extends GetView<UserProfileController> {
  const UserProfileView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgcolor,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: whiteText,
        leading: Container(),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: 130,
                    child: ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: Image.asset(
                          "assets/images/profile_pic.png",
                          fit: BoxFit.contain,
                        )),
                  ),
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Philip",
                  style: GoogleFonts.roboto(
                      height: 1.4,
                      fontWeight: FontWeight.bold,
                      fontSize: 21.sp),
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // Figma Flutter Generator Rectangle21Widget - RECTANGLE
                Container(
                  width: 108,
                  height: 34,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(60),
                    gradient: LinearGradient(
                        begin: Alignment(1, 0),
                        end: Alignment(0, 1),
                        colors: [greenGradient2, greenGradient1]),
                  ),
                  child: ElevatedButton(
                      style: ButtonStyle(
                          elevation: MaterialStateProperty.all(0),
                          backgroundColor:
                              MaterialStateProperty.all(Colors.transparent)),
                      onPressed: () {},
                      child: Text(
                        "Edit profile",
                        style: GoogleFonts.roboto(
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                            letterSpacing: .2),
                      )),
                )
              ],
            ),
            SizedBox(
              height: 25,
            ),
            Container(
              decoration: BoxDecoration(
                  color: whiteText,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(40),
                      topRight: Radius.circular(40))),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    ListTile(
                      leading:
                          SvgPicture.asset("assets/images/ShoppingCart.svg"),
                      minLeadingWidth: 20,
                      title: Text(
                        "My Cart",
                        style: GoogleFonts.inter(
                            fontWeight: FontWeight.w500, fontSize: 18),
                      ),
                      trailing: IconButton(
                          onPressed: () {},
                          icon: Icon(Icons.arrow_forward_ios_rounded)),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 5.w, right: 8.w),
                      child: Divider(
                        thickness: 1,
                      ),
                    ),
                    ListTile(
                      leading: SvgPicture.asset("assets/images/Package.svg"),
                      minLeadingWidth: 20,
                      title: Text(
                        "My Orders",
                        style: GoogleFonts.inter(
                            fontWeight: FontWeight.w500, fontSize: 18),
                      ),
                      trailing: IconButton(
                          onPressed: () {},
                          icon: Icon(Icons.arrow_forward_ios_rounded)),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 5.w, right: 8.w),
                      child: Divider(
                        thickness: 1,
                      ),
                    ),
                    ListTile(
                      leading: SvgPicture.asset("assets/images/Storefront.svg"),
                      minLeadingWidth: 20,
                      title: Text(
                        "My Products",
                        style: GoogleFonts.inter(
                            fontWeight: FontWeight.w500, fontSize: 18),
                      ),
                      trailing: IconButton(
                          onPressed: () {},
                          icon: Icon(Icons.arrow_forward_ios_rounded)),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 5.w, right: 8.w),
                      child: Divider(
                        thickness: 1,
                      ),
                    ),
                    ListTile(
                      leading:
                          SvgPicture.asset("assets/images/ArrowSquareDown.svg"),
                      minLeadingWidth: 20,
                      title: Text(
                        "Recieved Orders",
                        style: GoogleFonts.inter(
                            fontWeight: FontWeight.w500, fontSize: 18),
                      ),
                      trailing: IconButton(
                          onPressed: () {},
                          icon: Icon(Icons.arrow_forward_ios_rounded)),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 5.w, right: 8.w),
                      child: Divider(
                        thickness: 1,
                      ),
                    ),
                    ListTile(
                      leading: SvgPicture.asset("assets/images/Wallet.svg"),
                      minLeadingWidth: 20,
                      title: Text(
                        "My Wallet",
                        style: GoogleFonts.inter(
                            fontWeight: FontWeight.w500, fontSize: 18),
                      ),
                      trailing: IconButton(
                          onPressed: () {},
                          icon: Icon(Icons.arrow_forward_ios_rounded)),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 5.w, right: 8.w),
                      child: Divider(
                        thickness: 1,
                      ),
                    ),
                    ListTile(
                      leading: SvgPicture.asset("assets/images/Heart.svg"),
                      minLeadingWidth: 20,
                      title: Text(
                        "My Wishlist",
                        style: GoogleFonts.inter(
                            fontWeight: FontWeight.w500, fontSize: 18),
                      ),
                      trailing: IconButton(
                          onPressed: () {},
                          icon: Icon(Icons.arrow_forward_ios_rounded)),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 5.w, right: 8.w),
                      child: Divider(
                        thickness: 1,
                      ),
                    ),
                    ListTile(
                      leading: SvgPicture.asset("assets/images/MapPin.svg"),
                      minLeadingWidth: 20,
                      title: Text(
                        "Saved Addresses",
                        style: GoogleFonts.inter(
                            fontWeight: FontWeight.w500, fontSize: 18),
                      ),
                      trailing: IconButton(
                          onPressed: () {},
                          icon: Icon(Icons.arrow_forward_ios_rounded)),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 5.w, right: 8.w),
                      child: Divider(
                        thickness: 1,
                      ),
                    ),
                    ListTile(
                      leading: SvgPicture.asset("assets/images/SignOut.svg"),
                      minLeadingWidth: 20,
                      title: Text(
                        "Logout",
                        style: GoogleFonts.inter(
                            fontWeight: FontWeight.w500, fontSize: 18),
                      ),
                      trailing: IconButton(
                          onPressed: () {},
                          icon: Icon(Icons.arrow_forward_ios_rounded)),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 5.w, right: 8.w),
                      child: Divider(
                        thickness: 1,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
