import 'package:flutter/material.dart';
import 'package:foodpal/app/res/routes/routes_name.dart';
import 'package:foodpal/app/utils/notification.dart';
import 'package:foodpal/app/utils/snackbar.dart';
import 'package:get/get.dart';

import '../view/bottom_app_bar/bottom_navigation_bar.dart';

class RegisterScreeContoler extends GetxController {
  final phone_controller = TextEditingController();
  final email_controller = TextEditingController();
  final name_controller = TextEditingController();

  validation(BuildContext context) {
    if (phone_controller.value.text.isEmpty ||
        email_controller.value.text.isEmpty ||
        name_controller.value.text.isEmpty) {
      CustomNotification.showErrorNotification(
          context: context,
          title: 'Field Error',
          subtitle: 'Please check the field');
    } else {
      CustomNotification.showSuccessNotification(
          context: context,
          title: 'Register Successfuly',
          subtitle: 'WELCOME TO FOODPAL');

      Get.offNamed(RouteName.bottomNavigatorFile);
    }
  }
}
