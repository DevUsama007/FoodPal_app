import 'package:flutter/material.dart';
import 'package:foodpal/app/res/app_colors/colors.dart';
import 'package:get/get.dart';

class CustomSnackbar {
  static void showSuccess({
    required String title,
    required String message,
    SnackPosition position = SnackPosition.TOP,
    Duration duration = const Duration(seconds: 3),
    bool showDismiss = true,
    bool iconPulse = true,
  }) {
    Get.snackbar(
      title,
      message,
      snackPosition: position,
      backgroundColor: Colors.white,
      colorText: AppColor.grey,
      borderRadius: 10,
      margin: const EdgeInsets.all(10),
      duration: duration,
      icon:
          Icon(Icons.sentiment_satisfied_alt_sharp, color: AppColor.lightGrey),
      shouldIconPulse: iconPulse,
      mainButton: showDismiss
          ? TextButton(
              onPressed: () => Get.back(),
              child: const Text(
                'DISMISS',
                style: TextStyle(color: Colors.white),
              ),
            )
          : null,
    );
  }

  static void showError({
    required String title,
    required String message,
    SnackPosition position = SnackPosition.TOP,
    Duration duration = const Duration(seconds: 4),
    bool showDismiss = true,
  }) {
    Get.snackbar(
      title,
      message,
      snackPosition: position,
      backgroundColor: Colors.grey,
      colorText: Colors.white,
      borderRadius: 10,
      margin: const EdgeInsets.all(10),
      duration: duration,
      icon: const Icon(Icons.error_outline, color: Colors.white),
      mainButton: showDismiss
          ? TextButton(
              onPressed: () => Get.back(),
              child: const Text(
                'DISMISS',
                style: TextStyle(color: Colors.white),
              ),
            )
          : null,
    );
  }

  static void showInfo({
    required String title,
    required String message,
    SnackPosition position = SnackPosition.TOP,
    Duration duration = const Duration(seconds: 3),
    bool showDismiss = true,
  }) {
    Get.snackbar(
      title,
      message,
      snackPosition: position,
      backgroundColor: Colors.blue[600],
      colorText: Colors.white,
      borderRadius: 10,
      margin: const EdgeInsets.all(10),
      duration: duration,
      icon: const Icon(Icons.info_outline, color: Colors.white),
      mainButton: showDismiss
          ? TextButton(
              onPressed: () => Get.back(),
              child: const Text(
                'DISMISS',
                style: TextStyle(color: Colors.white),
              ),
            )
          : null,
    );
  }
}
