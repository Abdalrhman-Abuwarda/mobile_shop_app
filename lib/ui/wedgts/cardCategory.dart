import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../resources/assetsManager.dart';
import '../../resources/colorsManager.dart';
import '../../resources/valuesManager.dart';
class CardCategory extends StatelessWidget {
  const CardCategory({
    Key? key,
    required this.svgPath,
    required this.label,
    required this.onTap
  }) : super(key: key);

  final String label;
  final String svgPath;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.all(Radius.circular(15.r))
          ),
          height: AppSize.s180.h,
          width: AppSize.s155.w,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: AppPadding.p48.w),
                child: SvgPicture.asset(svgPath,

                ),
              ),
              addVerticalSpace(AppSize.s30.h),
              Text(label, style: Theme.of(context).textTheme.headline4!.copyWith(color: ColorManager.primaryFontColor),)
            ],
          )
      ),
    );
  }
}