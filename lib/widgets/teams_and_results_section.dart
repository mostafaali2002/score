import 'package:flutter/material.dart';
import 'package:score/model/live_matche_model.dart';
import 'package:score/utils/app_style.dart';
import 'package:score/widgets/match_result.dart';
import 'package:score/widgets/team_logo_and_name.dart';

class TeamsAndResultSection extends StatelessWidget {
  const TeamsAndResultSection({
    super.key,
    required this.liveMatcheModel,
  });

  final LiveMatcheModel liveMatcheModel;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        TeamLogoAndName(
          isActive:
              liveMatcheModel.cardBackGroundColor != AppStyle.appColorOfWhite,
          homeOrAway: liveMatcheModel.home,
          icons: liveMatcheModel.firstTeamLogo,
          name: liveMatcheModel.firstTeamName,
        ),
        MatchResult(
            isActive:
                liveMatcheModel.cardBackGroundColor != AppStyle.appColorOfWhite,
            scoreOne: liveMatcheModel.scoreOne,
            scoreTwo: liveMatcheModel.scoreTwo),
        TeamLogoAndName(
          isActive:
              liveMatcheModel.cardBackGroundColor != AppStyle.appColorOfWhite,
          homeOrAway: liveMatcheModel.away,
          icons: liveMatcheModel.secondTeamLogo,
          name: liveMatcheModel.secondTeamName,
        )
      ],
    );
  }
}
