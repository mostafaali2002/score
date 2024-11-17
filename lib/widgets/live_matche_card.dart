import 'package:flutter/material.dart';
import 'package:score/model/live_matche_model.dart';
import 'package:score/pages/live_match_card_details_page.dart';
import 'package:score/utils/app_style.dart';
import 'package:score/widgets/card_details.dart';
import 'package:score/widgets/teams_and_results_section.dart';

class LiveMatcheCard extends StatelessWidget {
  const LiveMatcheCard({super.key, required this.liveMatcheModel});
  final LiveMatcheModel liveMatcheModel;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, LiveMatchCardDetails.id,
            arguments: liveMatcheModel);
      },
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: Color(liveMatcheModel.cardBackGroundColor)),
        child: Stack(children: [
          Image.asset(
            liveMatcheModel.leagueLogo,
            height: 250,
          ),
          Padding(
            padding: const EdgeInsets.only(top: 10),
            child: Column(
              children: [
                CardDetails(
                    isActive: liveMatcheModel.cardBackGroundColor !=
                        AppStyle.appColorOfWhite,
                    matchTime: liveMatcheModel.time,
                    numberOfWeek: liveMatcheModel.numberOfWeek,
                    stadiumName: liveMatcheModel.stadiumName),
                TeamsAndResultSection(liveMatcheModel: liveMatcheModel)
              ],
            ),
          )
        ]),
      ),
    );
  }
}
