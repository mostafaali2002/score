import 'package:flutter/material.dart';
import 'package:score/utils/app_style.dart';

class MatchResult extends StatelessWidget {
  const MatchResult({
    super.key,
    required this.scoreOne,
    required this.scoreTwo,
    required this.isActive,
  });
  final int scoreOne, scoreTwo;
  final bool isActive;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 45),
      child: Column(
        children: [
          Row(
            children: [
              Text(
                "$scoreOne :",
                style: AppStyle.styleBold40.copyWith(
                    color: scoreOne > scoreTwo
                        ? Color(isActive ? 0xFFFFFFFF : AppStyle.appColorBlue)
                        : Colors.black),
              ),
              Text(
                " $scoreTwo",
                style: AppStyle.styleBold40.copyWith(
                    color: scoreTwo > scoreOne
                        ? Color(isActive ? 0xFFFFFFFF : AppStyle.appColorBlue)
                        : Colors.black),
              )
            ],
          ),
        ],
      ),
    );
  }
}
