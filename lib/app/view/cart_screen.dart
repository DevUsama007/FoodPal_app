import 'package:flutter/material.dart';
import 'package:foodpal/app/custom_widget/adds_container_widget.dart';
import 'package:foodpal/app/custom_widget/custom_appbar.dart';
import 'package:foodpal/app/custom_widget/myCartWidget.dart';
import 'package:foodpal/app/model/generic_model.dart/myOrdersModel.dart';
import 'package:foodpal/app/res/assets/image_assets.dart';
import 'package:get/get.dart';

class CartScreen extends StatefulWidget {
  const CartScreen({super.key});

  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(kToolbarHeight),
        child: CustomAppbar(title: 'My Cart'),
      ),
      body: Container(
        width: Get.width,
        height: Get.height,
        child: SingleChildScrollView(
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: List.generate(
                MyOrdersModel.allOrdersList.length,
                (index) {
                  return Mycartwidget(
                          image: MyOrdersModel.allOrdersList[index].image,
                          title: MyOrdersModel.allOrdersList[index].title,
                          offPrice: '20%off',
                          price: MyOrdersModel.allOrdersList[index].amount
                              .toString())
                      .paddingOnly(bottom: 10);
                },
              )),
        ),
      ),
    );
  }
}
