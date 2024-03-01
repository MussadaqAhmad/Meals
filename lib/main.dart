import 'package:demoproject/AppConstant/Routes.dart';
import 'package:demoproject/AppConstant/ThemeColors.dart';
import 'package:demoproject/Controllers/MealsController.dart';
import 'package:demoproject/Views/Meals/MealsScreen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';

final GlobalKey<NavigatorState> navigatorkey = GlobalKey<NavigatorState>();

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);

  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider<MealsController>(
          create: (_) => MealsController(),
        ),
      ],
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  var theme = ThemeColors();
  var routes = Routes();

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: Size(360, 640),
      builder: (context, child) => MaterialApp(
        navigatorKey: navigatorkey,
        title: 'Meals',
        debugShowCheckedModeBanner: false,
        initialRoute: routes.mealsScreenRoute,
        routes: {
          routes.mealsScreenRoute: (context) => MealsScreen(),
        },
        theme: ThemeData(
          primarySwatch: theme.kPrimaryColor,
        ),
      ),
    );
  }
}
