import 'package:deepaskitchen/uttils/theme/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get_state_manager/src/simple/get_view.dart';

import '../../../controllers/category/CategoryController.dart';
import '../../../global/constant/assets.dart';
import '../../../global/constant/colors.dart';
import '../../../global/constant/styles.dart';
import '../../../uttils/constants.dart';
import '../../../uttils/demoData.dart';
import '../../../widget/CategoryItemCard.dart';
import '../../../widget/SearchWidget.dart';
import '../../../widget/all_category_item.dart';
import 'package:get/get.dart';

import '../../sidemenu/sidemenu_view.dart';

class FavoriteTab extends GetView<CategoryController> {
  const FavoriteTab({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual, overlays: []);
    final theme = Theme.of(context);
    return Scaffold(
     drawer: const SideMenu(),
      appBar: AppBar(
        title: Text("Hi, Deepa's",
            style: AppStyles.txt16sizeW600White),
        centerTitle: false,
        backgroundColor: AppColors.kcPrimaryAccentColor,
        iconTheme: IconThemeData(color: AppColors.kcWhite),
        actions: [
          InkWell(
            onTap: () {

            },
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Image.asset(AppAssets.icSetting,
                  height: 20,
                  width: 20,
                  color: Colors.white,
                  fit: BoxFit.fill),
            ),
          ),
        ],
      ),
      body:  SafeArea(
          child: CustomScrollView(
            slivers: [
              SliverList(
                delegate: SliverChildListDelegate([
                  SizedBox(height: 20,),
                  SearchWidget(),
                  SizedBox(height: 20,),
                  _buildCategories(),
                  Expanded(
                    child: ListView.builder(
                      shrinkWrap: true,
                      itemCount: demoMediumCardData.length,
                      itemBuilder: (context, int index) {
                        return  FoodItemCard(
                          name: demoMediumCardData[index]["name"],
                          quantity: demoMediumCardData[index]["quantity"],
                          price: 50,
                          imageUrl: demoMediumCardData[index]["image"],
                          isAvailable: true,
                          rating: 4.5,
                        );
                      },
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



_buildItemList(int index){
  return
    Padding(padding: EdgeInsets.only(left: 10,right: 10,top: 5),child:
    Card(
      elevation: 8,
      shadowColor: AppColors.kcPrimaryAccentColor,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15.0),
      ),
    margin: const EdgeInsets.symmetric(vertical: 0),
    child: Padding(
      padding: const EdgeInsets.all(12.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Stack(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(8),
                child: Image.asset(
                  demoMediumCardData[index]["image"],
                  width: Get.width * 0.30,
                  height: Get.width * 0.25,
                  fit: BoxFit.cover,
                ),
              ),
              Positioned(
                top: 4,
                right: 4,
                child: Container(
                  padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 2),
                  decoration: BoxDecoration(
                    color: Colors.green,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Text(
                   'Available',
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 10,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(width: 12),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(demoMediumCardData[index]["name"], style:  AppTheme.topHeader),
                Text(demoMediumCardData[index]["quantity"], style: AppTheme.descText),
                SizedBox(height: 6),
                Text(demoMediumCardData[index]["location"], style: AppTheme.priceText),
                const SizedBox(height: 4),
                // Rating stars
                Row(
                  children: List.generate(5, (index) {
                    return Icon(
                      Icons.star,
                      size: 16,
                      color: Colors.amber,
                    );
                  }),
                ),
              ],
            ),
          ),
          Row(
            children: [
              IconButton(onPressed: () {}, icon: Icon(Icons.remove_circle_outline)),
              Text('0'),
              IconButton(onPressed: () {}, icon: Icon(Icons.add_circle_outline)),
            ],
          ),
        ],
      ),
    ),
  ));
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
