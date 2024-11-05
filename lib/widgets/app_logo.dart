import 'package:flutter/material.dart';
import 'package:score/utils/app_style.dart';
import 'package:score/utils/assets.dart';

class AppLogo extends StatelessWidget {
  const AppLogo({
    super.key,
    required this.logSize,
    this.style,
  });
  final double logSize;
  final TextStyle? style;
  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      Positioned(
        left: 46,
        top: 13,
        child: Image.asset(Assets.football, height: logSize),
      ),
      const Text(
        "Sc    re",
        style: AppStyle.styleBold48,
      )
    ]);
  }
}
