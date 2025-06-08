
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


class DashboardTab extends GetView<HomeController> {
  const DashboardTab({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual, overlays: []);
    final theme = Theme.of(context);
    return Scaffold(
      backgroundColor: mainBg,
      drawer: const SideMenu(),
      appBar: getTopAppBar("Hi, Deepa's"),
      body:  SafeArea(
          child: CustomScrollView(
            slivers: [
              SliverList(
                delegate: SliverChildListDelegate([
                //  _buildOfferCarousel(context),
                //   _buildOfferIndicator(),
                  SizedBox(height: 16,),
                  _FoodCategories(context),
                  SizedBox(height: 16.0),
                  SectionTitle(
                      title: "Best Selling",
                      press: () =>{

                      } /*Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const FeaturedScreen(),
                  )*/
                  ),
                  const MediumCardList(),
                  SizedBox(height: 16,),
                  PromotionBanner(),
                  SizedBox(height: 16,),
                  _buildSection('Discounts', theme),
                  const MediumCardList(),
                  SizedBox(height: 16,),
                ]),
              ),
            ],
          )
      ),
    );

  }

  Widget _FoodCategories(BuildContext context)  {
    final colorScheme = Theme.of(context).colorScheme;
    return Row(
        children:  foodCategories.take(5).map(
              (category) {
            return Expanded(
              child: GestureDetector(
                onTap: () {},
                child: Column(
                  children: [
                    CircleAvatar(
                      radius: 30,
                      backgroundColor: colorScheme.background,
                      child: Image.asset('assets/images/meal.png'),
                    ),
                    const SizedBox(height: 0.0),
                    Text(
                        "Meal",
                        maxLines: 1,
                        style: AppTheme.categoryText,
                        overflow: TextOverflow.ellipsis) ,
                  ],
                ),
              ),
            );
          },
        ).toList());
  }

  Widget _buildOfferCarousel(context) {
    return SizedBox(
      height: 500,
      child: CarouselSlider.builder(
        carouselController: controller.carouselController,
        options: CarouselOptions(
          autoPlay: true,
          enlargeCenterPage: true,
          viewportFraction: 1,
          aspectRatio: 1,
          initialPage: 0,
          autoPlayAnimationDuration: Duration(milliseconds: 800),
          onPageChanged: (index, reason) => controller.changeBanner(index),
        ),
        itemCount: controller.activeOffers.length,
        itemBuilder: (BuildContext context, int itemIndex, int pageViewIndex)
        => _buildOffer(controller.activeOffers[itemIndex]),
      ),
    );
  }

