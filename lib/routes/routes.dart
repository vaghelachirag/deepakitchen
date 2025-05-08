
import 'package:deepaskitchen/views/mainscreen/MainScreen.dart';
import 'package:get/route_manager.dart';

import '../controllers/home/HomeBinding.dart';
import '../controllers/products/ProductBinding.dart';
import '../views/authentication/LoginPage.dart';
import '../views/authentication/SplashPage.dart';
import '../views/home/HomePage.dart';
import '../views/onboarding/onboarding_scrreen.dart';
import '../views/product/ProductPage.dart';

class Routes {

  static const INITIAL = '/home';

  static final routes = [
    GetPage(
      name: '/splash', 
      page: () => SplashPage(),
    ),
    GetPage(
      name: '/login', 
      page: () => LoginPage(),
    ),
    GetPage(
      name: '/home',
      page: () => HomePage(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: '/product/:id', 
      page: () => ProductPage(),
      binding: ProductBinding(),
    ),
    GetPage(
        name: '/mainScreen',
        page: () => Mainscreen()
    ),
    GetPage(
        name: '/onboardingScreen',
        page: () => OnboardingScreen()
    )
  ];
}
