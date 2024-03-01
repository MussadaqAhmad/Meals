import 'package:demoproject/AppConstant/StaticData.dart';
import 'package:demoproject/AppConstant/ThemeColors.dart';
import 'package:demoproject/main.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppUtils {
  var static = Statics();
  var themeColor = ThemeColors();

  //.................. Text Styles/Sizes Define .........//
  generalHeadingBold(color,
      {size = 0.0, fontFamily = 'finalBook', weight = FontWeight.bold}) {
    return TextStyle(
      fontWeight: static.bold,
      fontSize: MediaQuery.of(navigatorkey.currentContext!).size.width > 412
          ? size
          : size - 2.sp,
      color: color,
      decoration: TextDecoration.none,
      fontFamily: fontFamily,
      height: 1.4,
    );
  }

  generalHeading(color,
      {size = 0.0, fontFamily = 'finalBook', weight = FontWeight.normal}) {
    return TextStyle(
      fontWeight: static.normal,
      fontSize: MediaQuery.of(navigatorkey.currentContext!).size.width > 412
          ? size
          : size - 2.sp,
      color: color,
      decoration: TextDecoration.none,
      fontFamily: fontFamily,
      height: 1.4,
    );
  }

  xxxlHeading(color, {fontFamily = 'finalBook'}) {
    return TextStyle(
      fontWeight: static.normal,
      fontSize: static.xxxlHeading,
      color: color,
      decoration: TextDecoration.none,
      fontFamily: fontFamily,
      height: 1.4,
    );
  }

  xxxlHeadingB(color, {fontFamily = 'finalBook'}) {
    return TextStyle(
      fontWeight: static.bold,
      fontSize: static.xxxlHeading,
      color: color,
      decoration: TextDecoration.none,
      fontFamily: fontFamily,
      height: 1.4,
    );
  }

  xxlHeadingStyle(color, {fontFamily = 'finalBook'}) {
    return TextStyle(
      fontWeight: static.normal,
      fontSize: static.xxlHeading,
      color: color,
      decoration: TextDecoration.none,
      fontFamily: fontFamily,
      height: 1.4,
    );
  }

  xxlHeadingStyleB(color, {fontFamily = 'finalBook'}) {
    return TextStyle(
      fontWeight: static.bold,
      fontSize: static.xxlHeading,
      color: color,
      decoration: TextDecoration.none,
      fontFamily: fontFamily,
      height: 1.4,
    );
  }

  xlHeadingStyle(color, {fontFamily = 'finalBook'}) {
    return TextStyle(
      fontWeight: static.normal,
      fontSize: static.xlHeading,
      color: color,
      decoration: TextDecoration.none,
      fontFamily: fontFamily,
      height: 1.4,
    );
  }

  xlHeadingStyleB(color, {fontFamily = 'finalBook'}) {
    return TextStyle(
      fontWeight: static.bold,
      fontSize: static.xlHeading,
      color: color,
      decoration: TextDecoration.none,
      fontFamily: fontFamily,
      height: 1.4,
    );
  }

  xHeadingStyle(color, {fontFamily = 'finalBook'}) {
    return TextStyle(
      fontWeight: static.light,
      fontSize: static.xHeading,
      color: color,
      decoration: TextDecoration.none,
      fontFamily: fontFamily,
      height: 1.4,
    );
  }

  xHeadingStyleB(color, {fontFamily = 'finalBook'}) {
    return TextStyle(
      fontWeight: static.bold,
      fontSize: static.xHeading,
      color: color,
      decoration: TextDecoration.none,
      fontFamily: fontFamily,
      height: 1.4,
    );
  }

  headingStyle(color,
      {fontFamily = 'finalBook', textDecoration = TextDecoration.none}) {
    return TextStyle(
      fontWeight: static.normal,
      fontSize: static.heading,
      color: color,
      decoration: textDecoration,
      fontFamily: fontFamily,
      decorationThickness: 2,
      height: 1.4,
    );
  }

  headingStyleB(color,
      {fontFamily = 'finalBook', textDecoration = TextDecoration.none}) {
    return TextStyle(
      fontWeight: static.bold,
      fontSize: static.heading,
      color: color,
      decoration: textDecoration,
      fontFamily: fontFamily,
      height: 1.4,
    );
  }

  labelStyle(color,
      {fontFamily = 'finalBook', textDecoration = TextDecoration.none}) {
    return TextStyle(
      fontSize: static.label,
      fontWeight: static.normal,
      color: color,
      decoration: textDecoration,
      fontFamily: fontFamily,
      height: 1.4,
    );
  }

  labelStyleB(color,
      {fontFamily = 'finalBook', textDecoration = TextDecoration.none}) {
    return TextStyle(
      fontSize: static.label,
      fontWeight: static.bold,
      color: color,
      decoration: TextDecoration.none,
      fontFamily: fontFamily,
      decorationThickness: 2,
      height: 1.4,
    );
  }

  smallLabelStyle(
    color, {
    fontFamily = 'finalBook',
    textDecoration = TextDecoration.none,
    height = 1.4,
    letterSpacing = 0.0,
  }) {
    return TextStyle(
      fontSize: static.smallLabel,
      fontWeight: static.normal,
      color: color,
      decoration: textDecoration,
      fontFamily: fontFamily,
      height: height,
      letterSpacing: letterSpacing,
    );
  }

  smallLabelStyleB(color, {fontFamily = 'finalBook', height = 1.4}) {
    return TextStyle(
      fontSize: static.smallLabel,
      fontWeight: static.bold,
      color: color,
      decoration: TextDecoration.none,
      fontFamily: fontFamily,
      height: height,
    );
  }

  xSmallLabelStyle(color, {fontFamily = 'finalBook'}) {
    return TextStyle(
      fontSize: static.xSmallLabel,
      fontWeight: static.normal,
      color: color,
      decoration: TextDecoration.none,
      fontFamily: fontFamily,
      height: 1.4,
    );
  }

  xSmallLabelStyleB(color, {fontFamily = 'finalBook'}) {
    return TextStyle(
      fontSize: static.xSmallLabel,
      fontWeight: static.bold,
      color: color,
      decoration: TextDecoration.none,
      fontFamily: fontFamily,
      height: 1.4,
    );
  }

  xlSmallLabelStyle(color, {fontFamily = 'finalBook'}) {
    return TextStyle(
      fontSize: static.xlSmallLabel,
      fontWeight: static.normal,
      color: color,
      decoration: TextDecoration.none,
      fontFamily: fontFamily,
      height: 1.4,
    );
  }

  xlSmallLabelStyleB(color, {fontFamily = 'finalBook'}) {
    return TextStyle(
      fontSize: static.xlSmallLabel,
      fontWeight: static.bold,
      color: color,
      decoration: TextDecoration.none,
      fontFamily: fontFamily,
      height: 1.4,
    );
  }

  xxlSmallLabelStyle(color, {fontFamily = 'finalBook'}) {
    return TextStyle(
      fontSize: static.xxlSmallLabel,
      fontWeight: static.normal,
      color: color,
      decoration: TextDecoration.none,
      fontFamily: fontFamily,
      height: 1.4,
    );
  }

  xxlSmallLabelStyleB(color, {fontFamily = 'finalBook'}) {
    return TextStyle(
      fontSize: static.xxlSmallLabel,
      fontWeight: static.bold,
      color: color,
      decoration: TextDecoration.none,
      fontFamily: fontFamily,
      height: 1.4,
    );
  }

  statusBar(context, {color}) {
    return Container(
      height: MediaQuery.of(context).padding.top,
      decoration: BoxDecoration(
        color: color,
      ),
    );
  }

  Widget bottomBar(context, {color}) {
    return Container(
      height: MediaQuery.of(context).padding.bottom,
      decoration: BoxDecoration(
        color: color,
      ),
    );
  }

  button({
    textColor,
    text,
    textSize = 0.0,
    buttonColor,
    borderColor,
    ontap,
    fontFamily = "finalBook",
    width = 423,
  }) {
    return InkWell(
      onTap: ontap,
      child: Container(
        alignment: Alignment.center,
        padding: EdgeInsets.symmetric(vertical: 12.h),
        margin: EdgeInsets.symmetric(horizontal: 3.w),
        decoration: BoxDecoration(
          color: buttonColor,
          borderRadius: BorderRadius.circular(30.r),
          border: Border.all(color: borderColor, width: .7),
        ),
        child: Text(
          text,
          style: generalHeadingBold(textColor,
              fontFamily: fontFamily, size: textSize),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }

  showToast(BuildContext context, {text}) {
    final scaffold = ScaffoldMessenger.of(context);
    return scaffold.showSnackBar(SnackBar(
      backgroundColor: themeColor.whiteColor,
      content: GestureDetector(
        onTap: () {
          scaffold.hideCurrentSnackBar;
        },
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              width: static.width * 0.70,
              child: Text(
                text,
                style: labelStyleB(themeColor.blackColor,
                    fontFamily: "openSansRegular"),
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
            ),
            GestureDetector(
              onTap: () {
                scaffold.hideCurrentSnackBar;
              },
              child: Icon(
                Icons.close,
                color: themeColor.blackColor,
                size: 24,
              ),
            )
          ],
        ),
      ),
      width: static.width * 0.9,
      behavior: SnackBarBehavior.floating,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8),
      ),
    ));
  }

  inputField({
    isEnable = true,
    textColor,
    placeholder,
    placeholderColor,
    postfixIcon,
    postfixIconColor,
    postFixIconSize = 20.0,
    postfixClick,
    prefixIcon,
    prefixIconColor,
    preFixIconSize = 20.0,
    prefixClick,
    maxLines = 1,
    isSecure,
    controller,
    keyboard = TextInputType.text,
    textfieldColor = null,
    borderColor = null,
    onChange = null,
  }) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 0),
      child: Container(
        width: double.infinity,
        padding: EdgeInsets.symmetric(vertical: 12.h, horizontal: 2.w) +
            EdgeInsets.only(right: 12.w),
        margin: EdgeInsets.symmetric(vertical: 7.h),
        decoration: BoxDecoration(
            color: textfieldColor ?? themeColor.lightGreyColor,
            borderRadius: BorderRadius.circular(28.r),
            border: Border.all(
              color: borderColor ?? Colors.transparent,
              width: 0.5,
            )),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            if (prefixIcon != null)
              GestureDetector(
                onTap: prefixClick,
                child: Container(
                  padding: EdgeInsets.only(left: 20.w),
                  child: Image.asset(
                    "assets/Icons/$prefixIcon.png",
                    height: preFixIconSize,
                    width: preFixIconSize,
                    color: prefixIconColor,
                  ),
                ),
              ),
            Expanded(
              child: Container(
                margin: EdgeInsets.only(left: 20.w),
                child: TextFormField(
                  onChanged: onChange,
                  enabled: isEnable,
                  controller: controller,
                  maxLines: maxLines,
                  keyboardType: keyboard,
                  obscureText: isSecure,
                  style: headingStyle(textColor),
                  cursorColor: themeColor.greenishBrownColor,
                  decoration: InputDecoration.collapsed(
                    hintText: placeholder,
                    hintStyle: headingStyle(
                      placeholderColor,
                    ),
                    border: InputBorder.none,
                  ),
                ),
              ),
            ),
            if (postfixIcon != null)
              GestureDetector(
                onTap: postfixClick,
                child: Image.asset(
                  "assets/Icons/$postfixIcon.png",
                  height: postFixIconSize,
                  width: postFixIconSize,
                  color: postfixIconColor,
                ),
              )
          ],
        ),
      ),
    );
  }
}
