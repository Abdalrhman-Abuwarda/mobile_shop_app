import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../../resources/assetsManager.dart';
import '../../../resources/colorsManager.dart';
import '../../../resources/valuesManager.dart';

class CardItem extends StatelessWidget {
  CardItem({required this.image,required this.name,required this.prise, this.discount ,Key? key}) : super(key: key);
  String name;
  String prise;
  String image;
  String? discount;


  @override
  Widget build(BuildContext context) {
    return Card(
      child: Container(
          padding: const EdgeInsets.all(10),
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.all(Radius.circular(AppPadding.p8.r)),
              boxShadow: const [
                BoxShadow(
                    color: ColorManager.grayWhite2,
                    offset: Offset(0, 1),
                    blurRadius: 5)
              ]),
          height: 280.h,
          width: AppSize.s155.w,
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Visibility(
                    visible: (discount != null)? true : false,
                    child: Container(
                      alignment: Alignment.center,
                      width: 34,
                      height: 21,
                      decoration: BoxDecoration(
                          color: ColorManager.mainColor,
                          borderRadius: BorderRadius.circular(4)),
                      child:(discount != null)? Text(
                        "-$discount%",
                        style: const TextStyle(color: ColorManager.whiteColor),
                      ):null,
                    ),
                  ),


                  Container(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 4, vertical: 5),
                    width: 22,
                    height: 22,
                    decoration: BoxDecoration(
                        color: ColorManager.mainColor,
                        borderRadius: BorderRadius.circular(11)),
                    child: SvgPicture.asset(
                      IconAssets.heart,
                    ),
                  ),
                ],
              ),
              Image.asset(
                image,
                width: 110,
                height: 110,
              ),
              addVerticalSpace(20),
              Text(
                name,
                style: const TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
              ),
              addVerticalSpace(8),
              Text("$prise AED",
                  style: const TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w600,
                      color: ColorManager.mainColor)),
              // addVerticalSpace(8),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Icon(
                    Icons.star_rounded,
                    color: Colors.amber,
                  ),
                  Text("4.5 (3k review)",
                      style: TextStyle(fontSize: 11, fontWeight: FontWeight.w400))
                ],
              )
            ],
          )),
    );
  }
}
