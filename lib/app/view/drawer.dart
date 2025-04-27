import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:foodpal/app/custom_widget/adds_container_widget.dart';
import 'package:foodpal/app/custom_widget/bottom_sheet/restart_widget.dart';
import 'package:foodpal/app/custom_widget/drawer_button.dart';
import 'package:foodpal/app/model/generic_model.dart/drawer_btn_model.dart';
import 'package:foodpal/app/res/app_colors/colors.dart';
import 'package:foodpal/app/res/app_text_styles/app_text_styles.dart';
import 'package:foodpal/app/utils/snackbar.dart';
import 'package:get/get.dart';

class CustomDrawer extends StatefulWidget {
  const CustomDrawer({super.key});

  @override
  State<CustomDrawer> createState() => _CustomDrawerState();
}

class _CustomDrawerState extends State<CustomDrawer> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          children: [
            Row(
              children: [
                Container(
                  width: 60,
                  height: 60,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(40),
                      color: AppColor.grey),
                  child: Center(
                    child: Text(
                      'U',
                      style: AppTextStyles.customText(
                          fontSize: 30, fontWeight: FontWeight.w400),
                    ),
                  ),
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "User's Name",
                          style: AppTextStyles.customText(
                              fontSize: 18, fontWeight: FontWeight.w600),
                        ),
                        Icon(
                          Icons.edit_outlined,
                          size: 20,
                        ).paddingOnly(left: 10)
                      ],
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      "Example@gmail.com",
                      style: AppTextStyles.customTextGrey12(),
                    )
                  ],
                ).paddingOnly(left: 15)
              ],
            ),
            Divider().paddingSymmetric(vertical: 10),
            Column(
                children: List.generate(
              DrawerButtonModel.allOffersList.length,
              (index) {
                return CustomDrawerBtn(
                        iconName: DrawerButtonModel.allOffersList[index].icon,
                        ontap: () {
                          CustomSnackbar.showError(
                              title: "Success", message: "clicked the button");
                        },
                        title: DrawerButtonModel.allOffersList[index].title)
                    .paddingOnly(bottom: 20);
              },
            ))
          ],
        ),
        Column(
          children: [
            Divider(),
            CustomDrawerBtn(
                iconName: Icons.logout_outlined,
                ontap: () {
                  SystemNavigator.pop();
                },
                title: "Logout"),
          ],
        )
      ],
    ).paddingOnly(top: 45, left: 25, right: 20, bottom: 30);
  }
}
