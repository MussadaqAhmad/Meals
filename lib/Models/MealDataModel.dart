import 'package:flutter/cupertino.dart';

class MealDataModel {
  String mealName;
  IconData icon;
  List<MealCaloriesModel> mealCaloriesData;

  MealDataModel({
    required this.mealName,
    required this.icon,
    required this.mealCaloriesData,
  });
}

class MealCaloriesModel {
  String mealName;
  int mealCalories;

  MealCaloriesModel({
    required this.mealName,
    required this.mealCalories,
  });
}
