import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:mobile_shop_app/resources/assetsManager.dart';

import '../../../resources/colorsManager.dart';
import '../../../resources/valuesManager.dart';

class CheckEmailPage extends StatelessWidget {
  const CheckEmailPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(Icons.arrow_back_ios_new),
        ),
        actions: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.info_outline)),
          addHorizantelSpace(AppSize.s25.w),
        ],
        backgroundColor: Colors.transparent,
      ),
      body: Padding(
        padding: EdgeInsets.symmetric( horizontal: AppSize.s25.h),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            addVerticalSpace(AppSize.s80.h),
            SvgPicture.asset(SvgAssets.groupSvg),
            addVerticalSpace(AppSize.s45.h),
            Text("Check your mail", style: Theme.of(context).textTheme.headline2,),
            addVerticalSpace(AppSize.s16.h),
            Text("We have sent a password recover instructions to your email.", textAlign: TextAlign.center, style: Theme.of(context).textTheme.headline4,),
            addVerticalSpace(AppSize.s24.h),
            ElevatedButton(onPressed: (){}, child: const Text("Open Email")),
            addVerticalSpace(AppSize.s32.h),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                  backgroundColor: ColorManager.liteGreenColor
              ),
              onPressed: (){},
              child: const Text("i’ll confirm latter"),
                )
          ],
        ),
      ),
    );
  }
}
