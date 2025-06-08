import 'dart:convert' as convert;
import 'dart:math';

import 'package:deepaskitchen/uttils/theme/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get_state_manager/src/simple/get_view.dart';

import '../../../controllers/category/CategoryController.dart';
import '../../../models/ItemData.dart';
import '../../../uttils/demoData.dart';
import '../../../widget/CategoryItemCard.dart';
import '../../../widget/SearchWidget.dart';
import '../../../widget/all_category_item.dart';
import 'package:get/get.dart';

import '../../../widget/common_widget.dart';
import '../../sidemenu/sidemenu_view.dart';
import 'mycart/foodItemController.dart';


import 'package:http/http.dart';

import 'package:http/http.dart' as http;
import 'dart:convert' as convert;

class FavoriteTab extends GetView<CategoryController> {
   FavoriteTab({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.lazyPut<CategoryController>(() => CategoryController(Get.find()));

    SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual, overlays: []);
    final theme = Theme.of(context);
    return Scaffold(
     drawer: const SideMenu(),
      appBar:  getTopAppBar("Category"),
      body:  SafeArea(
          child: CustomScrollView(
            slivers: [
              SliverList(
                delegate: SliverChildListDelegate([
                  SizedBox(height: 20,),
                  SearchWidget(controller),
                  SizedBox(height: 20,),
                  _buildCategories(controller),
                  SizedBox(height: 10,),
                  _loadCategory(controller)
                ]),
              ),
            ],
          )
      ),
    );

  }
}
Widget productQuantity() {
  return   Padding(
padding: const EdgeInsets.only(top: 0.0),
child: Row(

mainAxisAlignment: MainAxisAlignment.start,
children: [
IconButton(
icon: Icon(Icons.remove_circle_outline),
onPressed: () => {},
),
Text(
"1",
style: AppTheme.topHeader
),
IconButton(
icon: Icon(Icons.add_circle_outline),
onPressed: () => {},
),
],
),
);
}


_buildCategories(CategoryController controller) {
  return Obx(
        () => SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Row(
        children: List.generate(categories.length, (index) {
          return AllCategoryItem(
            data: categories[index],
            seleted: controller.selectedIndex.value == index,
            onTap: () => controller.getDataFromGoogleSheet(index),
          );
        }),
      ),
    ),
  );
}

Future<List<ItemData>> getDataFromGoogleSheet() async {

  final List<ItemData> itemDataList = [];

  http.Response data = await http.get(
    Uri.parse(
        "https://script.google.com/macros/s/AKfycbxTU_rtfiDyr2CG60Sn4u3wae2hYygQkTGQkod0US5zzAMRAdHW9zG15IjIJTl77frC/exec"),
  );
  dynamic jsonAppData = convert.jsonDecode(data.body);
  jsonAppData.forEach((element) {
    print('$element THIS IS NEXT>>>>>>>');
    if(element['itemid'] == 1) {
      ItemData itemData = ItemData(
          itemid: element['itemid'],
          itemname: element['itemname'],
          image: element['image'],
          price: element['price'],
          availability: element['availability'],
         quantity: "1"
      );
      itemDataList.add(itemData);
      print("Item${itemDataList[0].itemid}");
    }
  });
  return itemDataList;
}

_loadCategory(CategoryController controller){
  return Padding(
    padding: EdgeInsets.only(bottom: 50),
    child: SizedBox(
      height: Get.height * 0.8,
      child: Obx(() {
        final items = controller.itemDataList;
        print(" total item  +${items.length}");
        if(controller.isLoading.value){
          Center(child: Text("Loading...."));
        }
        if (items.isEmpty) {
          return Center(child: Text("No items found for this category"));
        }
        return ListView.builder(
          itemCount: items.length,
          itemBuilder: (context, index) {
            final item = items[index];
            return FoodItemCard(
              name: item.itemname,
              quantity: item.quantity,
              price: item.price,
              imageUrl: item.image,
              isAvailable: true,
              rating: 4.5,
              controller: Get.put(FoodItemController()),
            );
          },
        );
      }),
    ),
  );
}
