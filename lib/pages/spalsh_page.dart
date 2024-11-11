import 'dart:async';

import 'package:flutter/material.dart';
import 'package:score/pages/home_page.dart';
import 'package:score/utils/app_style.dart';
import 'package:score/widgets/app_logo.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({super.key});
  static String id = "SplashPage";

  @override
  Widget build(BuildContext context) {
    Timer(const Duration(seconds: 3), () {
      Navigator.pushReplacementNamed(context, HomePage.id);
    });
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
