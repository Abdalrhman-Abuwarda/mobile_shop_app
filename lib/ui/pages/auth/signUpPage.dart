import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:mobile_shop_app/resources/colorsManager.dart';
import 'package:mobile_shop_app/resources/valuesManager.dart';
import 'package:mobile_shop_app/utils/validate.dart';

import '../../../resources/assetsManager.dart';
import '../../wedgts/customTextFormField.dart';

class SignUpPage extends StatefulWidget {
  SignUpPage({Key? key}) : super(key: key);

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  var formKey = GlobalKey<FormState>();

  final TextEditingController _fullNameController = TextEditingController();

  final TextEditingController _emailController = TextEditingController();

  final TextEditingController _phoneNumberController = TextEditingController();

  final TextEditingController _passwordController = TextEditingController();

  final TextEditingController _confirmPasswordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: AppPadding.p25.w),
          child: Form(
            key: formKey,
            child: Column(
              mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                addVerticalSpace(AppSize.s85.h),
                Row(
                  children: [
                    Text(
                      "Sign",
                      style: Theme
                          .of(context)
                          .textTheme
                          .headline1,
                    ),
                    addHorizantelSpace(AppSize.s7.w),
                    Text(
                      "Up",
                      style: Theme
                          .of(context)
                          .textTheme
                          .headline1!
                          .copyWith(color: ColorManager.greenColor),
                    )
                  ],
                ),
                addVerticalSpace(AppSize.s10.h),
                Text(
                  "Create a new account!",
                  style: Theme
                      .of(context)
                      .textTheme
                      .subtitle2,
                ),
                addVerticalSpace(AppSize.s32.h),
                CustomTextFormField(
                  hintText: 'Full name',
                  iconPath: IconAssets.person,
                  controller: _fullNameController,
                  validator: (value) => value!.validateUserName(),),
                addVerticalSpace(AppSize.s14.h),
                CustomTextFormField(
                  validator: (String? value) => value!.validateEmail(),
                  hintText: 'Email',
                  iconPath: IconAssets.email,
                  controller: _emailController,),
                addVerticalSpace(AppSize.s14.h),
                CustomTextFormField(
                  validator: (String? value) => value!.validatePhoneNumber(),
                  hintText: 'Phone Number',
                  iconPath: IconAssets.email,
                  controller: _phoneNumberController,),
                addVerticalSpace(AppSize.s14.h),
                CustomTextFormField(
                  validator: (String? value) => value!.validatePassword(),
                  hintText: 'Password',
                  iconPath: IconAssets.lock,
                  controller: _passwordController,),
                addVerticalSpace(AppSize.s14.h),
                CustomTextFormField(
                  validator: (String? value) => value!.validateRePassword(_passwordController.text),
                  hintText: 'Confirm password',
                  iconPath: IconAssets.lock,
                  controller: _confirmPasswordController,),
                addVerticalSpace(AppSize.s18.h),
                Row(
                  children: [
                    Checkbox(value: false, onChanged: (value) {
                      value = true;
                    }),
                    Text("Agree with trams and condition.", style: Theme
                        .of(context)
                        .textTheme
                        .headline4,),
                  ],
                ),
                addVerticalSpace(AppSize.s40.h),
                ElevatedButton(onPressed: () {
                  if (formKey.currentState!.validate()){
                   debugPrint("Hello");
                  }
                },
                  style: ElevatedButton.styleFrom(
                      backgroundColor: ColorManager.secondaryBlack
                  ),
                  child: const Text("Sign Up"),),
                addVerticalSpace(AppSize.s60.h),
                // const Spacer(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Have an account?", style: Theme
                        .of(context)
                        .textTheme
                        .headline4,),
                    addHorizantelSpace(AppSize.s5.w),
                    TextButton(
                        onPressed: () {}, child: Text("Log in", style: Theme
                        .of(context)
                        .textTheme
                        .headline4!
                        .copyWith(color: ColorManager.greenColor)))
                  ],
                ),
                addVerticalSpace(AppSize.s5.h)
              ],
            ),
          ),
        ),
      ),
    );
  }
}


