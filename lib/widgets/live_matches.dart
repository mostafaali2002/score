import 'package:flutter/material.dart';
import 'package:score/utils/app_style.dart';
import 'package:score/utils/assets.dart';
import 'package:score/widgets/league.dart';

class LiveMatches extends StatelessWidget {
  const LiveMatches({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            "Live Matches",
            style: AppStyle.styleBold20,
          ),
          League(leagueIcon: Assets.logoLeague, leagueName: "Premier League"),
        ],
      ),
    );
  }
}
