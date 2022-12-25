import 'package:flutter/material.dart';

class GeneralProvider extends ChangeNotifier{
  final PageController controller = PageController();
  int activeIndex = 0;

  void initStateOnBoarding(){
    controller.addListener(() {
        activeIndex = controller.page!.round();
        notifyListeners();
    });
  }
}