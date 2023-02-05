import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:mobile_shop_app/resources/colorsManager.dart';
import 'package:mobile_shop_app/resources/valuesManager.dart';

import '../../../../resources/assetsManager.dart';
import '../../../wedgts/cardCategory.dart';

class CategoryPage extends StatelessWidget {
  const CategoryPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorManager.grayWhite,
      appBar: AppBar(
        title: const Text("Category"),
        leading: IconButton(onPressed: (){}, icon: const Icon(Icons.arrow_back_ios_new_outlined)),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: AppPadding.p25.w),
        child: GridView(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: AppSize.s15.w,
              mainAxisSpacing: AppSize.s15.h,
          ),
          children: [
            CardCategory(svgPath: SvgAssets.smartphoneCategory, label: "Smartphones", onTap: (){},),
            CardCategory(svgPath: SvgAssets.headPhoneCategory, label: "Headphones", onTap: (){},),
            CardCategory(svgPath: SvgAssets.chargerCategory, label: "Chargers", onTap: (){},),
            CardCategory(svgPath: SvgAssets.protectorCategory, label: "Protectors", onTap: (){},),
            CardCategory(svgPath: SvgAssets.backCoverCategory, label: "Back cover", onTap: (){},),
            CardCategory(svgPath: SvgAssets.batteryCategory, label: "Battery", onTap: (){},),
          ],
        ),
      ),
    );
  }
}


