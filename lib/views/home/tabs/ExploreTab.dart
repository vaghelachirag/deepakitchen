
import 'package:carousel_slider/carousel_slider.dart';
import 'package:deepaskitchen/uttils/responsive.dart';
import 'package:deepaskitchen/uttils/theme/app_theme.dart';
import 'package:deepaskitchen/views/home/promotion_banner.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:iconly/iconly.dart';

import '../../../controllers/home/HomeController.dart';
import '../../../models/offers/OfferModel.dart';
import '../../../uttils/constants.dart';
import '../../../uttils/demoData.dart';
import '../../../widget/common_widget.dart';
import '../../../widget/medium_card_list.dart';
import '../../../widget/section_title.dart';
import '../../sidemenu/sidemenu_view.dart';


class ExploreTab extends GetView<HomeController> {
  const ExploreTab({ Key? key }) : super(key: key);

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
                  _buildOfferCarousel(context),
                  _buildOfferIndicator(),
                  SizedBox(height: 16,),
                  _foodCategories(context),
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

 Widget _foodCategories(BuildContext context)  {
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
      height:  Responsive.isDesktop(context) == true  ? MediaQuery.of(context).size.height * 0.75 : MediaQuery.of(context).size.height * 0.25 ,
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
}

