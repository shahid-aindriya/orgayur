import 'package:get/get.dart';

import '../controllers/e_commerce_controller.dart';

class ECommerceBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ECommerceController>(
      () => ECommerceController(),
    );
  }
}
