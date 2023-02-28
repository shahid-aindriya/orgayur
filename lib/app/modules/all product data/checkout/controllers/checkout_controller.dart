import 'package:get/get.dart';

class CheckoutController extends GetxController {
  //TODO: Implement CheckoutController

  final count = 0.obs;

  var isOn = false.obs;
  void increment() => count.value++;
  setSelectedRadio(val) {
    values = val;
    update();
  }

  final List<String> address = ['Address 1', 'Address 2', 'Address 3'];
  dynamic values;
  RxInt paymentValue = RxInt(0);
  selectPayment(value) {
    paymentValue.value = value;
    update();
  }

  void updateSelection(String value) {
    selectedOption.value = value;
  }

  RxString selectedOption = ''.obs;
}
