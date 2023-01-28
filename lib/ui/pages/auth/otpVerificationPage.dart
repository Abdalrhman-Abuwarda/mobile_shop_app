import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:mobile_shop_app/resources/assetsManager.dart';
import 'package:mobile_shop_app/resources/valuesManager.dart';
import 'package:mobile_shop_app/utils/validate.dart';
import 'package:pinput/pinput.dart';

import '../../../resources/colorsManager.dart';

class OtpVerificationPage extends StatefulWidget {
   OtpVerificationPage({Key? key}) : super(key: key);

  @override
  State<OtpVerificationPage> createState() => _OtpVerificationPageState();
}

class _OtpVerificationPageState extends State<OtpVerificationPage> {
  final TextEditingController _codeController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: AppPadding.p25.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              addVerticalSpace(AppSize.s150.h),
              SvgPicture.asset(SvgAssets.groupSvg),
              addVerticalSpace(AppSize.s24.h),
              Text(
                "Phone Verification",
                style: Theme.of(context).textTheme.headline2,
              ),
              addVerticalSpace(AppSize.s16.h),
              Text(
                "We need to register your phone number before getting srated!",
                style: Theme.of(context).textTheme.headline4,
                textAlign: TextAlign.center,
              ),
              addVerticalSpace(AppSize.s33.h),
              Pinput(
                validator: (value) => value!.validateCode(),
                controller: _codeController,
                obscureText: false,
                length: 4,
                // separatorPositions: [3],
                separator: addHorizantelSpace(AppSize.s30.w),
                // obscuringCharacter: '*',
                focusedPinTheme: PinTheme(
                    // margin: EdgeInsetsDirectional.only(end: AppMargin.m12.w),
                    width: AppSize.s74.w,
                    height: AppSize.s60.h,
                    textStyle: Theme.of(context).textTheme.headline2,
                    // margin: EdgeInsets.symmetric(horizontal: 5.w),
                    decoration:
                    BoxDecoration(
                      color: ColorManager.whiteColor,
                      borderRadius: BorderRadius.circular(AppSize.s10.r),
                      border: Border.all(color: ColorManager.greenColor),
                      boxShadow: [
                        BoxShadow(
                          color: ColorManager.grayIcon.withOpacity(0.1),
                          spreadRadius: 1,
                          blurRadius: 6,
                          offset: const Offset(0, 3), // changes position of shadow
                        ),
                      ],
                    )
                ),
                defaultPinTheme: PinTheme(
                    // margin: EdgeInsetsDirectional.only(end: AppMargin.m12.w),
                    width: AppSize.s74.w,
                    height: AppSize.s60.h,
                    textStyle: Theme.of(context).textTheme.headline2,
                    // margin: EdgeInsets.symmetric(horizontal: 5.w),
                    decoration:
                    BoxDecoration(
                      color: ColorManager.whiteColor,
                      borderRadius: BorderRadius.circular(AppSize.s10.r),
                      border: Border.all(color: ColorManager.grayWhite2),
                      boxShadow: [
                        BoxShadow(
                          color: ColorManager.grayIcon.withOpacity(0.1),
                          spreadRadius: 1,
                          blurRadius: 6,
                          offset: const Offset(0, 3), // changes position of shadow
                        ),
                      ],
                    )
                ),
              ),
              addVerticalSpace(AppSize.s25.h),
              ElevatedButton(onPressed: (){}, child: Text("verify phone number")),
              addVerticalSpace(AppSize.s32.h),
              TextButton(onPressed: (){}, child: Text("Edit phone number?", style: Theme.of(context).textTheme.bodyText1!.copyWith(color: ColorManager.blackColor),)),
              addVerticalSpace(AppSize.s15.h),
              SizedBox(
                height: AppSize.s38.h,
                width: AppSize.s90.w,
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                    backgroundColor: ColorManager.liteGreenColor
                ),
                  onPressed: (){}, child: Text("Send again", style: Theme.of(context).textTheme.bodyText1!.copyWith(color: ColorManager.greenColor,),),
              ))
            ],
          ),
        ),
      ),
    );
  }
}
