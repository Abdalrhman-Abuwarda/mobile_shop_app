import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mobile_shop_app/utils/validate.dart';

import '../../../resources/assets_manager.dart';
import '../../../resources/values_manager.dart';
import '../../wedgts/custom_text_form_field.dart';
class CreateNewPasswordPage extends StatelessWidget {
   CreateNewPasswordPage({Key? key}) : super(key: key);

  final TextEditingController _passwordController = TextEditingController();

  final TextEditingController _confirmPasswordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(Icons.arrow_back_ios_new),
        ),
        actions: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.info_outline)),
          addHorizantelSpace(AppSize.s25.w),
        ],
        backgroundColor: Colors.transparent,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: AppPadding.p25.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              addVerticalSpace(AppSize.s100.h),
              Center(
                child: Text(
                  "Create new password",
                  style: Theme.of(context).textTheme.headline2,
                ),
              ),
              addVerticalSpace(AppSize.s16.h),
              Text(
                "Your new password must be different from previous used passwords.",
                style: Theme.of(context).textTheme.headline4,
                textAlign: TextAlign.center,
              ),
              addVerticalSpace(AppSize.s45.h),
              CustomTextFormField(
                validator: (String? value) => value!.validatePassword(),
                hintText: 'Password',
                iconPath: IconAssets.lock,
                controller: _passwordController,),
              addVerticalSpace(AppSize.s5.h),
              Text("Must be at least 8 characters.", style: Theme.of(context).textTheme.bodyText1,),
              addVerticalSpace(AppSize.s14.h),
              CustomTextFormField(
                validator: (String? value) => value!.validateRePassword(_passwordController.text),
                hintText: 'Confirm password',
                iconPath: IconAssets.lock,
                controller: _confirmPasswordController,),
              addVerticalSpace(AppSize.s24.h),
              ElevatedButton(onPressed: (){}, child: const Text("Confirm"))
            ],
          ),
        ),
      ),
    );
  }
}
