import 'package:demoproject/AppConstant/Routes.dart';
import 'package:demoproject/AppConstant/StaticData.dart';
import 'package:demoproject/AppConstant/ThemeColors.dart';
import 'package:demoproject/AppUtils/AppUtils.dart';
import 'package:demoproject/Controllers/MealsController.dart';
import 'package:demoproject/Helpers/MealsHelper.dart';
import 'package:demoproject/main.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class MealsScreen extends StatefulWidget {
  @override
  State<MealsScreen> createState() => _MealsScreenState();
}

class _MealsScreenState extends State<MealsScreen> {
  var themeColor = ThemeColors();
  var utils = AppUtils();
  var static = Statics();
  var route = Routes();

  var mealRead = navigatorkey.currentContext!.read<MealsController>();


  mealinitializefunc()async{
    await mealRead.intiailizeMealStatusList();
  }

  @override
  void initState() {
    // TODO: implement initState

    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      mealinitializefunc();
    });
  }

  @override
  Widget build(BuildContext context) {
    MealsHelper helper = MealsHelper(context);

    return WillPopScope(
      onWillPop: () async {
        return false;
      },
      child: Scaffold(
        backgroundColor: themeColor.backgroundColor,
        resizeToAvoidBottomInset: false,
        body: Container(
          width: static.width,
          height: static.height,
          child: Column(
            children: [
              utils.statusBar(context),
              helper.appbar(),
              helper.mealsList(),
              utils.bottomBar(context),
            ],
          ),
        ),
      ),
    );
  }
}
