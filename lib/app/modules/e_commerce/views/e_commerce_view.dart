import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/e_commerce_controller.dart';

class ECommerceView extends GetView<ECommerceController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ECommerceView'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'ECommerceView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
