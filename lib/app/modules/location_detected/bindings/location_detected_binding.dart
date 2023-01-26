import 'package:get/get.dart';

import '../controllers/location_detected_controller.dart';

class LocationDetectedBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<LocationDetectedController>(
      () => LocationDetectedController(),
    );
  }
}
