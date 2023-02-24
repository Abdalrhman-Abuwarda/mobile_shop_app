import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mobile_shop_app/core/provider/generalProvider.dart';
import 'package:mobile_shop_app/resources/themeManager.dart';
import 'package:mobile_shop_app/routing/navigations.dart';
import 'package:mobile_shop_app/routing/routes.dart';
import 'package:mobile_shop_app/ui/pages/auth/checkEmailPage.dart';
import 'package:mobile_shop_app/ui/pages/auth/createNewPasswordPage.dart';
import 'package:mobile_shop_app/ui/pages/auth/phoneVerificationPage.dart';
import 'package:mobile_shop_app/ui/pages/auth/resetPasswordPage.dart';
import 'package:mobile_shop_app/ui/pages/auth/signInPage.dart';
import 'package:mobile_shop_app/ui/pages/home/mainHomePage.dart';
import 'package:mobile_shop_app/ui/pages/splashPage.dart';
import 'package:mobile_shop_app/utils/helper.dart';
import 'package:provider/provider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations;
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);
  await ScreenUtil.ensureScreenSize();
  // await SharedPrefController().initSharedPreferences();
  runApp(const MyApp());
  SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual,
      overlays: SystemUiOverlay.values);
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
            create: (_) => GeneralProvider(), child: const MyApp()),
      ],
      child: ScreenUtilInit(
        designSize: const Size(375, 812),
        builder: (BuildContext context, Widget? child) => MaterialApp(
          scaffoldMessengerKey: Helpers.scaffoldKey,
          debugShowCheckedModeBanner: false,
          title: 'Flutter Demo',
          theme: ThemeManager.lightTheme,
          home: const SignInPage(),
          navigatorKey: ServiceNavigation.serviceNavi.navKey,
          onGenerateRoute: RoutsGenerate.generateRoute,
        ),
      ),
    );
  }
}
