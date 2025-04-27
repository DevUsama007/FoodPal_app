import 'package:flutter/material.dart';
import 'package:foodpal/app/custom_widget/adds_container_widget.dart';
import 'package:foodpal/app/custom_widget/custom_appbar.dart';
import 'package:foodpal/app/custom_widget/notication_container.dart';
import 'package:foodpal/app/model/generic_model.dart/notification_model.dart';
import 'package:foodpal/app/res/app_colors/colors.dart';
import 'package:foodpal/app/res/app_text_styles/app_text_styles.dart';
import 'package:foodpal/app/res/assets/image_assets.dart';
import 'package:get/get.dart';

class NotificationScreen extends StatefulWidget {
  const NotificationScreen({super.key});

  @override
  State<NotificationScreen> createState() => _NotificationScreenState();
}

class _NotificationScreenState extends State<NotificationScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.homebackgroundColor,
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(kToolbarHeight),
        child: CustomAppbar(
            centerTitle: true,
            automaticallyImplyLeading: false,
            title: 'Notifications'),
      ),
      body: Container(
        width: Get.width,
        height: Get.height,
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "New Notification",
                style: AppTextStyles.customText(
                    fontSize: 16, fontWeight: FontWeight.bold),
              ).paddingOnly(bottom: 10),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: List.generate(
                  NotificationModel.allOffersList.length,
                  (index) {
                    return NotificationModel.allOffersList[index].newNotifi
                        ? NotificationContainerWidget(
                            title: NotificationModel.allOffersList[index].title,
                            imagePath:
                                NotificationModel.allOffersList[index].image,
                            validDate: NotificationModel
                                .allOffersList[index].validDate,
                            time:
                                NotificationModel.allOffersList[index].timeAgo,
                          )
                        : Container();
                  },
                ),
              ),
              Text(
                "This week",
                style: AppTextStyles.customText(
                    fontSize: 16, fontWeight: FontWeight.bold),
              ).paddingOnly(bottom: 10),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: List.generate(
                  NotificationModel.allOffersList.length,
                  (index) {
                    return !NotificationModel.allOffersList[index].newNotifi
                        ? NotificationContainerWidget(
                            title: NotificationModel.allOffersList[index].title,
                            imagePath:
                                NotificationModel.allOffersList[index].image,
                            validDate: NotificationModel
                                .allOffersList[index].validDate,
                            time:
                                NotificationModel.allOffersList[index].timeAgo,
                          )
                        : Container();
                  },
                ),
              ),
            ],
          ).paddingSymmetric(horizontal: 20),
        ),
      ),
    );
  }
}
