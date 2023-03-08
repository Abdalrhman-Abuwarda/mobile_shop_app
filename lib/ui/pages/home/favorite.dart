import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mobile_shop_app/resources/valuesManager.dart';
import 'package:mobile_shop_app/ui/sheard/widget/customAppBar.dart';

import '../../../resources/assetsManager.dart';
import '../../sheard/widget/cardItem.dart';
import '../../sheard/widget/customGridViow.dart';

class Favorite extends StatelessWidget {
  const Favorite({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(AppSize.s90.h),
        child: CustomAppBar(
          title: "Favorite",
          leadingImages: null,
          actionsList: [],
        ),
      ),
        body: CustomGridView(
      [
        CardItem(
          image: ImageAssets.item4,
          name: "One Plus",
          prise: "945.00",
          discount: null,
        ), CardItem(
          image: ImageAssets.item4,
          name: "One Plus",
          prise: "945.00",
          discount: null,
        ),
        CardItem(
          image: ImageAssets.item2,
          name: "One Plus",
          prise: "945.00",
          discount: null,
        ),
        CardItem(
          image: ImageAssets.item3,
          name: "One Plus",
          prise: "945.00",
          discount: null,
        ),
        CardItem(
          image: ImageAssets.item1,
          name: "One Plus",
          prise: "945.00",
          discount: null,
        ),
        CardItem(
          image: ImageAssets.item5,
          name: "One Plus",
          prise: "945.00",
          discount: null,
        ),
      ],
    ));
  }
}
