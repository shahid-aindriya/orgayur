import 'package:get/get.dart';

class HomeController extends GetxController {
  //TODO: Implement HomeController
  RxInt selectedIndexs = RxInt(-1);
  final count = 0.obs;

  @override
  void onClose() {}
  void increment() => count.value++;
}
