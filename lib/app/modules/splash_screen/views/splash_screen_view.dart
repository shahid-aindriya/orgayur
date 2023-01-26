import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:orgayur/app/colors/colors.dart';

import '../controllers/splash_screen_controller.dart';

class SplashScreenView extends GetView<SplashScreenController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: bgcolor,
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset("assets/images/orgayurLogo.png"),
              ],
            )
          ],
        ));
  }
}
