import 'package:deepaskitchen/global/constant/colors.dart';
import 'package:deepaskitchen/uttils/theme/app_theme.dart';
import 'package:deepaskitchen/views/productDetail/product_detail_controller.dart';
import 'package:deepaskitchen/widget/common_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../uttils/constants.dart' as ThemeColor;


class ProductDetailScreen extends StatelessWidget {

  int quantity = 1;
  bool addCurd = false;
  bool extraPickle = false;
  double basePrice = 60.0;

  final List<Map<String, dynamic>> reviews = [
    {
      "name": "Amit Shah",
      "rating": 5,
      "comment": "Very tasty and fresh! Reminded me of home.",
    },
    {
      "name": "Sneha Patel",
      "rating": 4,
      "comment": "Loved the thepla. Curd was fresh and pickle spicy!",
    },
  ];

  double get totalPrice {
    double extras = 0;
    if (addCurd) extras += 10;
    if (extraPickle) extras += 5;
    return (basePrice + extras) * quantity;
  }


  Widget buildCard({required Widget child}) {
    return Card(
      elevation: 3,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      margin: EdgeInsets.symmetric(vertical: 8),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: child,
      ),
    );
  }

  Widget buildReviewSection(BuildContext context) {
    return buildCard(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [

        ],
      ),
    );
  }

  ProductDetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual, overlays: [SystemUiOverlay.top]);
    return GetBuilder<ProductDetailController>(
        init: ProductDetailController(),
        builder: (controller) {
          return WillPopScope(
              onWillPop: () async => false,
              child:DefaultTabController(
                length: 2,
                child:  Scaffold(
                  appBar: getTopAppBar("Product Detail"),
                  backgroundColor: ThemeColor.mainBg,
                  bottomNavigationBar: bottomBar(),
                  body: SingleChildScrollView(
          padding: EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Image
              ClipRRect(
                borderRadius: BorderRadius.circular(16),
                child: Image.asset(
                  'assets/images/puribhaji.jpg',
                  height: 200,
                  width: double.infinity,
                  fit: BoxFit.cover,
                ),
              ),
              SizedBox(height: 16),

              // Card 1: Title and Description
              buildCard(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Methi Thepla with Pickle & Curd',
                      style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 8),
                    Text('₹$basePrice',
                        style: AppTheme.priceText),
                    SizedBox(height: 12),
                    Text(
                      'Freshly made Gujarati methi thepla served with homemade pickle and curd. Perfect for breakfast or lunch.',
                      style: AppTheme.topHeader,
                    ),
                    SizedBox(height: 10,),
                    Text('Customizations',
                        style: AppTheme.topHeader),
                    CheckboxListTile(
                      title: Text('Add Curd (+₹10)',style: AppTheme.categoryText,),
                      value: addCurd,
                      onChanged: (value) => {},
                    ),
                    CheckboxListTile(
                      title: Text('Extra Pickle (+₹5)',style: AppTheme.categoryText),
                      value: extraPickle,
                      onChanged: (value) => {},
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Quantity', style: AppTheme.categoryText),
                        Row(
                          children: [
                            IconButton(
                              icon: Icon(Icons.remove_circle_outline),
                              onPressed: () => {},
                            ),
                            Text('$quantity', style: TextStyle(fontSize: 16)),
                            IconButton(
                              icon: Icon(Icons.add_circle_outline),
                              onPressed: () => {},
                            ),
                          ],
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Customer Reviews',
                            style:  AppTheme.categoryText),
                        TextButton(
                          onPressed: () => {},
                          child: Text('+ Write Review'),
                        ),
                      ],
                    ),
                    ...reviews.map((r) {
                      return Padding(
                        padding: const EdgeInsets.only(top: 8),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('${r["name"]} • ${'⭐' * r["rating"]}',
                                style: TextStyle(fontWeight: FontWeight.bold)),
                            Text(r["comment"]),
                          ],
                        ),
                      );
                    })
                  ],
                ),
              ),
              // Card 4: Reviews
          ],
          ),
                ),
              )));
        }
    );
  }
}

