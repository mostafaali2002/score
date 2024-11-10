import 'package:flutter/material.dart';
import 'package:score/model/live_matche_model.dart';
import 'package:score/utils/app_style.dart';
import 'package:score/utils/assets.dart';
import 'package:score/widgets/live_match_details.dart';
import 'package:score/widgets/live_match_details_app_bar.dart';
import 'package:score/widgets/live_matche_card.dart';
import 'package:score/widgets/match_categories.dart';

class LiveMatchCardDetails extends StatelessWidget {
  const LiveMatchCardDetails({super.key});
  static String id = "LiveMatchCardDetails";

  @override
  Widget build(BuildContext context) {
    // var liveModel = ModalRoute.of(context)!.settings.arguments;
    return const Scaffold(
      backgroundColor: Color(0xff191616),
      body: Column(
        children: [
          SizedBox(
            height: 50,
          ),
          LiveMatchDetailsAppBar(),
          SizedBox(
            height: 67,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16),
            child: LiveMatcheCard(
                liveMatcheModel: LiveMatcheModel(
              stadiumName: "stadiumName",
              cardBackGroundColor: AppStyle.appColorOfWhite,
              numberOfWeek: "numberOfWeek",
              scoreOne: 0,
              scoreTwo: 1,
              firstTeamName: "firstTeamName",
              secondTeamName: "secondTeamName",
              firstTeamLogo: Assets.football,
              secondTeamLogo: Assets.football,
              home: "home",
              away: "away",
              time: "time",
            )),
          ),
          SizedBox(
            height: 40,
          ),
          MatchCategories(),
          SizedBox(
            height: 35,
          ),
          LiveMatchDetails(),
        ],
      ),
    );
  }
}
