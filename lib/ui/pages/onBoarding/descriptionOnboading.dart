import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../resources/valuesManager.dart';
import '../../../core/model/onBoardingModel.dart';

class DescriptionOnBoarding extends StatelessWidget {
  const DescriptionOnBoarding({
    Key? key,
    required this.list,
    required int activeIndex,
  }) : _activeIndex = activeIndex, super(key: key);

  final List<OnBoardingModel> list;
  final int _activeIndex;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: AppSize.s40.h,
      width: 271.w,
      child: Text(
        list[_activeIndex].desc,
        style: Theme.of(context).textTheme.headline4,
        textAlign: TextAlign.center,
      ),
      // textAlign: TextAlign.center,
    );
  }
}
