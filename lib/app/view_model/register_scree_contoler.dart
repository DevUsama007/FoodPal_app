import 'package:flutter/material.dart';
import 'package:foodpal/app/res/routes/routes_name.dart';
import 'package:foodpal/app/utils/snackbar.dart';
import 'package:get/get.dart';

import '../view/bottom_app_bar/bottom_navigation_bar.dart';

class RegisterScreeContoler extends GetxController {
  final phone_controller = TextEditingController();
  final email_controller = TextEditingController();
  final name_controller = TextEditingController();

  validation() {
    if (phone_controller.value.text.isEmpty ||
        email_controller.value.text.isEmpty ||
        name_controller.value.text.isEmpty) {
      CustomSnackbar.showError(title: "error".tr, message: "error_message".tr);
    } else {
      CustomSnackbar.showSuccess(
          showDismiss: false,
          title: email_controller.value.text,
          message: phone_controller.value.text);

      Get.offNamed(RouteName.bottomNavigatorFile);
    }
  }
}
