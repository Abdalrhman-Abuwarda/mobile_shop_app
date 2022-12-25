import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mobile_shop_app/resources/valuesManager.dart';

import 'colorsManager.dart';

class ThemeManager {
  // final currentContext = ServiceNavigations.serviceNavi.navKey.currentContext!;
  static ThemeData get lightTheme { //1
    return ThemeData( //2
        primaryColor: ColorManager.mainColor,

        scaffoldBackgroundColor: ColorManager.whiteColor,
        fontFamily: 'Segoe UI', //3
        buttonTheme: ButtonThemeData( // 4
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(18.0)),
          buttonColor: ColorManager.greenColor,
        ),
        appBarTheme:  AppBarTheme(
          toolbarHeight: AppSize.s100.h,
            elevation: 0,
            iconTheme: const IconThemeData(
              size: AppSize.s25,
              color: ColorManager.primaryFontColor,
            ),
            centerTitle: true,
            // titleSpacing: 30,
            actionsIconTheme: const IconThemeData(
              size: AppSize.s25,
              color: Color(0xFF151617),
            ),
            backgroundColor: null,
            titleTextStyle: TextStyle(fontSize: 20.0.sp,fontFamily: 'Segoe UI', fontWeight: FontWeight.w600, color: ColorManager.primaryFontColor)
        ),
      textTheme:   TextTheme(
        headline1: TextStyle(fontSize: 40.sp, fontFamily: 'Open Sans',fontWeight: FontWeight.w600, color: ColorManager.blackColor),
        headline2: TextStyle(fontSize: 22.0.sp,fontFamily: 'Open Sans', fontWeight: FontWeight.bold, color: ColorManager.blackColor),
        headline3: TextStyle(fontSize: 17.0.sp,fontFamily: 'Open Sans', fontWeight: FontWeight.w600, color: ColorManager.blackColor),
        headline4: TextStyle(fontSize: 15.0.sp,fontFamily: 'Open Sans', fontWeight: FontWeight.normal, color: ColorManager.grayIcon),
        headline5: TextStyle(fontSize: 13.0.sp,fontFamily: 'Open Sans', fontWeight: FontWeight.normal, color: ColorManager.blackColor ),
        // headline6: TextStyle(fontSize: 13.0.sp,fontFamily: 'Open Sans', fontWeight: FontWeight.normal, color: ColorManager.thirdFontColor),

        subtitle2: TextStyle(fontSize: 24.sp,fontFamily: 'Open Sans', fontWeight: FontWeight.normal, color: ColorManager.grayIcon),
        bodyText1: TextStyle(fontSize: 11.0.sp,fontFamily: 'Open Sans', fontWeight: FontWeight.normal, color: ColorManager.blackColor ),
        bodyText2: TextStyle(fontSize: 12.0.sp,fontFamily: 'Open Sans', fontWeight: FontWeight.normal, color: ColorManager.blackColor ),
        // subtitle1: TextStyle(fontSize: 13.sp,fontFamily: 'Open Sans', fontWeight: FontWeight.normal, color: ColorManager.blackColor),

        // labelMedium: TextStyle(fontSize: 14.0.sp,fontFamily: 'Open Sans', fontWeight: FontWeight.normal, color: ColorManager.labelFontColor )
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor: ColorManager.greenColor,
          disabledBackgroundColor: ColorManager.greenColor.withOpacity(0.4),
          disabledForegroundColor: ColorManager.whiteColor,
          textStyle: TextStyle(fontSize: 20.sp, fontFamily: 'Open Sans', fontWeight: FontWeight.w600, color: ColorManager.whiteColor),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(AppSize.s7.r),
          ),
          minimumSize: Size(double.infinity, 44.h)
        ),
      ),
      inputDecorationTheme: InputDecorationTheme(
        filled: true,
        fillColor: ColorManager.whiteColor,
        contentPadding: EdgeInsets.symmetric(vertical: AppPadding.p15.h, horizontal: AppPadding.p20.w),
        border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(7.r),
            borderSide: const BorderSide(
              color: Colors.transparent
            )
        ),
        enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(7.r),
            borderSide: const BorderSide(
                color: Colors.transparent,
            )
        ),
        errorBorder:  OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(AppSize.s10.r)),
          borderSide: const BorderSide(
            color: ColorManager.redColor,
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(AppSize.s10.r)),
          borderSide: const BorderSide(
            color: ColorManager.greenColor,
            width: 2,
          ),
        ),
      )
    );
  }
}