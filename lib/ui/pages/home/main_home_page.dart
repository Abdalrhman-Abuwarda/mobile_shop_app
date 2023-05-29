import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:mobile_shop_app/resources/valuesManager.dart';
import 'package:mobile_shop_app/ui/sheard/widget/cardItem.dart';
import 'package:mobile_shop_app/ui/sheard/widget/customAppBar.dart';
import 'package:mobile_shop_app/ui/sheard/widget/customGridViow.dart';
import 'package:mobile_shop_app/ui/wedgts/rowSeeAll.dart';

import '../../../resources/assetsManager.dart';
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
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(AppSize.s70.h),
          child: CustomAppBar(
            title: "Home",
            actionsList: [
              SvgPicture.asset(SvgAssets.searchSvg),
              Padding(
                padding: const EdgeInsets.all(AppPadding.p15),
                child: SvgPicture.asset(SvgAssets.notificationSvg),
              ),
            ],
            leadingImages: SvgPicture.asset(IconAssets.category),
          ),
        ),
        body: Padding(
            padding: const EdgeInsets.only(top: AppPadding.p18),
            child: SingleChildScrollView(
              child: Column(
                children: [
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
                  SeeAll("Popular Item"),
                  addVerticalSpace(20.h),
                  CustomGridView(
                      [
                        CardItem(image: ImageAssets.item4, name: "One Plus", prise: "945.00",discount: "30",),
                    CardItem(image: ImageAssets.item2, name: "One Plus", prise: "945.00",discount: null,),
                    CardItem(image: ImageAssets.item3, name: "One Plus", prise: "945.00",discount: null,),
                    CardItem(image: ImageAssets.item1, name: "One Plus", prise: "945.00",discount: null,),
                    CardItem(image: ImageAssets.item5, name: "One Plus", prise: "945.00",discount: null,),])
                ],

              ),
            )));
  }
}
