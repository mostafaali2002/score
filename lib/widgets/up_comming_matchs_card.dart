import 'package:flutter/material.dart';
import 'package:score/model/up_comming_matchs_model.dart';
import 'package:score/widgets/comming_match_team.dart';
import 'package:score/widgets/time_and_date.dart';

class UpCommingMatchsCard extends StatelessWidget {
  const UpCommingMatchsCard({super.key, required this.upCommingMatchsModel});
  final UpCommingMatchsModel upCommingMatchsModel;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        border: BorderDirectional(
            top: BorderSide(
              color: Colors.white,
            ),
            bottom: BorderSide(color: Colors.white)),
        color: Colors.transparent,
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            CommingMatchTeam(
                homeOrAway: upCommingMatchsModel.homeOrAway,
                logoTeam: upCommingMatchsModel.logoTeam,
                teamName: upCommingMatchsModel.teamName),
            TimeAndDate(
              date: upCommingMatchsModel.date,
              time: upCommingMatchsModel.startTime,
            ),
            CommingMatchTeam2(
                homeOrAway: upCommingMatchsModel.homeOrAway,
                logoTeam: upCommingMatchsModel.logoTeam,
                teamName: upCommingMatchsModel.teamName),
          ],
        ),
      ),
    );
  }
}
