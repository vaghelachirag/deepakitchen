import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../global/constant/colors.dart';

class FoodItemCard extends StatelessWidget {
  final String name;
  final String quantity;
  final int price;
  final String imageUrl;
  final bool isAvailable;
  final double rating; // From 0.0 to 5.0

  const FoodItemCard({
    super.key,
    required this.name,
    required this.quantity,
    required this.price,
    required this.imageUrl,
    required this.isAvailable,
    required this.rating,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
      elevation: 8,
      shadowColor: AppColors.kcPrimaryAccentColor,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15.0),
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          children: [
            // Image with availability tag
            Stack(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(8),
                  child: Image.asset(
                    imageUrl,
                    width: Get.width * 0.30,
                    height:  Get.width * 0.28,
                    fit: BoxFit.cover,
                  ),
                ),
                Positioned(
                  top: 4,
                  right: 4,
                  child: Container(
                    padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 2),
                    decoration: BoxDecoration(
                      color: isAvailable ? Colors.green : Colors.red,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Text(
                      isAvailable ? 'Available' : 'Not Available',
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
            const SizedBox(width: 12),
            // Text and rating
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(name, style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
                  Text(quantity, style: const TextStyle(fontSize: 12, color: Colors.grey)),
                  Text('₹ $price', style: const TextStyle(fontSize: 14, color: Colors.orange)),
                  const SizedBox(height: 4),
                  // Rating stars
                  Row(
                    children: List.generate(5, (index) {
                      return Icon(
                        index < rating.round()
                            ? Icons.star
                            : Icons.star_border,
                        size: 16,
                        color: Colors.amber,
                      );
                    }),
                  ),
                ],
              ),
            ),
            // Quantity buttons
            Row(
              children: const [
                Icon(Icons.remove_circle_outline),
                SizedBox(width: 4),
                Text("0"),
                SizedBox(width: 4),
                Icon(Icons.add_circle_outline),
              ],
            ),
          ],
        ),
      ),
    );
  }
}