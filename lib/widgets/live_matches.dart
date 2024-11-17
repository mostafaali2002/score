import 'package:flutter/material.dart';
import 'package:score/utils/app_style.dart';
import 'package:score/widgets/league.dart';

class LiveMatches extends StatelessWidget {
  const LiveMatches(
      {super.key, required this.leagueName, required this.leagueIcon});
  final String leagueName, leagueIcon;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Text(
            "Live Matches",
            style: AppStyle.styleBold20,
          ),
          League(leagueIcon: leagueIcon, leagueName: leagueName),
        ],
      ),
    );
  }
}
