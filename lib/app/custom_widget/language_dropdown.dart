import 'package:flutter/material.dart';
import 'package:foodpal/app/res/app_colors/colors.dart';
import 'package:foodpal/app/view_model/language_controler.dart';
import 'package:get/get.dart';

class LanguageDropdown extends StatelessWidget {
  const LanguageDropdown({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final LanguageController langController = Get.put(LanguageController());

    return Obx(() => DropdownButton<String>(
          underline: const SizedBox(), // Remove default underline
          icon: Icon(Icons.language, color: AppColor.lightGrey),
          dropdownColor: AppColor.white,
          borderRadius: BorderRadius.circular(10), // Language icon
          value: langController.selectedLanguage.value,
          items: langController.languages.map((language) {
            return DropdownMenuItem<String>(
              value: language['name'],
              child: Row(
                children: [
                  Text(
                    language['name']!,
                    style: const TextStyle(fontSize: 14),
                  ),
                ],
              ),
            );
          }).toList(),
          onChanged: (String? newValue) {
            if (newValue != null) {
              final selectedLang = langController.languages
                  .firstWhere((lang) => lang['name'] == newValue);
              langController.changeLanguage(newValue, selectedLang['code']!);
            }
          },
        ));
  }
}
