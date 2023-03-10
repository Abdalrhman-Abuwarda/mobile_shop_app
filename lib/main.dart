import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mobile_shop_app/core/provider/generalProvider.dart';
import 'package:mobile_shop_app/resources/theme_manager.dart';
import 'package:mobile_shop_app/routing/navigations.dart';
import 'package:mobile_shop_app/routing/routes.dart';
import 'package:mobile_shop_app/ui/pages/auth/check_email_page.dart';
import 'package:mobile_shop_app/ui/pages/auth/create_new_password_page.dart';
import 'package:mobile_shop_app/ui/pages/auth/phone_verification_page.dart';
import 'package:mobile_shop_app/ui/pages/auth/reset_password_page.dart';
import 'package:mobile_shop_app/ui/pages/auth/sign_in_page.dart';
import 'package:mobile_shop_app/ui/pages/home/explore_page.dart';
import 'package:mobile_shop_app/ui/pages/home/home_page.dart';
import 'package:mobile_shop_app/ui/pages/home/main_home_page.dart';
import 'package:mobile_shop_app/ui/pages/splash_page.dart';
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
          home:  Home(),
          navigatorKey: ServiceNavigation.serviceNavi.navKey,
          onGenerateRoute: RoutsGenerate.generateRoute,
        ),
      ),
    );
  }
}
