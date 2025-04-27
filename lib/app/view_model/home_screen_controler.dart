import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeScreenControler extends GetxController {
  final searchFieldControler = TextEditingController();
  RxInt cartvalue = 1.obs;
  incrementCart() {
    print('click');
    cartvalue.value = cartvalue.value + 1;
  }

  decrementCart() {
    if (cartvalue.value > 1) {
      cartvalue.value = cartvalue.value - 1;
    } else {
      print('not');
    }
  }

//search filter
  RxList address = ['Rivertown Haven', 'Fareed Town', 'Royel Palm City'].obs;
  RxList menuItem = ['Chicken', 'Burger', 'Pizza', 'Desert'].obs;
  RxString colorName1 = 'Colors.black'.obs;
  RxString colorName2 = 'AppColor.white'.obs;
  RxString selectedcolorName1 = 'Colors.black'.obs;
  RxString selectedcolorName2 = 'AppColor.white'.obs;

  RxString selectedAddress = ''.obs;
  RxString selecteditem = ''.obs;
  RxBool isSelected = false.obs;
  selectAddress(String address) {
    if (selectedAddress.value != address) {
      isSelected.value = true;
      selectedAddress.value = address;
      print(selectedAddress.value);
    } else {
      isSelected.value = false;
      selectedAddress.value = "";
      print(selectedAddress.value);
    }
  }

  selectItem(String item) {
    if (selecteditem.value != item) {
      selecteditem.value = item;
    } else {
      selecteditem.value = "";
    }
  }

  RxDouble currentValue = 10.0.obs;
  changePrice(double value) {
    currentValue.value = value;
  }
}
