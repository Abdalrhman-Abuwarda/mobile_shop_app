import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:mobile_shop_app/resources/valuesManager.dart';
import 'package:mobile_shop_app/routing/navigations.dart';

import '../../resources/assetsManager.dart';
import '../../routing/router.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Future.delayed(const Duration(seconds: 3), (){
      ServiceNavigation.serviceNavi.pushNamedReplacement(RouteGenerator.onBoarding);
    });
  }
  @override
  Widget build(BuildContext context) {

    return  Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset(SvgAssets.splashSvg,
            height: AppSize.s77.h,
            width: AppSize.s100.w,),
            addVerticalSpace(AppSize.s33.h),
            Text("MOBILE SHOP", style: Theme.of(context).textTheme.headline1,),
            const CircularProgressIndicator(),
          ],
        ),
      ),
    );
  }
}
