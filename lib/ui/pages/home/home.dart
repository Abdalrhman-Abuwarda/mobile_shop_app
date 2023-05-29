import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:mobile_shop_app/resources/assetsManager.dart';
import 'package:mobile_shop_app/resources/colorsManager.dart';
import 'package:mobile_shop_app/resources/valuesManager.dart';
import 'package:mobile_shop_app/ui/pages/auth/signUpPage.dart';
import 'package:mobile_shop_app/ui/pages/home/explore.dart';
import 'package:mobile_shop_app/ui/pages/home/favorite.dart';
import 'package:mobile_shop_app/ui/pages/home/main_home_page.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _currentPage = 0;
  List<Widget> pages = [
    const MainHomePage(),
    SignUpPage(),
    const Explore(),
    const Favorite(),
    const MainHomePage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: ClipRRect(
        borderRadius: BorderRadius.only(
            topRight: Radius.circular(AppSize.s20.r),
            topLeft: Radius.circular(AppSize.s20.r)),
        child: BottomNavigationBar(
          showSelectedLabels: false,
          showUnselectedLabels: false,
          onTap: (index) {
            setState(() {
              _currentPage = index;
            });
          },
          items: [
            BottomNavigationBarItem(
                label: "",
                backgroundColor: ColorManager.whiteColor,
                icon: Container(
                  padding: const EdgeInsets.all(5),
                  height: AppSize.s32.h,
                  width: 32,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(6.r),
                      color: _currentPage == 0
                          ? ColorManager.mainColor
                          : Colors.transparent),
                  child: SvgPicture.asset(IconAssets.home,
                      color: _currentPage == 0
                          ? ColorManager.whiteColor
                          : ColorManager.grayIcon),
                )),
            BottomNavigationBarItem(
                label: "",
                icon: Container(
                  padding: const EdgeInsets.all(5),
                  height: 32,
                  width: 32,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(6.r),
                      color: _currentPage == 1
                          ? ColorManager.mainColor
                          : Colors.transparent),
                  child: SvgPicture.asset(IconAssets.buy,
                      color: _currentPage == 1
                          ? ColorManager.whiteColor
                          : ColorManager.grayIcon),
                )),
            BottomNavigationBarItem(
                label: "",
                icon: Container(
                  padding: const EdgeInsets.all(5),
                  height: 32,
                  width: 32,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(6.r),
                      color: _currentPage == 2
                          ? ColorManager.mainColor
                          : Colors.transparent),
                  child: SvgPicture.asset(IconAssets.discovery,
                      color: _currentPage == 2
                          ? ColorManager.whiteColor
                          : ColorManager.grayIcon),
                )),
            BottomNavigationBarItem(
                label: "",
                icon: Container(
                  padding: const EdgeInsets.all(5),
                  height: 32,
                  width: 32,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(6.r),
                      color: _currentPage == 3
                          ? ColorManager.mainColor
                          : Colors.transparent),
                  child: SvgPicture.asset(IconAssets.star,
                      color: _currentPage == 3
                          ? ColorManager.whiteColor
                          : ColorManager.grayIcon),
                )),
            BottomNavigationBarItem(
                label: "",
                icon: Container(
                  padding: const EdgeInsets.all(5),
                  height: 32,
                  width: 32,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(6.r),
                      color: _currentPage == 4
                          ? ColorManager.mainColor
                          : Colors.transparent),
                  child: SvgPicture.asset(IconAssets.profile,
                      color: _currentPage == 4
                          ? ColorManager.whiteColor
                          : ColorManager.grayIcon),
                )),
          ],
        ),
      ),
      body: pages[_currentPage],
    );
  }
}
