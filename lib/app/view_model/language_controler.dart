import 'dart:ui';

import 'package:get/get.dart';

class LanguageController extends GetxController {
  var selectedLanguage = 'English'.obs;
  var selectedLanguageCode = 'en'.obs;

  final List<Map<String, String>> languages = [
    {'name': 'English', 'code': 'en_US'},
    {'name': 'اردو', 'code': 'ur_PK'},
    {'name': 'العربية', 'code': 'ar_SA'},
  ];

  void changeLanguage(String language, String code) {
    selectedLanguage.value = language;
    selectedLanguageCode.value = code;
    Get.updateLocale(Locale(code));
    // You can also save the selected language to SharedPreferences
  }
}
