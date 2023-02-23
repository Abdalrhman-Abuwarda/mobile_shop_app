import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:mobile_shop_app/resources/valuesManager.dart';
import 'package:mobile_shop_app/ui/wedgts/rowSeeAll.dart';

import '../../../resources/assetsManager.dart';
import '../../../resources/colorsManager.dart';
import '../../wedgts/cardAD.dart';

class MainHomePage extends StatefulWidget {
  const MainHomePage({Key? key}) : super(key: key);

  @override
  State<MainHomePage> createState() => _MainHomePageState();
}

class _MainHomePageState extends State<MainHomePage> {
  int _currentPage = 0;
  Timer? _timer;
  final PageController _pageController = PageController(
    initialPage: 0,
  );

  @override
  void initState() {
    super.initState();
    _timer = Timer.periodic(const Duration(seconds: 5), (Timer timer) {
      if (_currentPage < 2) {
        _currentPage++;
      } else {
        _currentPage = 0;
      }

      _pageController.animateToPage(
        _currentPage,
        duration: const Duration(milliseconds: 350),
        curve: Curves.linearToEaseOut,
      );
    });
  }

  @override
  void dispose() {
    super.dispose();
    _timer?.cancel();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
          padding: const EdgeInsets.only(top: AppPadding.p18),
          child: (NestedScrollView(
            headerSliverBuilder: (context, innerBoxIsScrolled) => [
              SliverAppBar(
                title: const Text("Home"),
                leading: Padding(
                  padding: const EdgeInsets.all(AppPadding.p12),
                  child: SvgPicture.asset(SvgAssets.categoryIconSvg),
                ),
                actions: [
                  SvgPicture.asset(SvgAssets.searchSvg),
                  Padding(
                    padding: const EdgeInsets.all(AppPadding.p15),
                    child: SvgPicture.asset(SvgAssets.notificationSvg),
                  ),
                ],
              )
            ],
            body: SingleChildScrollView(
              child: Column(
                children: [
                  addVerticalSpace(40.h),
                  CardAD(
                    listImage: ImageAssets2.imageAD,
                    controller: _pageController,
                    onTap: (index) {
                      setState(() {
                        _currentPage = index;
                      });
                    },
                  ),
                  addVerticalSpace(40.h),
                  SeeAll(textLift: "Popular Item"),
                  addVerticalSpace(20.h),
                  GridView(
                    shrinkWrap: true,
                    physics: const ScrollPhysics(),
                    padding: EdgeInsets.symmetric(horizontal: AppPadding.p25.w),
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      mainAxisExtent: 244,
                      crossAxisSpacing: AppSize.s15.w,
                      mainAxisSpacing: AppSize.s15.h,
                    ),
                    children: [
                      Container(
                          padding: const EdgeInsets.all(10),
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(8.r)),
                              boxShadow: const [
                                BoxShadow(
                                    color: ColorManager.grayWhite2,
                                    offset: Offset(0, 1),
                                    blurRadius: 5)
                              ]),
                          height: AppSize.s180.h,
                          width: AppSize.s155.w,
                          child: Column(
                            // mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Container(
                                    width: 34,
                                    height: 21,
                                    decoration: BoxDecoration(
                                        color: ColorManager.mainColor,
                                        borderRadius: BorderRadius.circular(4)),
                                  ),
                                  Container(
                                      padding: const EdgeInsets.all(5),
                                      width: 22,
                                      height: 22,
                                      decoration: BoxDecoration(
                                          color: ColorManager.mainColor,
                                          borderRadius:
                                              BorderRadius.circular(11)),
                                      child: SvgPicture.asset(
                                        IconAssets.heart,
                                      )),
                                ],
                              )
                            ],
                          )),
                      Container(
                          padding: const EdgeInsets.all(10),
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(8.r)),
                              boxShadow: const [
                                BoxShadow(
                                    color: ColorManager.grayWhite2,
                                    offset: Offset(0, 1),
                                    blurRadius: 5)
                              ]),
                          height: AppSize.s180.h,
                          width: AppSize.s155.w,
                          child: Column(
                            // mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Container(
                                    width: 34,
                                    height: 21,
                                    decoration: BoxDecoration(
                                        color: ColorManager.mainColor,
                                        borderRadius: BorderRadius.circular(4)),
                                  ),
                                  Container(
                                      padding: const EdgeInsets.all(5),
                                      width: 22,
                                      height: 22,
                                      decoration: BoxDecoration(
                                          color: ColorManager.mainColor,
                                          borderRadius:
                                              BorderRadius.circular(11)),
                                      child: SvgPicture.asset(
                                        IconAssets.heart,
                                      )),
                                ],
                              )
                            ],
                          )),
                    ],
                  )
                ],
              ),
            ),
          ))),
    );
  }
}
