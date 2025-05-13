
import 'package:deepaskitchen/views/mainscreen/MainScreen.dart';
import 'package:deepaskitchen/views/notification/notification_controller.dart';
import 'package:deepaskitchen/views/productDetail/product_detail_binding.dart';
import 'package:deepaskitchen/views/productDetail/product_detail_screen.dart';
import 'package:deepaskitchen/views/sidemenu/scheduleOrder/schedule_order_screen.dart';
import 'package:flutter/scheduler.dart';
import 'package:get/route_manager.dart';

import '../controllers/home/HomeBinding.dart';
import '../controllers/products/ProductBinding.dart';
import '../views/authentication/LoginPage.dart';
import '../views/authentication/SplashPage.dart';
import '../views/home/HomePage.dart';
import '../views/notification/notification_binding.dart';
import '../views/notification/notification_screen.dart';
import '../views/onboarding/onboarding_scrreen.dart';
import '../views/product/ProductPage.dart';
import '../views/sidemenu/scheduleOrder/schedule_order_binding.dart';

class Routes {

  static const INITIAL = '/home';
  static String home = '/home';
  static String productDetail = '/productDetail';
  static String notification = '/notification';
  static String scheduleOrder = '/scheduleOrder';


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
    ),
    GetPage(
        name: productDetail,
        page: () => ProductDetailScreen(),
        binding: ProductDetailBinding(),
    ),
    GetPage(
      name: notification,
      page: () => NotificationScreen(),
      binding: NotificationBinding(),
    ),
    GetPage(
      name: scheduleOrder,
      page: () => ScheduleOrderScreen(),
      binding: ScheduleOrderBinding(),
    )
  ];
}
