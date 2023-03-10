import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mobile_shop_app/resources/values_manager.dart';
import 'package:mobile_shop_app/ui/sheard/widget/custom_appbar.dart';

import '../../../resources/assets_manager.dart';
import '../../sheard/widget/card_item.dart';
import '../../sheard/widget/custom_grid_viow.dart';

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
          actionsList: const [],
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
