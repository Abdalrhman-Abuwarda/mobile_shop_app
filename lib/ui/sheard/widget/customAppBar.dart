import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../resources/assetsManager.dart';
import '../../../resources/valuesManager.dart';

class CustomAppBar extends StatelessWidget {
  CustomAppBar({required this.actionsList,required this.leadingImages,required this.title, Key? key}) : super(key: key);
  List<Widget> actionsList;
  Widget? leadingImages;
  String title;

  @override
  Widget build(BuildContext context) {
    return  AppBar(
      title: Text(title),
      leading: Padding(
        padding: const EdgeInsets.all(AppPadding.p12),
        child: leadingImages,
      ),
      actions: actionsList
    );
  }
}
