import 'package:get/get.dart';

class BottombarController extends GetxController {
  //TODO: Implement BottombarController

  final count = 0.obs;
  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {}
  void increment() => count.value++;
}
