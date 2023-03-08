import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mobile_shop_app/routing/router.dart';
import 'package:mobile_shop_app/ui/pages/auth/checkEmailPage.dart';

import '../ui/pages/auth/phoneVerificationPage.dart';
import '../ui/pages/auth/resetPasswordPage.dart';
import '../ui/pages/auth/signInPage.dart';
import '../ui/pages/auth/signUpPage.dart';
import '../ui/pages/home/mainHomePage.dart';
import '../ui/pages/onBoarding/onBoardingPages.dart';


class RoutsGenerate{
  static Route<dynamic> generateRoute(RouteSettings settings){
    switch(settings.name){

      case RouteGenerator.onBoarding:
        return MaterialPageRoute(builder: (_) => const OnBoardingPage());
      case RouteGenerator.signUpPage:
        return MaterialPageRoute(builder: (_) => SignUpPage());
      case RouteGenerator.signInPage:
        return MaterialPageRoute(builder: (_) => const SignInPage());
      case RouteGenerator.resetPasswordPage:
        return MaterialPageRoute(builder: (_) =>  const ResetPasswordPage());
      case RouteGenerator.phoneVerificationPage:
        return MaterialPageRoute(builder: (_) => const PhoneVerificationPage());
      case RouteGenerator.checkEmailPage:
        return MaterialPageRoute(builder: (_) => const CheckEmailPage());
      case RouteGenerator.homePage:
        return MaterialPageRoute(builder: (_) => const MainHomePage());

        default:
        throw const FormatException("Route not found");
    }
  }
}