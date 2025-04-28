import 'package:elegant_notification/elegant_notification.dart';
import 'package:elegant_notification/resources/arrays.dart';
import 'package:elegant_notification/resources/stacked_options.dart';
import 'package:flutter/material.dart';
import 'package:foodpal/app/res/app_text_styles/app_text_styles.dart';
import 'package:get/get_connect/http/src/interceptors/get_modifiers.dart';

class CustomNotification {
  static void showSuccessNotification(
      {required BuildContext context,
      required String title,
      required String subtitle}) {
    ElegantNotification.success(
      width: 360,
      isDismissable: false,
      animationCurve: Curves.bounceOut,
      stackedOptions: StackedOptions(
        key: 'top',
        type: StackedType.same,
        itemOffset: Offset(-5, -5),
      ),
      position: Alignment.topCenter,
      animation: AnimationType.fromTop,
      title: Text(
        title,
        style:
            AppTextStyles.customText(fontSize: 14, fontWeight: FontWeight.w500),
      ),
      description: Text(subtitle,
          style: AppTextStyles.customText(
              fontSize: 14, fontWeight: FontWeight.w400)),
      onDismiss: () {},
      onNotificationPressed: () {},
    ).show(context);
  }

  static void showErrorNotification(
      {required BuildContext context,
      required String title,
      required String subtitle}) {
    ElegantNotification.error(
      width: 360,
      isDismissable: false,
      animationCurve: Curves.bounceOut,
      stackedOptions: StackedOptions(
        key: 'top',
        type: StackedType.same,
        itemOffset: Offset(-5, -5),
      ),
      position: Alignment.topCenter,
      animation: AnimationType.fromTop,
      title: Text(
        title,
        style:
            AppTextStyles.customText(fontSize: 14, fontWeight: FontWeight.w500),
      ),
      description: Text(
        subtitle,
        style:
            AppTextStyles.customText(fontSize: 14, fontWeight: FontWeight.w400),
      ),
      onDismiss: () {},
      onNotificationPressed: () {},
    ).show(context);
  }
}
