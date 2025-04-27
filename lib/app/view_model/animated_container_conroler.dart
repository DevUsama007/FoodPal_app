import 'package:get/get.dart';

class AnimatedContainerConroler extends GetxController {
  RxDouble height = 50.0.obs;
  changeHeight() {
    print("click");
    if (height.value == 50) {
      height.value = 150;
      print(height.value.toString());
    } else {
      height.value = 50;

      print(height.value.toString());
    }
  }
}
