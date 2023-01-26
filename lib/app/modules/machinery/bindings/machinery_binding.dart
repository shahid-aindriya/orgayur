import 'package:get/get.dart';

import '../controllers/machinery_controller.dart';

class MachineryBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<MachineryController>(
      () => MachineryController(),
    );
  }
}
