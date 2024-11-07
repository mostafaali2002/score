import 'package:flutter/material.dart';
import 'package:score/utils/app_style.dart';

class CustomContainer extends StatelessWidget {
  const CustomContainer({
    super.key,
    required this.text,
    required this.isActive,
    required this.onTap,
  });
  final String text;
  final bool isActive;
  final Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.only(top: 7, bottom: 7, left: 12, right: 12),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(9),
          color: Color(
              isActive ? AppStyle.appColorBlue : AppStyle.appColorOfWhite),
        ),
        child: Text(
          text,
          style: isActive
              ? AppStyle.styleBold14
              : AppStyle.styleBold14.copyWith(color: Colors.black),
        ),
      ),
    );
  }
}
