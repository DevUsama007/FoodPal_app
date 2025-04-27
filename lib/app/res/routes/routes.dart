import 'package:foodpal/app/res/routes/routes_name.dart';
import 'package:foodpal/app/view/best_offers.dart';
import 'package:foodpal/app/view/best_sellers.dart';
import 'package:foodpal/app/view/bottom_app_bar/bottom_navigation_bar.dart';
import 'package:foodpal/app/view/cart_screen.dart';
import 'package:foodpal/app/view/check_out_order.dart';
import 'package:foodpal/app/view/home_screen.dart';
import 'package:foodpal/app/view/introduction_screens/introduction_screen1.dart';
import 'package:foodpal/app/view/introduction_screens/introduction_screen2.dart';
import 'package:foodpal/app/view/introduction_screens/introduction_screen3.dart';
import 'package:foodpal/app/view/login_screen.dart';
import 'package:foodpal/app/view/myOrderScreen.dart';
import 'package:foodpal/app/view/notification_screen.dart';
import 'package:foodpal/app/view/onbording_screen.dart';
import 'package:foodpal/app/view/product_detail_screen.dart';
import 'package:foodpal/app/view/register_screen.dart';
import 'package:foodpal/app/view/restaurant_nearby_screen.dart';
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
          name: RouteName.bottomNavigatorFile,
          page: () => BottomNavigator(),
          transition: Transition.downToUp),
      GetPage(
          name: RouteName.homeScreen,
          page: () => HomeScreen(),
          transition: Transition.downToUp),
      GetPage(
          name: RouteName.restaurantNearbyScreen,
          page: () => RestaurantNearbyScreen(),
          transition: Transition.rightToLeft),
      GetPage(
          name: RouteName.bestOffers,
          page: () => BestOffers(),
          transition: Transition.rightToLeft),
      GetPage(
          name: RouteName.bestSellers,
          page: () => BestSellers(),
          transition: Transition.rightToLeft),
      GetPage(
          name: RouteName.notificationScreen,
          page: () => NotificationScreen(),
          transition: Transition.rightToLeft),
      GetPage(
          name: RouteName.myorderscreen,
          page: () => Myorderscreen(),
          transition: Transition.rightToLeft),
      GetPage(
          name: RouteName.cartScreen,
          page: () => CartScreen(),
          transition: Transition.rightToLeft),
      GetPage(
          name: RouteName.productDetailScreen,
          page: () => ProductDetailScreen(title: '', subtitle: '', image: '', price: '', rating: null,),
          transition: Transition.rightToLeft),
      
    ];
  }
}
