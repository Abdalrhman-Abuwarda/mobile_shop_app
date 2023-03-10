import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../resources/colors_manager.dart';
import '../../resources/values_manager.dart';

class SeeAll extends StatelessWidget {
  const SeeAll(this.textLift, {Key? key}) : super(key: key);
  final String textLift;
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
