
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';

import '../../../../controllers/category/CategoryController.dart';
import '../../../../uttils/demoData.dart';
import '../../../../uttils/theme/app_theme.dart';
import '../../../../widget/CategoryItemCard.dart';
import '../../../../widget/SearchWidget.dart';
import '../../../../widget/all_category_item.dart';
import '../../../../widget/common_widget.dart';
import '../../../sidemenu/sidemenu_view.dart';
import '../mycart/foodItemController.dart';

class CategoryTab extends GetView<CategoryController> {
  const CategoryTab({ super.key });

  @override
  Widget build(BuildContext context) {
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual, overlays: []);
    final theme = Theme.of(context);
    return  Scaffold(
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
                  //_buildCategories(controller),
                  SizedBox(
                    height: Get.height * 0.8,
                    child:  Expanded(
                      child: ListView.builder(
                        shrinkWrap: true,
                        itemCount: demoMediumCardData.length,
                        itemBuilder: (context, int index) {
                          final product = demoMediumCardData[index];
                          final controller = Get.put(FoodItemController(), tag: demoMediumCardData[index]["name"]);
                          return  FoodItemCard(
                            name: demoMediumCardData[index]["name"],
                            quantity: demoMediumCardData[index]["quantity"],
                            price: 50,
                            imageUrl: demoMediumCardData[index]["image"],
                            isAvailable: true,
                            rating: 4.5,
                            controller: Get.put(FoodItemController()),
                          );
                        },
                      ),
                    ),
                  )
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
              (index) => AllCategoryItem(data: categories[index],seleted: controller.selectedIndex.value == index, onTap: () => {
                print("Category"+ "Category")
              }),
        )
      ],
    ),
  );
}