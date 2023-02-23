import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../resources/colorsManager.dart';
import '../../resources/valuesManager.dart';

class SeeAll extends StatelessWidget {
  SeeAll({required this.textLift ,Key? key}) : super(key: key);
  String textLift;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: AppPadding.p25.w),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            textLift,
            style: Theme.of(context).textTheme.headline3,
          ),
          TextButton(onPressed: () {}, child: const Text("See All",style: TextStyle(color: ColorManager.greenColor),))
        ],
      ),
    );
  }
}
