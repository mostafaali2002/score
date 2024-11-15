import 'package:flutter/material.dart';
import 'package:score/utils/app_style.dart';

class TeamLogoAndName extends StatelessWidget {
  const TeamLogoAndName({
    super.key,
    required this.icons,
    required this.name,
    required this.homeOrAway,
    required this.isActive,
  });
  final String icons, name, homeOrAway;
  final bool isActive;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset(
          icons,
          height: 100,
        ),
        const SizedBox(height: 5),
        Text(
          name,
          style: AppStyle.styleBold16
              .copyWith(color: isActive ? Colors.white : Colors.black),
        ),
        const SizedBox(height: 5),
        Text(
          homeOrAway,
          style: AppStyle.styleRegular11
              .copyWith(color: isActive ? Colors.white : Colors.black),
        )
      ],
    );
  }
}
