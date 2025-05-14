
import 'package:cached_network_image/cached_network_image.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:deepaskitchen/models/categories/CategoryModel.dart';
import 'package:deepaskitchen/uttils/theme/app_theme.dart';
import 'package:deepaskitchen/views/home/promotion_banner.dart';
import 'package:deepaskitchen/widget/all_category_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:iconly/iconly.dart';
import 'package:zoom_tap_animation/zoom_tap_animation.dart';

import '../../../../controllers/home/HomeController.dart';
import '../../../../models/offers/OfferModel.dart';
import '../../../../shared/constants/ColorConstants.dart';
import '../../../../uttils/constants.dart';
import '../../../../uttils/demoData.dart';
import '../../../../widget/common_widget.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../../widget/medium_card_list.dart';
import '../../../../widget/section_title.dart';
import '../../../sidemenu/sidemenu_view.dart';


class HomeTab extends GetView<HomeController> {
  const HomeTab({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: BottomAppBar(
          elevation: 0,
          notchMargin: 5,
          child: Container(
              padding: EdgeInsets.symmetric(horizontal: 15, vertical: 5),
              child: Obx(() => Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  _bottomAppBarItem(icon: IconlyLight.home, page: 0),
                  _bottomAppBarItem(icon: IconlyLight.bookmark, page: 1),
                  _bottomAppBarItem(icon: IconlyLight.buy, page: 2),
                  _bottomAppBarItem(icon: IconlyLight.profile, page: 3),
                ],
              ),
              )),
        ),
        body: PageView(
          controller: controller.pageController,
          physics: NeverScrollableScrollPhysics(),
          children: [
            ...controller.pages
          ],
        )
    );
  }

  Widget _bottomAppBarItem({icon, page}) {
    return ZoomTapAnimation(
      onTap: () => controller.goToTab(page),
      child: Icon(icon, color: controller.currentPage == page ? topHeaderBg : Colors.grey, size: 25,),
    );
  }
}
