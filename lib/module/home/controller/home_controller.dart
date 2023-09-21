import 'package:get/get.dart';

class HomeController extends GetxController {
  final number = 1.obs;
  void increment() {
    number.value++;
  }

  void decrement() {
    if (number.value > 0) {
      number.value--;
    }
  }
}
