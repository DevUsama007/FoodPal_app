import 'package:get/get.dart';

class SplashScreenControler extends GetxController {
  RxInt delay = 3.obs;
  show() {
    print("object");
  }

  splashDelayer() {
    Future.delayed(Duration(seconds: 3), () {
      print("object time completed");
    });
  }
}
