import 'package:flutter/material.dart';
import 'package:mobile_shop_app/routing/router.dart';
import 'package:mobile_shop_app/ui/pages/auth/check_email_page.dart';

import '../ui/pages/auth/phone_verification_page.dart';
import '../ui/pages/auth/reset_password_page.dart';
import '../ui/pages/auth/sign_in_page.dart';
import '../ui/pages/auth/sign_up_page.dart';
import '../ui/pages/home/main_home_page.dart';
import '../ui/pages/onBoarding/on_boarding_pages.dart';


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