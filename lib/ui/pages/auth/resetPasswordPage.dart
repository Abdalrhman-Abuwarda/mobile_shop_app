import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mobile_shop_app/resources/assetsManager.dart';
import 'package:mobile_shop_app/resources/valuesManager.dart';
import 'package:mobile_shop_app/routing/navigations.dart';
import 'package:mobile_shop_app/routing/router.dart';
import 'package:mobile_shop_app/ui/wedgts/customTextFormField.dart';
import 'package:mobile_shop_app/utils/validate.dart';

class ResetPasswordPage extends StatefulWidget {
  const ResetPasswordPage({Key? key}) : super(key: key);

  @override
  State<ResetPasswordPage> createState() => _ResetPasswordPageState();
}

class _ResetPasswordPageState extends State<ResetPasswordPage> {
  final formKey = GlobalKey<FormState>();

  final TextEditingController _emailController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {ServiceNavigation.serviceNavi.popFunction();},
          icon: const Icon(Icons.arrow_back_ios_new),
        ),
        actions: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.info_outline)),
          addHorizantelSpace(AppSize.s25.w),
        ],
        backgroundColor: Colors.transparent,
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: AppPadding.p25.w),
        child: Form(
          key: formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              addVerticalSpace(AppSize.s100.h),
              Text(
                "Reset password",
                style: Theme.of(context).textTheme.headline2,
              ),
              addVerticalSpace(AppSize.s16.h),
              Text(
                "Enter the email associated with your account and we’ll send an email with instructions to reset your password!",
                style: Theme.of(context).textTheme.headline4,
                textAlign: TextAlign.center,
              ),
              addVerticalSpace(AppSize.s24.h),
              CustomTextFormField(hintText: "Email address", controller: _emailController, iconPath: IconAssets.person, validator: (value) => value!.validateEmail()),
              addVerticalSpace(AppSize.s24.h),
              ElevatedButton(onPressed: (){
                if(formKey.currentState!.validate()) {
                  ServiceNavigation.serviceNavi.pushNamedWidget(RouteGenerator.checkEmailPage);
                }
              },
                  child: const Text("Next"))
            ],
          ),
        ),
      ),
    );
  }
}
