import 'package:flutter/material.dart';
import '../../../resources/values_manager.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({required this.actionsList,required this.leadingImages,required this.title, Key? key}) : super(key: key);
  final List<Widget> actionsList;
  final Widget? leadingImages;
  final String title;

  @override
  Widget build(BuildContext context) {
    return  AppBar(
      title: Text(title),
      leading: Padding(
        padding: const EdgeInsets.all(AppPadding.p12),
        child: leadingImages,
      ),
      actions: actionsList
    );
  }
}
