import 'package:deepaskitchen/controllers/category/CategoryController.dart';
import 'package:flutter/material.dart';

class SearchWidget extends StatelessWidget {
  SearchWidget(CategoryController controller);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 10,top: 0,right: 10,bottom: 0),
      child:  TextFormField(
        onChanged: (value) => print("Search"+ "Search"),
        decoration: InputDecoration(
          hintText: 'Search...',
          prefixIcon: Icon(Icons.search),
          suffixIcon: IconButton(
            icon: Icon(Icons.filter_list), onPressed: () {

          },
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12),
          ),
        ),
      )
    );
  }
}