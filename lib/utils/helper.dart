import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Helpers {
  static final GlobalKey<ScaffoldMessengerState> scaffoldKey = GlobalKey<ScaffoldMessengerState>();
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();


 static showSnackBar({required String message}) {
    print("ssss");
    scaffoldKey.currentState?.showSnackBar(SnackBar(
      content: Text(message),
      duration: const Duration(seconds: 3),
      backgroundColor: Colors.blue,
      elevation: 10,
      margin: EdgeInsets.symmetric(horizontal: 30.w, vertical: 40.h),
      shape: const StadiumBorder(),
      behavior: SnackBarBehavior.floating,
    ));
    print("After Snak");
  }
}


class alertDialog extends StatelessWidget {
   alertDialog({required this.title, required this.content, required this.onPressed}) ;

   final String title;
   final String content;
   dynamic Function() onPressed;
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text(title),
      content: Text(content),
      actions: [
        TextButton(onPressed: onPressed, child: const Text("Ok")),
        // TextButton(onPressed: (){}, child: const Text("Cancel")),
      ],
    );
  }
}