  Widget _buildOffer(OfferModel offer) {
    return Container(
      width: double.infinity,
      clipBehavior: Clip.hardEdge,
      margin: EdgeInsets.all(16),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.grey.shade100,
      ),
      child: Stack(
        children: [
          SizedBox(
            width: double.infinity,
            child: Image.asset(offer.image,fit: BoxFit.cover,),
          )
        ],
      ),
    );
  }

  Widget _buildOfferIndicator() {
    return Obx(() => Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: controller.activeOffers.asMap().entries.map((entry) {
        return AnimatedContainer(
          duration: Duration(milliseconds: 500),
          width: 8.0,
          height: 8.0,
          margin: EdgeInsets.symmetric(horizontal: 4.0),
          decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: (Get.isDarkMode ? Colors.white : Colors.blueGrey)
                  .withOpacity(controller.currentBanner == entry.key ? 0.9 : 0.2)
          ),
        );
      }).toList(),
    ));
  }

  Widget _buildCategory(CategoryModel category, index, theme) {
    return ZoomTapAnimation(
      beginDuration: Duration(milliseconds: 300),
      endDuration: Duration(milliseconds: 500),
      child: Container(
        clipBehavior: Clip.hardEdge,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
        ),
        margin: EdgeInsets.only(right: controller.categories.length - 1 == index ? 0 : 8),
        child: Stack(
          children: [
            SizedBox(
              width: 120,
              height: 60,
              child: CachedNetworkImage(
                imageUrl: category.image,
                fit: BoxFit.cover,
              ),
            ),
            Positioned(
              top: 0,
              left: 0,
              right: 0,
              bottom: 0,
              child: Container(
                height: 80,
                decoration: BoxDecoration(
                  color: Colors.black.withAlpha(110),
                ),
                child: Center(
                  child: Text(category.name, textAlign: TextAlign.center, style: theme.textTheme.titleLarge?.copyWith(color: Colors.white),),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget _buildSection(String title, ThemeData theme) {
    return Padding(
      padding: const EdgeInsets.only(left: 16.0, right: 0.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(title, style: AppTheme.topHeader),
          MaterialButton(
            onPressed: () {},
            minWidth: 50,
            splashColor: theme.primaryColor.withAlpha(10),
            highlightColor: theme.primaryColor.withAlpha(30),
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(80)
            ),
            child: Icon(IconlyLight.arrow_right, size: 20, color: theme.primaryColor,),
          )
        ],
      ),
    );
  }

  _buildCategories() {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      padding: EdgeInsets.only(bottom: 5, left: 15),
      child: Row(
        children: [
          AllCategoryItem(
            data: {
              "name": "All",
              "icon": FontAwesomeIcons.th,
            },
            seleted: true,
          ),
          ...List.generate(
            categories.length,
                (index) => AllCategoryItem(data: categories[index]),
          )
        ],
      ),
    );
  }

  Widget _buildDiscountedProducts(ThemeData theme) {
    return SizedBox(
      height: Get.height * 0.30,
      child: ListView.builder(
        padding: EdgeInsets.only(left: 16),
        scrollDirection: Axis.horizontal,
        itemCount: controller.discountedProducts.length,
        itemBuilder: (context, index) {
          return AspectRatio(
            aspectRatio: 1,
            child: GestureDetector(
              onTap: () {
                Get.toNamed('/product/${controller.discountedProducts[index].id}');
              },
              child: Container(
                  clipBehavior: Clip.hardEdge,
                  margin: EdgeInsets.only(right: 16),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: Get.isDarkMode ? ColorConstants.gray700 : Colors.grey.shade200,
                    border: Border.all(color: Get.isDarkMode ? Colors.transparent : Colors.grey.shade200, width: 1),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 150,
                        width: double.infinity,
                        child: CachedNetworkImage(
                          imageUrl: controller.discountedProducts[index].image,
                          fit: BoxFit.cover,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.all(10),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(controller.discountedProducts[index].name, style: theme.textTheme.titleLarge),
                            SizedBox(height: 5,),
                            Text(controller.discountedProducts[index].brand, style: theme.textTheme.bodyMedium),
                            SizedBox(height: 8,),
                            Row(
                              children: [
                                Text(controller.discountedProducts[index].price, style: theme.textTheme.bodyLarge?.copyWith(decoration: TextDecoration.lineThrough, color: ColorConstants.gray200),),
                                SizedBox(width: 5,),
                                Icon(IconlyLight.arrow_right, size: 18, color: Colors.grey.shade600, ),
                                SizedBox(width: 5,),
                                Text(controller.discountedProducts[index].discountPrice, style: theme.textTheme.titleLarge?.copyWith(),),
                              ],
                            )
                          ],
                        ),
                      )
                    ],
                  )
              ),
            ),
          );
        },
      ),
    );
  }
}

_buildCategories() {
  return SingleChildScrollView(
    scrollDirection: Axis.horizontal,
    padding: EdgeInsets.only(bottom: 5, left: 15),
    child: Row(
      children: [
        AllCategoryItem(
          data: {
            "name": "All",
            "icon": FontAwesomeIcons.th,
          },
          seleted: true,
        ),
        ...List.generate(
          categories.length,
              (index) => AllCategoryItem(data: categories[index]),
        )
      ],
    ),
  );
}
