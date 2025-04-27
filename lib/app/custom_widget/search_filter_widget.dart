import 'package:flutter/material.dart';
import 'package:foodpal/app/custom_widget/custome_button.dart';
import 'package:foodpal/app/custom_widget/ourMenu.dart';
import 'package:foodpal/app/res/app_colors/colors.dart';
import 'package:foodpal/app/res/app_text_styles/app_text_styles.dart';
import 'package:foodpal/app/view_model/home_screen_controler.dart';
import 'package:get/get.dart';

class SearchFilterWidget extends StatefulWidget {
  const SearchFilterWidget({super.key});

  @override
  State<SearchFilterWidget> createState() => _SearchFilterWidgetState();
}

class _SearchFilterWidgetState extends State<SearchFilterWidget> {
  final HomeScreenControler controler = Get.put(HomeScreenControler());
  @override
  Widget build(BuildContext context) {
    return Container(
      width: Get.width,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          InkWell(
              onTap: () {
                Navigator.pop(context);
              },
              child: Row(
                children: [
                  Icon(
                    Icons.close,
                    size: 20,
                  ),
                  Text(
                    'Filter ',
                    style: AppTextStyles.customText(
                        fontSize: 12, fontWeight: FontWeight.w600),
                  )
                ],
              )).paddingOnly(top: 20),
          Container(
            height: 80,
            width: Get.width,
            child: OurMenuCarsualSlider(),
          ).paddingSymmetric(vertical: 10),
          Text(
            'Address',
            style: AppTextStyles.customTextbold12(),
          ),
          Obx(
            () {
              return Wrap(
                children: List.generate(
                  controler.address.length,
                  (index) {
                    return InkWell(
                        onTap: () {
                          controler.selectAddress(controler.address[index]);
                        },
                        child: Container(
                          decoration: BoxDecoration(
                              color: controler.address[index] ==
                                      controler.selectedAddress.value
                                  ? Colors.black
                                  : AppColor.white,
                              borderRadius: BorderRadius.circular(15)),
                          child: Text(
                            controler.address[index],
                            style: AppTextStyles.customText(
                                color: controler.address[index] ==
                                        controler.selectedAddress.value
                                    ? AppColor.white
                                    : Colors.black,
                                fontWeight: FontWeight.w500),
                          ).paddingSymmetric(vertical: 10, horizontal: 10),
                        ).marginSymmetric(horizontal: 10, vertical: 10));
                  },
                ),
              );
            },
          ),
          Text(
            'Sort by',
            style: AppTextStyles.customTextbold12(),
          ),
          Obx(
            () {
              return Wrap(
                children: List.generate(
                  controler.menuItem.length,
                  (index) {
                    return InkWell(
                        onTap: () {
                          controler.selectItem(controler.menuItem[index]);
                        },
                        child: Container(
                          decoration: BoxDecoration(
                              color: controler.menuItem[index] ==
                                      controler.selecteditem.value
                                  ? Colors.black
                                  : AppColor.white,
                              borderRadius: BorderRadius.circular(15)),
                          child: Text(
                            controler.menuItem[index],
                            style: AppTextStyles.customText(
                                color: controler.menuItem[index] ==
                                        controler.selecteditem.value
                                    ? AppColor.white
                                    : Colors.black,
                                fontWeight: FontWeight.w500),
                          ).paddingSymmetric(vertical: 10, horizontal: 10),
                        ).marginSymmetric(horizontal: 10, vertical: 10));
                  },
                ),
              );
            },
          ),
          PriceSlider(),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              CustomeButton(
                  title: 'Reset',
                  bgColor: AppColor.lightGrey,
                  ontap: () {
                    Navigator.pop(context);
                  },
                  textColor: Colors.black),
              CustomeButton(
                  title: 'Apply',
                  bgColor: Colors.black,
                  ontap: () {
                    Navigator.pop(context);
                  },
                  textColor: Colors.white),
            ],
          ).paddingOnly(top: 80, left: 30, right: 30)
        ],
      ).paddingSymmetric(horizontal: 20, vertical: 10),
    );
  }
}

class PriceSlider extends StatefulWidget {
  const PriceSlider({super.key});

  @override
  PriceSliderState createState() => PriceSliderState();
}

class PriceSliderState extends State<PriceSlider> {
  double _currentValue = 10.0;
  final HomeScreenControler controler = Get.put(HomeScreenControler());
  changeColor(double value) {
    return AppTextStyles.customText(
        fontWeight: FontWeight.bold,
        color: controler.currentValue.value > value
            ? Colors.black
            : AppColor.black.withOpacity(0.5));
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('Price', style: AppTextStyles.customTextbold12()),
        Obx(
          () {
            return Slider(
              activeColor: Colors.black,
              inactiveColor: AppColor.grey,
              value: controler.currentValue.value,
              min: 10.0,
              max: 40.25,
              divisions: 100,
              label: '\$${controler.currentValue.value.toStringAsFixed(2)}',
              onChanged: (double value) {
                // setState(() {
                //   controler.currentValue.value = value;
                // });
                controler.changePrice(value);
              },
            );
          },
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Obx(
            () {
              return Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    '\$10.00', style: changeColor(10.0),
                    // style: AppTextStyles.customText(
                    //     fontWeight: FontWeight.bold,
                    //     color: controler.currentValue.value > 10.0
                    //         ? Colors.black
                    //         : AppColor.black.withOpacity(0.5)),
                  ),
                  Text(
                    '\$20.25',
                    style: changeColor(20.0),
                  ),
                  Text(
                    '\$30.25',
                    style: changeColor(30.0),
                  ),
                  Text(
                    '\$40.25',
                    style: changeColor(40.0),
                  ),
                ],
              );
            },
          ),
        ),
      ],
    );
  }
}
