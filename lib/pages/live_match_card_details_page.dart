import 'package:flutter/material.dart';
import 'package:score/model/live_matche_model.dart';
import 'package:score/widgets/live_match_details_app_bar.dart';
import 'package:score/widgets/live_match_details_list.dart';
import 'package:score/widgets/live_matche_card.dart';
import 'package:score/widgets/match_categories.dart';

class LiveMatchCardDetails extends StatelessWidget {
  const LiveMatchCardDetails({super.key});
  static String id = "LiveMatchCardDetails";

  @override
  Widget build(BuildContext context) {
    final liveModel =
        ModalRoute.of(context)!.settings.arguments as LiveMatcheModel;
    return Scaffold(
      backgroundColor: const Color(0xff191616),
      body: Column(
        children: [
          const SizedBox(
            height: 50,
          ),
          const LiveMatchDetailsAppBar(text: "Premier League"),
          const SizedBox(
            height: 67,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: LiveMatcheCard(
                liveMatcheModel: LiveMatcheModel(
              stadiumName: liveModel.stadiumName,
              cardBackGroundColor: liveModel.cardBackGroundColor,
              numberOfWeek: liveModel.numberOfWeek,
              scoreOne: liveModel.scoreOne,
              scoreTwo: liveModel.scoreTwo,
              firstTeamName: liveModel.firstTeamName,
              secondTeamName: liveModel.secondTeamName,
              firstTeamLogo: liveModel.firstTeamLogo,
              secondTeamLogo: liveModel.secondTeamLogo,
              home: liveModel.home,
              away: liveModel.away,
              time: liveModel.time,
            )),
          ),
          const SizedBox(
            height: 40,
          ),
          const MatchCategories(),
          const SizedBox(
            height: 35,
          ),
          LiveMatchDetailsList(
              scoreOne: liveModel.scoreOne.toString(),
              scoreTwo: liveModel.scoreTwo.toString()),
        ],
      ),
    );
  }
}
