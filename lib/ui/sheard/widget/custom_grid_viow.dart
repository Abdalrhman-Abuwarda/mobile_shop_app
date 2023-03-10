import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../resources/values_manager.dart';



class CustomGridView extends StatelessWidget {
  const CustomGridView(this.children,{Key? key}) : super(key: key);
  final List <Widget> children ;

  @override
  Widget build(BuildContext context) {
    return GridView(
      shrinkWrap: true,
      physics: const ScrollPhysics(),
      padding: EdgeInsets.symmetric(horizontal: AppPadding.p25.w),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        mainAxisExtent: 255,
        crossAxisSpacing: AppSize.s15.w,
        mainAxisSpacing: AppSize.s15.h,
      ),
      children: children
    )
    ;
  }
}
