import 'package:flutter/material.dart';
import 'package:foodpal/app/custom_widget/custom_appbar.dart';
import 'package:foodpal/app/custom_widget/myOrderWidget.dart';
import 'package:foodpal/app/custom_widget/search_field.dart';
import 'package:foodpal/app/custom_widget/sorting_widget.dart';
import 'package:foodpal/app/model/generic_model.dart/myOrdersModel.dart';
import 'package:foodpal/app/res/app_colors/colors.dart';
import 'package:foodpal/app/res/assets/image_assets.dart';
import 'package:get/get.dart';

class Myorderscreen extends StatefulWidget {
  const Myorderscreen({super.key});

  @override
  State<Myorderscreen> createState() => _MyorderscreenState();
}

class _MyorderscreenState extends State<Myorderscreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.homebackgroundColor,
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(kToolbarHeight),
        child: CustomAppbar(
            // centerTitle: true,
            automaticallyImplyLeading: false,
            title: 'My Orders'),
      ),
      body: Container(
        width: Get.width,
        height: Get.height,
        child: SingleChildScrollView(
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SearchTextField(
                          width: Get.width * 0.75,
                          height: 50,
                          // controller: controler.searchFieldControler,
                          prefixIcon: Icons.search,
                          backgroundColor: Colors.white,
                          hintText: "Search your order")
                      .paddingOnly(right: 10),
                  SortingWidget(
                    ontap: () {},
                  )
                ],
              ).paddingSymmetric(vertical: 10),
              SizedBox(
                height: 10,
              ),
              Column(
                children: List.generate(
                  MyOrdersModel.allOrdersList.length,
                  (index) {
                    return Myorderwidget(
                            title: MyOrdersModel.allOrdersList[index].title,
                            image: MyOrdersModel.allOrdersList[index].image,
                            date: MyOrdersModel.allOrdersList[index].date,
                            items: MyOrdersModel.allOrdersList[index].items,
                            amount: MyOrdersModel.allOrdersList[index].amount,
                            orderNo: MyOrdersModel.allOrdersList[index].orderNo)
                        .paddingOnly(bottom: 10);
                  },
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
