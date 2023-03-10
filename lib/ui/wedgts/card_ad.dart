
import 'package:flutter/material.dart';

import '../../resources/values_manager.dart';


class CardAD extends StatelessWidget {
   const CardAD({required this.listImage,required this.controller,required this.onTap, Key? key}) : super(key: key);

   final List? listImage;
   final PageController controller;
   final Function(int x) onTap;

  @override
  Widget build(BuildContext context) {
    return
      SizedBox(
        height: 240,
        width: double.infinity,
        child: PageView.builder(
          onPageChanged: onTap,
          controller: controller,
          itemCount:listImage!.length,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.only(
                  left: AppPadding.p12, right: AppPadding.p12),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(AppPadding.p12),
                child: Image(
                    fit: BoxFit.fill,
                    image: AssetImage(listImage![index])),
              ),
            );
          },
        ),
      );

  }
}