Widget bottomBar(){
  return Container(
    padding: EdgeInsets.symmetric(horizontal: 16, vertical: 12),
    color: Colors.white,
    child: Row(
      children: [
        Text(
          'Total: ₹50',
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
        ),
        Spacer(),
        ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.green[700],
            padding: EdgeInsets.symmetric(horizontal: 24, vertical: 12),
          ),
          onPressed: () {
            // Add to cart logic
          },
          child: Text('Add to Cart', style: TextStyle(fontSize: 16)),
        ),
      ],
    ),
  );
}


class FoodTitleWidget extends StatelessWidget {
  String productName;
  String productPrice;
  String productHost;

  FoodTitleWidget({
    Key? key,
    required this.productName,
    required this.productPrice,
    required this.productHost,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Text(
              productName,
              style: TextStyle(
                  fontSize: 20,
                  color: Color(0xFF3a3a3b),
                  fontWeight: FontWeight.w500),
            ),
            Text(
              productPrice,
              style: TextStyle(
                  fontSize: 20,
                  color: Color(0xFF3a3a3b),
                  fontWeight: FontWeight.w500),
            ),
          ],
        ),
        SizedBox(
          height: 5,
        ),
        Row(
          children: <Widget>[
            Text(
              "by ",
              style: TextStyle(
                  fontSize: 16,
                  color: Color(0xFFa9a9a9),
                  fontWeight: FontWeight.w400),
            ),
            Text(
              productHost,
              style: TextStyle(
                  fontSize: 16,
                  color: Color(0xFF1f1f1f),
                  fontWeight: FontWeight.w400),
            ),
          ],
        )
      ],
    );
  }
}


class AddToCartMenu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.remove),
            color: Colors.black,
            iconSize: 30,
          ),
          InkWell(
            onTap: () {
            },
            child: Container(
              width: 200.0,
              height: 45.0,
              decoration: new BoxDecoration(
                color: Color(0xFFfd2c2c),
                border: Border.all(color: Colors.white, width: 2.0),
                borderRadius: BorderRadius.circular(10.0),
              ),
              child: Center(
                child: Text(
                  'Add To Bag',
                  style: new TextStyle(
                      fontSize: 18.0,
                      color: Colors.white,
                      fontWeight: FontWeight.w400),
                ),
              ),
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.add),
            color: Color(0xFFfd2c2c),
            iconSize: 30,
          ),
        ],
      ),
    );
  }
}

class DetailContentMenu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(
        'Lorem ipsum, or lipsum as it is sometimes known, is dummy text used in laying out print, graphic or web designs. The passage is attributed to an unknown typesetter in the 15th century who is thought to have scrambled parts of Cicero\'s De Finibus Bonorum et Malorum for use in a type specimen book.',
        style: TextStyle(
            fontSize: 14.0,
            color: Colors.black87,
            fontWeight: FontWeight.w400,
            height: 1.50),
        textAlign: TextAlign.justify,
      ),
    );
  }
}

void showReviewDialog() {
  String name = '';
  String comment = '';
  int rating = 5;

  showDialog(
    context: Get.context!,
    builder: (_) => AlertDialog(
      title: Text('Write a Review'),
      content: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          TextField(
            decoration: InputDecoration(labelText: 'Your Name'),
            onChanged: (value) => name = value,
          ),
          TextField(
            decoration: InputDecoration(labelText: 'Comment'),
            onChanged: (value) => comment = value,
          ),
          DropdownButtonFormField<int>(
            value: rating,
            decoration: InputDecoration(labelText: 'Rating'),
            items: List.generate(5, (i) => i + 1)
                .map((val) =>
                DropdownMenuItem(value: val, child: Text('$val Stars')))
                .toList(),
            onChanged: (val) => rating = val!,
          ),
        ],
      ),
      actions: [
        TextButton(onPressed: () => {}, child: Text('Cancel')),
        ElevatedButton(
          onPressed: () {
            if (name.isNotEmpty && comment.isNotEmpty) {
               
            }
          },
          child: Text('Submit'),
        ),
      ],
    ),
  );
}