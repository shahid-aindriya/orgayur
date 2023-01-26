import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/machinery_controller.dart';

class MachineryView extends GetView<MachineryController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('MachineryView'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'MachineryView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
