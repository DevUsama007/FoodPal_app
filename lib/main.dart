import 'package:flutter/material.dart';
import 'package:foodpal/app/res/app_language/translation.dart';
import 'package:foodpal/app/res/routes/routes.dart';
import 'package:foodpal/app/view/splash_screen.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      translations: Language(),
      locale: Locale('en', 'US'),
      fallbackLocale: Locale('en', 'US'),
      debugShowCheckedModeBanner: false,
      theme: ThemeData(),
      getPages: AppRoutes.appRoutes(),
      home: SplashScreen(),
    );
  }
}
