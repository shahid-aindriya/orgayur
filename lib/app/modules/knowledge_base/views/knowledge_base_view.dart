import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/knowledge_base_controller.dart';

class KnowledgeBaseView extends GetView<KnowledgeBaseController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('KnowledgeBaseView'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'KnowledgeBaseView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
