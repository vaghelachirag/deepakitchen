import 'package:deepaskitchen/uttils/theme/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get_state_manager/src/simple/get_view.dart';

import '../../../controllers/category/CategoryController.dart';
import '../../../uttils/demoData.dart';
import '../../../widget/CategoryItemCard.dart';
import '../../../widget/SearchWidget.dart';
import '../../../widget/all_category_item.dart';
import 'package:get/get.dart';

import '../../../widget/common_widget.dart';
import '../../sidemenu/sidemenu_view.dart';
import 'mycart/foodItemController.dart';

class FavoriteTab extends GetView<CategoryController> {
  const FavoriteTab({ Key? key }) : super(key: key);


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
                  SearchWidget(),
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
            onTap: () => controller.selectCategory(index),
          );
        }),
      ),
    ),
  );
}

_loadCategory(CategoryController controller){
  return SizedBox(
      height: Get.height * 0.8,
      child:  Expanded(
      child: Obx(() {
    // Listen to itemsForSelectedCategory changes
    final items = controller.itemsForSelectedCategory;
    print(" ${items.length}");
    if (items.isEmpty) {
      return Center(child: Text("No items found for this category"));
    }
    return ListView.builder(
      itemCount: items.length,
      itemBuilder: (context, index) {
        final item = items[index];
        return FoodItemCard(
          name: item["name"],
          quantity: item["quantity"],
          price: item["price"] ?? 50,
          imageUrl: item["image"],
          isAvailable: item["isAvailable"] ?? true,
          rating: item["rating"] ?? 4.5,
          controller: Get.put(FoodItemController()),
        );
      },
    );
  })));
}