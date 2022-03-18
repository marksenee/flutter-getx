import 'package:get/get.dart';

class Controller extends GetxController {
  int counter = 0;
  void increment() {
    counter++;
    update();
  }

  // Rx 선언 방법 3가지
  RxInt firstCounter = 0.obs;
  final secondCounter = Rx<int>(0);
  final thirdCounter = RxInt(0);

  void increment2() {
    firstCounter.value++;
  }

}
