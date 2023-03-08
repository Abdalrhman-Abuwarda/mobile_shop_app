import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../../resources/assetsManager.dart';
import '../../../resources/valuesManager.dart';
import '../../sheard/widget/cardItem.dart';
import '../../sheard/widget/customAppBar.dart';
import '../../sheard/widget/customGridViow.dart';
import '../../wedgts/cardAD.dart';
import '../../wedgts/rowSeeAll.dart';

class Explore extends StatefulWidget {
  const Explore({Key? key}) : super(key: key);

  @override
  State<Explore> createState() => _ExploreState();
}

class _ExploreState extends State<Explore> {
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
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(AppSize.s70.h),
          child: CustomAppBar(
            title: "Explore",
            actionsList: [
              Padding(
                padding: const EdgeInsets.all(AppPadding.p15),
                child: SvgPicture.asset(SvgAssets.notificationSvg),
              ),
            ],
            leadingImages: null,
          ),
        ),
        body: SingleChildScrollView(
            child: Column(children: [
              addVerticalSpace(AppSize.s15.h),
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
              SeeAll("Best Seller"),
              addVerticalSpace(20.h),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  CardItem(
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
                ],
              ),
              addVerticalSpace(20.h),
              SeeAll("Top Trends"),
              addVerticalSpace(16.h),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  CardItem(
                    image: ImageAssets.item3,
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
              ),
              addVerticalSpace(16.h),

            ])));
  }
}
