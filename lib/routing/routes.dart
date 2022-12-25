import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mobile_shop_app/routing/router.dart';

import '../ui/pages/auth/resetPasswordPage.dart';
import '../ui/pages/auth/signInPage.dart';
import '../ui/pages/auth/signUpPage.dart';
import '../ui/pages/onBoarding/onBoardingPages.dart';


class RoutsGnerate{
  static Route<dynamic> generateRoute(RouteSettings settings){
    switch(settings.name){
      // case RouteGenerator.splashPage:
      //
      case RouteGenerator.onBoarding:
        return MaterialPageRoute(builder: (_) => OnBoardingPage());
      case RouteGenerator.signUpPage:
        return MaterialPageRoute(builder: (_) => SignUpPage());
      case RouteGenerator.signInPage:
        return MaterialPageRoute(builder: (_) => SignInPage());
      case RouteGenerator.forgetPassword:
        return MaterialPageRoute(builder: (_) =>  ResetPasswordPage());
      // case RouteGenerator.forgetPassword:
      //   return MaterialPageRoute(builder: (_) => ForgetPasswordPage());
      // case RouteGenerator.createNewPassword:
      //   return MaterialPageRoute(builder: (_) =>  CreateNewPasswordPage());
      // case RouteGenerator.successResetPage:
      //   return MaterialPageRoute(builder: (_) =>  SuccessResetPassword());
      // case RouteGenerator.mainVerificationPage:
      //   return MaterialPageRoute(builder: (_) =>  MainVerificationPage());
      // case RouteGenerator.checkEmailPage:
      //   return MaterialPageRoute(builder: (_) =>  CheckEmailPage());
      // case RouteGenerator.verificationEmailPage:
      //   return MaterialPageRoute(builder: (_) =>  VerificationEmailPage());
      // case RouteGenerator.successVerificationEmail:
      //   return MaterialPageRoute(builder: (_) =>  SuccessVerifiedEmailPage());
      // case RouteGenerator.successVerificationMobile:
      //   return MaterialPageRoute(builder: (_) =>  SuccessVerifiedMobilePage());
      // case RouteGenerator.verificationMobilePage:
      //   return MaterialPageRoute(builder: (_) => VerificationMobilePage());
      // case RouteGenerator.verificationIDPage:
      //   return MaterialPageRoute(builder: (_) => VerificationIDPage());
      // case RouteGenerator.verificationAddressPage:
      //   return MaterialPageRoute(builder: (_) => VerificationAdressPage());
      // case RouteGenerator.getUserDetails:
      //   return MaterialPageRoute(builder: (_) => UserDetailsPage());
      // case RouteGenerator.homeTeamDashboard:
      //   return MaterialPageRoute(builder: (_) => HomeTeamPage());
      // case RouteGenerator.mainUserManagementPage:
      //   return MaterialPageRoute(builder: (_) => MainUserManagementPage());
      // case RouteGenerator.editUserInformationPage:
      //   return MaterialPageRoute(builder: (_) => EditUserInformation());
        default:
        throw const FormatException("Route not found");
    }
  }
}