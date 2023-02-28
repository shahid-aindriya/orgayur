import 'package:get/get.dart';

class ProductDetailsController extends GetxController {
  //TODO: Implement ProductDetailsController

  final count = 0.obs;

  void increment() => count.value++;
  RxInt buttonVal = RxInt(0);
}
