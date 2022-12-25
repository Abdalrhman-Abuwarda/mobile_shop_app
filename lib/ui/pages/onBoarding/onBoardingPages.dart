import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mobile_shop_app/core/provider/generalProvider.dart';
import 'package:provider/provider.dart';

import '../../../resources/colorsManager.dart';
import '../../../resources/valuesManager.dart';
import 'descriptionOnboading.dart';
import 'pageViewOnBoarding.dart';
import 'sliderIndicator.dart';
import 'titlOnBoarding.dart';
import '../../../core/model/onBoardingModel.dart';


class OnBoardingPage extends StatefulWidget {
  const OnBoardingPage({Key? key}) : super(key: key);

  @override
  State<OnBoardingPage> createState() => _OnBoardingPageState();
}

class _OnBoardingPageState extends State<OnBoardingPage> {
final List<OnBoardingModel> list = OnBoardingModel.data;
late PageController _controller;
int _activeIndex = 0;

@override
  void initState() {
  // TODO: implement initState
  super.initState();
  var generalProvider =
  Provider.of<GeneralProvider>(context, listen: false);
 generalProvider.initStateOnBoarding();
}


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Consumer<GeneralProvider>(
        builder: (context, general, child) => Padding(
          padding: EdgeInsets.all(AppPadding.p20.w),
          child: Column(
            children: [
              addVerticalSpace(AppSize.s100.h),
              SizedBox(
                height: 271.h,
                width: 331.w,
                child: PageViewOnboarding(list: list, controller: general.controller, activeIndex: general.activeIndex),
              ),
              addVerticalSpace(AppSize.s85.h),
              Indicator(list: list, activeIndex: general.activeIndex),
             addVerticalSpace(AppSize.s50.h),
              TitleOnboarding(list: list, activeIndex: general.activeIndex),
              addVerticalSpace(AppSize.s16.h),
              DescriptionOnboarding(list: list, activeIndex: general.activeIndex),
              addVerticalSpace(AppSize.s32.h),
              if (general.activeIndex + 1 != list.length)
              ElevatedButton(
                onPressed: () {
                  general.controller.nextPage(
                      duration: const Duration(milliseconds: 150), curve: Curves.ease);
                },
                style: ElevatedButton.styleFrom(
                  fixedSize: Size(AppSize.s45.w, 44.h),
                    shape: const CircleBorder(),
                    backgroundColor: ColorManager.mainColor,
                ),
                child: const Icon(
                  Icons.arrow_forward_ios,
                  color: Colors.white,
                  size: AppSize.s24,
                ),
              ),
              if (general.activeIndex + 1 >= list.length)
                ElevatedButton(
                  onPressed: () {
                    // _controller.nextPage(
                    //     duration: Duration(milliseconds: 150), curve: Curves.ease);
                  },
                  style: ElevatedButton.styleFrom(
                      backgroundColor: ColorManager.mainColor,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(AppSize.s20.r)
                      )
                  ),
                  child: const Text('Get started'),
                ),
              const Spacer()
            ],
          ),
        ),
      ),
    );
  }
}

