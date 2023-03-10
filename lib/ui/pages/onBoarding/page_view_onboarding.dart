import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../core/model/onBoardingModel.dart';
class PageViewOnboarding extends StatelessWidget {
  const PageViewOnboarding({
    Key? key,
    required this.list,
    required PageController controller,
    required int activeIndex,
  }) : _controller = controller, _activeIndex = activeIndex, super(key: key);

  final List<OnBoardingModel> list;
  final PageController _controller;
  final int _activeIndex;

  @override
  Widget build(BuildContext context) {
    return PageView.builder(
        itemCount: list.length,
        controller: _controller,
        itemBuilder: (context, index) {
          return SvgPicture.asset(
            list[_activeIndex].svgPath,
          );
        });
  }
}
