import 'package:flutter/material.dart';
import 'package:score/utils/app_style.dart';

class TimeAndDate extends StatelessWidget {
  const TimeAndDate({super.key, required this.time, required this.date});
  final String time, date;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          time,
          style: AppStyle.styleBold20,
        ),
        const SizedBox(
          height: 10,
        ),
        Text(
          date,
          style: AppStyle.styleRegular11,
        ),
      ],
    );
  }
}
