import 'package:flutter/material.dart';
import 'package:foodpal/app/res/routes/routes_name.dart';
import 'package:foodpal/app/utils/notification.dart';
import 'package:foodpal/app/utils/snackbar.dart';
import 'package:get/get.dart';

class LoginScreenControler extends GetxController {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  validation(BuildContext context) {
    if (emailController.value.text.isEmpty ||
        passwordController.value.text.isEmpty) {
      CustomNotification.showErrorNotification(
          context: context,
          title: 'Field Error',
          subtitle: 'Please check the field');
    } else {
      CustomNotification.showSuccessNotification(
          context: context,
          title: 'Login Successful',
          subtitle: 'WELCOME TO FOODPAL');

      Get.offNamed(RouteName.bottomNavigatorFile);
      // Get.toNamed(RouteName.homeScreen);
    }
  }
}
