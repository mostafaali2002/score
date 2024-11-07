import 'package:flutter/material.dart';
import 'package:score/utils/app_style.dart';
import 'package:score/widgets/app_logo.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({super.key});
  static String id = "SplashPage";
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Color(0xff191616),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
              child: AppLogo(
            logSize: 35,
            style: AppStyle.styleBold96,
          ))
        ],
      ),
    );
  }
}
