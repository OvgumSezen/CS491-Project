//Create a restaurant class
import 'dart:ffi';
import 'package:bitirapp/model/user/food_category_model.dart';
import 'package:bitirapp/model/user/food_model.dart';

class Restaurant {
  final int id;
  final String name;
  final String address;
  final String phone;
  final String email;
  final String description;
  final String image;
  final String category;
  final List<FoodCategory> foodCategories;
  final List<Food> foods;
  final double rating;
  final double maxDiscount;
  final int index;
  final int deliveryTime;
  bool isFavorite = false;

  Restaurant({
    required this.id,
    required this.name,
    required this.address,
    required this.phone,
    required this.email,
    required this.description,
    required this.image,
    required this.category,
    required this.foodCategories,
    required this.foods,
    required this.rating,
    required this.maxDiscount,
    required this.index,
    required this.deliveryTime,
  });
}
