import 'package:demoproject/main.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Statics {
  var width = MediaQuery.of(navigatorkey.currentContext!).size.width;
  var height = MediaQuery.of(navigatorkey.currentContext!).size.height;

  final xxxxxlHeading =
      MediaQuery.of(navigatorkey.currentContext!).size.width > 375
          ? 30.sp
          : 29.sp;
  final xxxxlHeading =
      MediaQuery.of(navigatorkey.currentContext!).size.width > 375
          ? 26.sp
          : 25.sp;
  final xxxlHeading =
      MediaQuery.of(navigatorkey.currentContext!).size.width > 375
          ? 24.0.sp
          : 23.sp;
  final xxlHeading =
      MediaQuery.of(navigatorkey.currentContext!).size.width > 375
          ? 22.0.sp
          : 21.sp;
  final xlHeading = MediaQuery.of(navigatorkey.currentContext!).size.width > 375
      ? 20.0.sp
      : 19.sp;
  final xHeading = MediaQuery.of(navigatorkey.currentContext!).size.width > 375
      ? 18.0.sp
      : 17.sp;
  final heading = MediaQuery.of(navigatorkey.currentContext!).size.width > 375
      ? 16.0.sp
      : 15.0.sp;
  final label = MediaQuery.of(navigatorkey.currentContext!).size.width > 375
      ? 14.0.sp
      : 13.0.sp;
  final smallLabel =
      MediaQuery.of(navigatorkey.currentContext!).size.width > 375
          ? 12.0.sp
          : 11.0.sp;
  final xSmallLabel =
      MediaQuery.of(navigatorkey.currentContext!).size.width > 375
          ? 10.0.sp
          : 9.0.sp;
  final xlSmallLabel =
      MediaQuery.of(navigatorkey.currentContext!).size.width > 375
          ? 8.0.sp
          : 7.0.sp;
  final xxlSmallLabel =
      MediaQuery.of(navigatorkey.currentContext!).size.width > 375
          ? 6.0.sp
          : 5.0.sp;
  final bold = FontWeight.bold;
  final normal = FontWeight.normal;
  final light = FontWeight.w400;
}
