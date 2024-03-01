import 'dart:ui';
import 'package:demoproject/AppConstant/Routes.dart';
import 'package:demoproject/AppConstant/StaticData.dart';
import 'package:demoproject/AppConstant/ThemeColors.dart';
import 'package:demoproject/AppUtils/AppUtils.dart';
import 'package:demoproject/Controllers/MealsController.dart';
import 'package:demoproject/Models/MealDataModel.dart';
import 'package:demoproject/main.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';

class MealsHelper {
  BuildContext context;

  MealsHelper(this.context);

  var utils = AppUtils();
  var theme = ThemeColors();
  var static = Statics();
  var route = Routes();

  var mealWatch = navigatorkey.currentContext!.watch<MealsController>();
  var mealRead = navigatorkey.currentContext!.read<MealsController>();

  Widget appbar() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 15.w, vertical: 10.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Text(
            'Meals',
            style: utils.headingStyleB(
              theme.blackColor,
            ),
          ),
          Spacer(),
          Icon(
            Icons.favorite,
            color: theme.blackColor,
          ),
          SizedBox(
            width: 10.w,
          ),
          Icon(
            Icons.more_horiz_rounded,
            color: theme.blackColor,
          ),
        ],
      ),
    );
  }

  Widget mealsList() {
    return Expanded(
      child: SingleChildScrollView(
        child: Column(
          children: [
            for (int i = 0; i < mealWatch.mealDataList.length; i++)
              mealContainer(
                mealName: mealWatch.mealDataList[i].mealName,
                icon: mealWatch.mealDataList[i].icon,
                index: i,
              ),
          ],
        ),
      ),
    );
  }

  Widget mealContainer({mealName, icon, index}) {
    return AnimatedContainer(
      duration: Duration(
        milliseconds: 700,
      ),
      margin: EdgeInsets.symmetric(horizontal: 15.w, vertical: 5.h),
      // padding: EdgeInsets.symmetric(horizontal: 5.w,vertical: 5.h),
      width: static.width,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12.r), color: theme.whiteColor),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.max,
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 5.w, vertical: 5.h),
                child: Container(
                  height: 55.h,
                  width: 60.w,
                  alignment: Alignment.centerLeft,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12.r),
                      color: theme.backgroundColor),
                  child: Center(
                    child: Icon(
                      icon,
                      color: theme.blackColor,
                    ),
                  ),
                ),
              ),
              SizedBox(
                width: 10.w,
              ),
              Container(
                margin: EdgeInsets.symmetric(vertical: 15.h),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      mealName,
                      style: utils.headingStyleB(theme.blackColor),
                    ),
                    mealWatch.mealDataList[index].mealCaloriesData.isEmpty
                        ? Container(
                            height: 12.h,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15.r),
                                color:
                                    theme.greenishBrownColor.withOpacity(.5)),
                            padding: EdgeInsets.symmetric(horizontal: 8.w),
                            child: Center(
                              child: Text(
                                'No Products',
                                style: utils.xSmallLabelStyle(theme.whiteColor),
                              ),
                            ),
                          )
                        : Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              GestureDetector(
                                child: Container(
                                  height: 14.h,
                                  width: 45.w,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(15.r),
                                      border: Border.all(
                                        color: mealWatch.mealStatusList[index]
                                            ? theme.greenColor.withOpacity(.5)
                                            : theme.blackColor,
                                        width: .5,
                                      ),
                                      color: theme.whiteColor),
                                  child: Center(
                                    child: Text(
                                      mealWatch.mealStatusList[index]
                                          ? 'Save'
                                          : 'Edit',
                                      style: utils
                                          .xSmallLabelStyle(theme.blackColor),
                                    ),
                                  ),
                                ),
                                onTap: () async {
                                  await mealRead.activateMealStatusList(
                                      index: index);
                                },
                              ),
                              SizedBox(
                                width: 10.w,
                              ),
                              mealWatch.mealStatusList[index]
                                  ? SizedBox()
                                  : Icon(
                                      Icons.bookmark_border_rounded,
                                      color: theme.greenishBrownColor,
                                      size: 18.w,
                                    ),
                            ],
                          ),
                  ],
                ),
              ),
              Spacer(),
              GestureDetector(
                onTap: () {
                  mealDetailSheet(context, index);
                },
                child: Container(
                  height: 55.h,
                  width: 55.w,
                  alignment: Alignment.topRight,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(12.r),
                      ),
                      color: theme.backgroundColor),
                  child: Container(
                    height: 50.h,
                    width: 50.w,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(5.r),
                          topRight: Radius.circular(20.r),
                          bottomLeft: Radius.circular(5.r),
                          bottomRight: Radius.circular(5.r),
                        ),
                        color: theme.blackColor),
                    child: Center(
                      child: Icon(
                        Icons.add,
                        color: theme.whiteColor,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
          mealWatch.mealDataList[index].mealCaloriesData.isNotEmpty
              ? productContainer(
                  meal: mealWatch.mealDataList[index].mealCaloriesData,
                  index: index)
              : SizedBox(),
        ],
      ),
    );
  }

  Widget productContainer({List<MealCaloriesModel>? meal, index}) {
    return AnimatedContainer(
      width: static.width,
      duration: Duration(milliseconds: 700),
      margin: EdgeInsets.symmetric(horizontal: 8.w, vertical: 10.h),
      padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 5.h),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(4.r),
              topRight: Radius.circular(4.r),
              bottomLeft: Radius.circular(10.r),
              bottomRight: Radius.circular(10.r)),
          color: theme.backgroundColor),
      child: Column(
        children: [
          for (int i = 0; i < meal!.length; i++) ...[
            SizedBox(
              height: 5.h,
            ),
            SizedBox(
              width: static.width,
              child: Row(
                children: [
                  Expanded(
                    child: Text(
                      meal[i].mealName,
                      style: utils.labelStyle(theme.lightGreyColor),
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                  Text(
                    '${meal[i].mealCalories}' + ' Cals',
                    style: utils.labelStyleB(theme.greenishBrownColor),
                  ),
                  SizedBox(
                    width: 10.w,
                  ),
                  GestureDetector(
                    onTap: () {
                      mealRead.removeMeal(
                          mealDataListIndex: index, mealCaloriesListIndex: i);
                    },
                    child: Container(
                      height: 15.h,
                      width: 15.w,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: mealRead.mealStatusList[index]
                            ? theme.redColor
                            : theme.greenishBrownColor,
                      ),
                      child: Center(
                        child: Icon(
                          mealRead.mealStatusList[index]
                              ? Icons.close
                              : Icons.arrow_forward_rounded,
                          color: theme.whiteColor,
                          size: 10.w,
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 5.h,
            ),
            Divider(
              color: theme.whiteColor,
              thickness: 1.h,
            ),
          ],
          SizedBox(
            height: 5.h,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Total',
                style: utils.labelStyleB(theme.greenColor.withOpacity(.5)),
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
              Container(
                margin: EdgeInsets.only(right: 25.w),
                child: Text(
                  '${meal.fold(0, (sum, meal) => sum + meal.mealCalories)}' +
                      ' Cals',
                  style: utils.labelStyleB(theme.greenColor.withOpacity(.5)),
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
            ],
          ),
          SizedBox(
            height: 5.h,
          ),
        ],
      ),
    );
  }

  mealDetailSheet(BuildContext context, index) {
    return showModalBottomSheet(
        context: context,
        backgroundColor: theme.transparentColor,
        isScrollControlled: true,
        useRootNavigator: true,
        builder: (builder) {
          return StatefulBuilder(
              builder: (BuildContext context, StateSetter setState) {
            return BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
              child: Padding(
                padding: MediaQuery.of(context).viewInsets,
                child: Container(
                  // height: static.height * 0.75,
                  child: Wrap(
                    children: [
                      Stack(
                        children: [
                          Container(
                            padding: EdgeInsets.only(top: 50),
                            child: Container(
                              width: static.width,
                              height: static.height * 0.40,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.only(
                                    topRight: Radius.circular(12.0),
                                    topLeft: Radius.circular(12.0)),
                                color: theme.whiteColor,
                              ),
                              child: Container(
                                  padding: EdgeInsets.only(
                                      top: 25.h,
                                      left: 20.w,
                                      right: 20.w,
                                      bottom: 20.h),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      Text(
                                        'Type Meal Name And Calories',
                                        style: utils.headingStyleB(
                                          theme.blackColor,
                                        ),
                                      ),
                                      SizedBox(
                                        height: 15.h,
                                      ),
                                      mealNameTextField(),
                                      mealCaloriesTextField(),
                                      Spacer(),
                                      Container(
                                        width: static.width,
                                        child: utils.button(
                                          textSize: static.width > 550
                                              ? 10.sp
                                              : 20.sp,
                                          text: 'Save',
                                          buttonColor: theme.greenishBrownColor,
                                          borderColor: theme.greenishBrownColor,
                                          ontap: () async {
                                            if (mealWatch.mealNameController
                                                    .text.isNotEmpty &&
                                                mealWatch.mealCaloriesController
                                                    .text.isNotEmpty) {
                                              await mealRead.addMealAndCalories(
                                                  index: index);
                                              Navigator.pop(context);
                                            } else {
                                              Navigator.pop(context);
                                              utils.showToast(context,
                                                  text:
                                                      'Please add Meal And Calories');
                                            }
                                          },
                                          textColor: theme.whiteColor,
                                          width: static.width,
                                        ),
                                      ),
                                    ],
                                  )),
                            ),
                          ),
                          Positioned(
                            top: 0.h,
                            right: 20,
                            child: GestureDetector(
                              onTap: () {
                                mealWatch.mealNameController.clear();
                                mealWatch.mealCaloriesController.clear();
                                Navigator.pop(context);
                              },
                              child: Icon(
                                Icons.close,
                                color: theme.whiteColor,
                                size: 20.h,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            );
          });
        });
  }

  Widget mealNameTextField() {
    return Container(
      child: utils.inputField(
        textfieldColor: theme.whiteColor,
        onChange: (content) {},
        borderColor: theme.greyColor.withOpacity(.7),
        textColor: theme.blackColor,
        controller: mealWatch.mealNameController,
        isEnable: true,
        isSecure: false,
        placeholder: "Meal Name",
        placeholderColor: theme.greyColor.withOpacity(.4),
      ),
    );
  }

  Widget mealCaloriesTextField() {
    return Container(
      padding: EdgeInsets.only(bottom: 10.h),
      child: utils.inputField(
        textfieldColor: theme.whiteColor,
        onChange: (content) {},
        borderColor: theme.greyColor.withOpacity(.7),
        textColor: theme.blackColor,
        controller: mealWatch.mealCaloriesController,
        keyboard: TextInputType.number,
        isEnable: true,
        isSecure: false,
        placeholder: "Meal Calories",
        placeholderColor: theme.greyColor.withOpacity(.4),
      ),
    );
  }
}
