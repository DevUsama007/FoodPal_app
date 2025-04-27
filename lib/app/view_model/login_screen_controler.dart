import 'package:flutter/material.dart';
import 'package:foodpal/app/res/routes/routes_name.dart';
import 'package:foodpal/app/utils/snackbar.dart';
import 'package:get/get.dart';

class LoginScreenControler extends GetxController {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  validation() {
    if (emailController.value.text.isEmpty ||
        passwordController.value.text.isEmpty) {
      CustomSnackbar.showError(
          showDismiss: false, title: 'error'.tr, message: "error_message".tr);
    } else {
      print(emailController.value.text.toString());
      print(passwordController.value.text.toString());

      CustomSnackbar.showSuccess(
          showDismiss: false,
          title: emailController.value.text,
          message: passwordController.value.text);
      Get.offNamed(RouteName.bottomNavigatorFile);
      // Get.toNamed(RouteName.homeScreen);
    }
  }
}
