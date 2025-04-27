import 'package:foodpal/app/res/routes/routes_name.dart';
import 'package:foodpal/app/view/home_screen.dart';
import 'package:foodpal/app/view/introduction_screens/introduction_screen1.dart';
import 'package:foodpal/app/view/introduction_screens/introduction_screen2.dart';
import 'package:foodpal/app/view/introduction_screens/introduction_screen3.dart';
import 'package:foodpal/app/view/login_screen.dart';
import 'package:foodpal/app/view/onbording_screen.dart';
import 'package:foodpal/app/view/register_screen.dart';
import 'package:foodpal/app/view/splash_screen.dart';
import 'package:get/get.dart';

class AppRoutes {
  static List<GetPage> appRoutes() {
    return [
      GetPage(
          name: RouteName.splashScreen,
          page: () => SplashScreen(),
          transition: Transition.leftToRight),
      GetPage(
          name: RouteName.introduction_screen1,
          page: () => IntroductionScreen1(),
          transition: Transition.leftToRight),
      GetPage(
          name: RouteName.introduction_screen2,
          page: () => IntroductionScreen2(),
          transition: Transition.rightToLeft),
      GetPage(
          name: RouteName.introduction_screen3,
          page: () => IntroductionScreen3(),
          transition: Transition.rightToLeft),
      GetPage(
          name: RouteName.onbordingScreen,
          page: () => OnbordingScreen(),
          transition: Transition.leftToRightWithFade),
      GetPage(
          name: RouteName.loginScreen,
          page: () => LoginScreen(),
          transition: Transition.downToUp),
      GetPage(
          name: RouteName.registerScreen,
          page: () => RegisterScreen(),
          transition: Transition.downToUp),
      GetPage(
          name: RouteName.homeScreen,
          page: () => HomeScreen(),
          transition: Transition.downToUp),
    ];
  }
}
