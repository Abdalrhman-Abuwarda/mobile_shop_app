
import '../../resources/assetsManager.dart';

class OnBoardingModel{
  OnBoardingModel({required this.svgPath, required this.title, required this.desc});
  final String svgPath;
  final String title;
  final String desc;

  static List<OnBoardingModel> data = [
    OnBoardingModel(
        svgPath: SvgAssets.onBoardingSvg1,
        title: 'Get the Best Smartphone',
        desc: 'Lorem Ipsum is simply dummy text of the printing and typesetting..'
    ),
    OnBoardingModel(
        svgPath: SvgAssets.onBoardingSvg2,
        title: 'Great experince with our product',
        desc: 'Lorem Ipsum is simply dummy text of the printing and typesetting..'
    ),
    OnBoardingModel(
        svgPath: SvgAssets.onBoardingSvg3,
        title: 'Get product from at home',
        desc: 'Lorem Ipsum is simply dummy text of the printing and typesetting..'
    ),
  ];
}
