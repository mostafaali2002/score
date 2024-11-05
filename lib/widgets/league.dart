import 'package:flutter/material.dart';
import 'package:score/utils/app_style.dart';

class League extends StatelessWidget {
  const League({
    super.key,
    required this.leagueIcon,
    required this.leagueName,
  });
  final String leagueName, leagueIcon;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
      ),
      child: Row(children: [
        Image.asset(
          leagueIcon,
          color: Colors.white.withOpacity(1),
          height: 25,
        ),
        const SizedBox(
          width: 10,
        ),
        Text(
          leagueName,
          style: AppStyle.styleBold18,
        ),
        const Icon(
          Icons.keyboard_arrow_down_rounded,
          color: Colors.white,
        )
      ]),
    );
  }
}
