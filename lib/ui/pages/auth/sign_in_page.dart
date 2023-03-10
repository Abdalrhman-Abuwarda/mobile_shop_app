import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mobile_shop_app/resources/assets_manager.dart';
import 'package:mobile_shop_app/resources/values_manager.dart';
import 'package:mobile_shop_app/routing/navigations.dart';
import 'package:mobile_shop_app/routing/router.dart';
import 'package:mobile_shop_app/ui/wedgts/custom_text_form_field.dart';
import 'package:mobile_shop_app/utils/validate.dart';

import '../../../resources/colors_manager.dart';

class SignInPage extends StatefulWidget {
  const SignInPage({Key? key}) : super(key: key);

  @override
  State<SignInPage> createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  var formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: AppPadding.p25.w),
        child: Form(
          key: formKey,
          child: Column(
            children: [
              addVerticalSpace(230.h),
              Row(
                children: [
                  Text(
                    "Welcome",
                    style: Theme.of(context)
                        .textTheme
                        .headline1!
                        .copyWith(fontSize: 30.sp),
                  ),
                  addHorizantelSpace(AppSize.s7.w),
                  Text(
                    "back!",
                    style: Theme.of(context).textTheme.headline1!.copyWith(
                        color: ColorManager.greenColor, fontSize: 30.sp),
                  )
                ],
              ),
              addVerticalSpace(AppSize.s40.h),
              CustomTextFormField(
                  hintText: "example@gmail.com",
                  controller: _emailController,
                  iconPath: IconAssets.person,
                  validator: (value) => value!.validateEmail()),
              addVerticalSpace(AppSize.s14.h),
              CustomTextFormField(
                  hintText: "Password",
                  controller: _passwordController,
                  iconPath: IconAssets.lock,
                  validator: (value) => value!.validatePassword()),
              addVerticalSpace(AppSize.s16.h),
              Row(
                children: [
                  const Spacer(),
                  TextButton(
                      onPressed: () {ServiceNavigation.serviceNavi.pushNamedWidget(RouteGenerator.resetPasswordPage);},
                      child: Text(
                        "Forget password?",
                        style: Theme.of(context)
                            .textTheme
                            .bodyText2!
                            .copyWith(color: ColorManager.grayIcon),
                      )),
                ],
              ),
              addVerticalSpace(AppSize.s40.h),
              ElevatedButton(
                onPressed: () {
                  if (formKey.currentState!.validate()) {
                    ServiceNavigation.serviceNavi.pushNamedReplacement(RouteGenerator.homePage);
                  }
                },
                style: ElevatedButton.styleFrom(
                    backgroundColor: ColorManager.secondaryBlack),
                child: const Text("Login"),
              ),
              const Spacer(),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Haven’t an account?",
                    style: Theme.of(context).textTheme.headline4,
                  ),
                  addHorizantelSpace(AppSize.s5.w),
                  TextButton(
                      onPressed: () {ServiceNavigation.serviceNavi.pushNamedReplacement(RouteGenerator.signUpPage);},
                      child: Text("Sign up",
                          style: Theme.of(context)
                              .textTheme
                              .headline4!
                              .copyWith(color: ColorManager.greenColor)))
                ],
              ),
              addVerticalSpace(AppSize.s30.h)
            ],
          ),
        ),
      ),
    );
  }
}
