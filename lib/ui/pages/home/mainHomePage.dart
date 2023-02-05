import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:mobile_shop_app/resources/valuesManager.dart';

import '../../../resources/assetsManager.dart';

class MainHomePage extends StatelessWidget {
  const MainHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home"),
        leading: Padding(
          padding: const EdgeInsets.all(AppPadding.p12),
          child: SvgPicture.asset(SvgAssets.categoryIconSvg),
        ),
        actions: [

        ],
      ),
    );
  }
}
