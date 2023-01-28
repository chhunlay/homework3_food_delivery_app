import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomPopularFoodCard extends StatelessWidget {
  CustomPopularFoodCard({
    required this.imagePath,
    required this.price,
    required this.foodName,
    required this.restaurantName,
    Key? key,
  }) : super(key: key);

  AssetImage imagePath;
  String foodName;
  String restaurantName;
  String price;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 90,
      width: double.infinity,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16), color: Colors.orange[50]),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Container(
            height: 70,
            width: 70,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16),
            ),
            child: Image(image: imagePath),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 15, right: 100, bottom: 15),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  foodName,
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                Text(
                  restaurantName,
                  style: TextStyle(color: Colors.grey),
                ),
              ],
            ),
          ),
          Text(
            price,
            style: TextStyle(color: Colors.red, fontSize: 20),
          ),
        ],
      ),
    );
  }
}
