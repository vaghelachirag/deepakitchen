
import 'package:deepaskitchen/controllers/home/HomeBinding.dart';
import 'package:deepaskitchen/views/home/tabs/home/home_tab.dart';
import 'package:deepaskitchen/views/notification/notification_binding.dart';
import 'package:deepaskitchen/views/notification/notification_screen.dart';
import 'package:deepaskitchen/views/productDetail/product_detail_binding.dart';
import 'package:deepaskitchen/views/sidemenu/scheduleOrder/schedule_order_binding.dart';
import 'package:deepaskitchen/views/sidemenu/scheduleOrder/schedule_order_screen.dart';
import 'package:deepaskitchen/views/splash/splash_binding.dart';
import 'package:deepaskitchen/views/splash/splash_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

import '../views/productDetail/product_detail_screen.dart';
part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.splashView;//Routes.login;

  static final routes = [
    GetPage(
      name: _Paths.home,
      page: () =>  HomeTab(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.splashView,
      page: () =>  SplashPage(),
      binding: SplashBinding(),
    ),
    GetPage(
      name: _Paths.scheduleOrder,
      page: () =>  ScheduleOrderScreen(),
      binding: ScheduleOrderBinding(),
    ),
    GetPage(
      name: _Paths.notification,
      page: () =>  NotificationScreen(),
      binding: NotificationBinding(),
    ),
    GetPage(
      name: _Paths.productDetail,
      page: () =>  ProductDetailScreen(),
      binding: ProductDetailBinding(),
    )
  ];
}
