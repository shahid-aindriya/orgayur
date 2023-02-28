import 'package:get/get.dart';

import '../controllers/orgayur_home_controller.dart';

class OrgayurHomeBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<OrgayurHomeController>(
      () => OrgayurHomeController(),
    );
  }
}
