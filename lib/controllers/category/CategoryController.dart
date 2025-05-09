import 'package:carousel_slider/carousel_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../models/categories/CategoryModel.dart';
import '../../models/offers/OfferModel.dart';
import '../../models/products/ProductModel.dart';
import '../../providers/CategoryProvider.dart';
import '../../providers/OfferProvider.dart';
import '../../providers/ProductProvider.dart';
import '../../views/home/tabs/CardTab.dart';
import '../../views/home/tabs/ExploreTab.dart';
import '../../views/home/tabs/FavoriteTab.dart';
import '../../views/home/tabs/UserTab.dart';

class CategoryController extends GetxController {
  final OfferProvider _offerProvider;
  CategoryController(this._offerProvider);

  late PageController pageController;
  late CarouselSliderController carouselController;
  late final CategoryProvider _categoryProvider = Get.find();
  late final ProductProvider _productProvider = Get.find();

  var currentPage = 0.obs;
  var currentBanner = 0.obs;
  var activeOffers = <OfferModel>[].obs;
  var categories = <CategoryModel>[].obs;
  var discountedProducts = <ProductModel>[].obs;

  List<Widget> pages = [
    ExploreTab(),
    FavoriteTab(),
    CardTab(),
    UserTab(),
  ];

  @override
  void onInit() {
    pageController = PageController(initialPage: 0);
    carouselController = CarouselSliderController();

    getOffers();
    getCategories();
    getDiscountedProducts();
    super.onInit();
  }

  void getOffers() {
    _offerProvider.getOffers().then((offers) {
      activeOffers.value = offers;
    });
  }

  void getCategories() {
    _categoryProvider.getCategories().then((categories) {
      this.categories.value = categories;
    });
  }

  void getDiscountedProducts() {
    _productProvider.getDiscountedProducts().then((products) {
      discountedProducts(products);
      print(products);
    });
  }

  void goToTab(int page) {
    currentPage.value = page;
    pageController.jumpToPage(page);
  }

  void changeBanner(int index) {
    currentBanner.value = index;
  }

  @override
  void dispose() {
    pageController.dispose();

    super.dispose();
  }
}
