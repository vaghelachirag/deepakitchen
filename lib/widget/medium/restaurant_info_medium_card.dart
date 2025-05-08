import 'package:deepaskitchen/uttils/theme/app_theme.dart';
import 'package:flutter/material.dart';

import '../../global/constant/colors.dart';
import '../../uttils/constants.dart';
import '../rating.dart';
import '../small_dot.dart';


class RestaurantInfoMediumCard extends StatelessWidget {
  const RestaurantInfoMediumCard({
    Key? key,
    required this.image,
    required this.name,
    required this.location,
    required this.rating,
    required this.quantity,
    required this.delivertTime,
    required this.press,
  }) : super(key: key);

  final String image, name, location,quantity;
  final double rating;
  final int delivertTime;
  final VoidCallback press;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: press,
      child: Card(
        elevation: 8,
        shadowColor: AppColors.kcPrimaryAccentColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15.0),
        ),
        borderOnForeground: false,
        child: Padding(padding: EdgeInsets.all(10),child: SizedBox(
        width: 200,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            AspectRatio(
              aspectRatio: 1.25,
              child: ClipRRect(
                borderRadius: const BorderRadius.all(Radius.circular(10)),
                child: Image.asset(image, fit: BoxFit.cover),
              ),
            ),
            const SizedBox(height: defaultPadding / 2.5),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  name,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: AppTheme.headerText,
                ),
                Align(
                  alignment: Alignment.topRight,
                  child:    Text(
                    location,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: AppTheme.priceText,
                  ),
                )
              ],
            ),
            const SizedBox(height: defaultPadding / 4),
            Text(
              quantity,
              maxLines: 1,
              style:  AppTheme.descText,
            ),
            const SizedBox(height: defaultPadding / 2),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Rating(rating: rating),
                Text(
                  "$delivertTime min",
                  style:AppTheme.descText,
                ),
                const SmallDot(),
                Text(
                  "Free delivery",
                  style: AppTheme.descText,
                )
              ],
            )
          ],
        ),
        ) ),
    ));
  }
}
