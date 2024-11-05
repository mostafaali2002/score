import 'package:flutter/material.dart';
import 'package:score/utils/app_style.dart';

class CardDetails extends StatelessWidget {
  const CardDetails({
    super.key,
    required this.stadiumName,
    required this.numberOfWeek,
    required this.matchTime,
    required this.isActive,
  });
  final String stadiumName, numberOfWeek, matchTime;
  final bool isActive;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          stadiumName,
          style: AppStyle.styleBold18
              .copyWith(color: isActive ? Colors.white : Colors.black),
        ),
        const SizedBox(height: 8),
        Text(
          "Week $numberOfWeek",
          style: AppStyle.styleRegular14
              .copyWith(color: isActive ? Colors.white : Colors.black),
        ),
        const SizedBox(height: 20),
        Text(
          matchTime,
          style: AppStyle.styleRegular16
              .copyWith(color: isActive ? Colors.white : Colors.black),
        ),
        // const SizedBox(height: 16),
      ],
    );
  }
}
