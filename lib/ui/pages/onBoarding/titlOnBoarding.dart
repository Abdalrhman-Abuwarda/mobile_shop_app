import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/model/onBoardingModel.dart';
class TitleOnboarding extends StatelessWidget {
  const TitleOnboarding({
    Key? key,
    required this.list,
    required int activeIndex,
  }) : _activeIndex = activeIndex, super(key: key);

  final List<OnBoardingModel> list;
  final int _activeIndex;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 40.h,
      width: 288.w,
      child: Text(
        list[_activeIndex].title,
        style: Theme.of(context).textTheme.headline2,
        // maxLines: 2,
        textAlign: TextAlign.center,
        overflow: TextOverflow.visible,
        //TextStyle(fontFamily: "Open Sans", fontWeight: FontWeight.bold, fontSize: 22),
      ),
    );
  }
}
