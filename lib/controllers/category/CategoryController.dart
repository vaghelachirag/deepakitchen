import 'package:carousel_slider/carousel_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../models/ItemData.dart';
import '../../models/categories/CategoryModel.dart';
import '../../models/offers/OfferModel.dart';
import '../../models/products/ProductModel.dart';
import '../../providers/CategoryProvider.dart';
import '../../providers/OfferProvider.dart';
import '../../providers/ProductProvider.dart';
import '../../uttils/demoData.dart';
import '../../views/home/tabs/CardTab.dart';
import '../../views/home/tabs/ExploreTab.dart';
import '../../views/home/tabs/FavoriteTab.dart';
import '../../views/home/tabs/UserTab.dart';

import 'package:http/http.dart';

import 'package:http/http.dart' as http;
import 'dart:convert' as convert;

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

  // Items for the currently selected category
  var itemsForSelectedCategory = <Map<String, dynamic>>[].obs;


  // Search
  var searchQuery = ''.obs;


  var selectedIndex = 0.obs;
  var itemDataList = <ItemData>[].obs;
  var isLoading = false.obs;


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
    getDataFromGoogleSheet(0); // Load initial data
    getOffers();
    getCategories();
    getDiscountedProducts();
    super.onInit();

    itemsForSelectedCategory.value = categoryItems[selectedIndex.value] ?? [];
  }

  void getOffers() {
    _offerProvider.getOffers().then((offers) {
      activeOffers.value = offers;
    });
  }

  void setSearchQuery(String query) {
    searchQuery.value = query;
  }

  void selectCategory(int index) {
    selectedIndex.value = index;
    itemsForSelectedCategory.value = categoryItems[index] ?? [];
    searchQuery.value = ''; // Reset search on new category
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

  Future<void> getDataFromGoogleSheet(int index) async {
    selectedIndex.value = index;
    isLoading.value = true;
    http.Response data = await http.get(
      Uri.parse(
          "https://script.googleusercontent.com/macros/echo?user_content_key=AehSKLgfYiOjLWQEZLw1K3Zb-Uxpo7CIAVjf_ngRV6wSYj5ufPTHbHEQKBVxH4B3AG82yNA07z2Fm_cDcH-bJ06fSx8m0YRYwOpkAJU2JtzeBPbJhbTkL4rWBQ7pOfFaxK1KwvKR7hOdn_Apjgh2Efy6seOpr7u92NdX8Nuo1ik6Dd3Q7u9UTvbxGfOvEZazfyemwrCpmSF47q5QRSfuTVOP5n11mhTEPUg3_Unkg_fH2Zry7EAuAPYXjULEPBF1IDb-uULXBXJtUChqlz0xyR4tfxrkGYG75A&lib=MqqKXri4FRi3I9A9X1x6Wo-u9HG4VFNme"),
    );
    dynamic jsonAppData = convert.jsonDecode(data.body);
    isLoading.value = false;
    itemDataList.clear();
    jsonAppData.forEach((element) {
      print('$element THIS IS NEXT>>>>>>>');
      if (element['itemid'] == index) {
        ItemData itemData = ItemData(
            itemid: element['itemid'],
            itemname: element['itemname'],
            image: element['image'],
            price: element['price'],
            availability: element['availability'],
            quantity: element['quantity']
        );
        itemDataList.add(itemData);
        print("Item${itemDataList[0].itemid}");
      }
    });
  }
}
