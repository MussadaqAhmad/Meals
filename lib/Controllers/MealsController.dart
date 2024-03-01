import 'package:demoproject/Models/MealDataModel.dart';
import 'package:flutter/material.dart';

class MealsController with ChangeNotifier {
  TextEditingController mealNameController = TextEditingController();
  TextEditingController mealCaloriesController = TextEditingController();

  //...................... Meal List ...........................//

  List<MealDataModel> mealDataList = [
    MealDataModel(
      mealName: 'Meal One',
      icon: Icons.sunny_snowing,
      mealCaloriesData: [],
    ),
    MealDataModel(
      mealName: 'Meal Two',
      icon: Icons.square_rounded,
      mealCaloriesData: [],
    ),
    MealDataModel(
      mealName: 'Meal Three',
      icon: Icons.sunny,
      mealCaloriesData: [],
    ),
    MealDataModel(
      mealName: 'Meal Four',
      icon: Icons.sunny_snowing,
      mealCaloriesData: [],
    ),
    MealDataModel(
      mealName: 'Meal Five',
      icon: Icons.nights_stay_rounded,
      mealCaloriesData: [],
    ),
    MealDataModel(
      mealName: 'Meal Six',
      icon: Icons.nightlight,
      mealCaloriesData: [],
    ),
  ];

  addMealAndCalories({index}) {
    mealDataList[index].mealCaloriesData.add(MealCaloriesModel(
        mealName: mealNameController.text,
        mealCalories: int.parse(mealCaloriesController.text)));

    mealNameController.clear();
    mealCaloriesController.clear();
    print('Meal List Length ${mealDataList[index].mealCaloriesData.length}');
    notifyListeners();
  }

  //....................... Meal status List ...............//
  List<bool> mealStatusList = [];

  intiailizeMealStatusList() {
    for (int i = 0; i < mealDataList.length; i++) {
      mealStatusList.add(false);
    }
    notifyListeners();
  }

  activateMealStatusList({index}) {
    mealStatusList[index] = !mealStatusList[index];

    notifyListeners();
  }

  //..................... Remove Meal From List ..............//

  removeMeal({mealDataListIndex, mealCaloriesListIndex}) {
    mealDataList[mealDataListIndex]
        .mealCaloriesData
        .removeAt(mealCaloriesListIndex);
    notifyListeners();
  }
}
