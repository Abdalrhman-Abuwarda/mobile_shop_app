import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_slider_indicator/flutter_slider_indicator.dart';
import 'package:mobile_shop_app/resources/valuesManager.dart';
import '../../../resources/colorsManager.dart';
import '../../../core/model/onBoardingModel.dart';

class Indicator extends StatelessWidget {
  const Indicator({
    Key? key,
    required this.list,
    required int activeIndex,
  }) : _activeIndex = activeIndex, super(key: key);

  final List<OnBoardingModel> list;
  final int _activeIndex;

  @override
  Widget build(BuildContext context) {
    return SliderIndicator(
      length: list.length,
      activeIndex: _activeIndex,
      indicator: Icon(
        Icons.fiber_manual_record,
        color: ColorManager.grayWhite,
        size: AppSize.s8.w,
      ),
      activeIndicator: Icon(
        Icons.fiber_manual_record,
        color: ColorManager.mainColor,
        size: AppSize.s8.w,
      ),
    );
  }
}