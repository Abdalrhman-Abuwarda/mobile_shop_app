import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../resources/assetsManager.dart';
import '../../resources/colorsManager.dart';
import '../../resources/valuesManager.dart';

class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField({super.key,
    required this.hintText,
    required this.controller,
    required this.iconPath,
    required this.validator,
  });

  final String hintText;
  final String iconPath;
  final TextEditingController controller;
  final String? Function(String?)? validator;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: ColorManager.grayIcon.withOpacity(0.1),
            spreadRadius: 1,
            blurRadius: 6,
            offset: const Offset(0, 3), // changes position of shadow
          ),
        ],
      ),
      child: TextFormField(
        validator: validator,
        controller: controller,
        decoration: InputDecoration(

          hintText: hintText,
          prefixIcon:
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: SvgPicture.asset(
              iconPath,
              height: AppSize.s25.h,
              width: AppSize.s25.w,
            ),
          ),
        ),
      ),
    );
  }
}