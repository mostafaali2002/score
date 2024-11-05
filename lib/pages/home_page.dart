import 'package:flutter/material.dart';
import 'package:score/model/up_comming_matchs_model.dart';
import 'package:score/utils/assets.dart';
import 'package:score/widgets/custom_app_bar.dart';
import 'package:score/widgets/live_match_card_list.dart';
import 'package:score/widgets/live_matches.dart';
import 'package:score/widgets/up_comming_matchs.dart';
import 'package:score/widgets/up_comming_matchs_card.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Color(0xff191616),
      body: Column(
        children: [
          SizedBox(
            height: 50,
          ),
          CustomAppBar(),
          SizedBox(
            height: 67,
          ),
          LiveMatches(),
          SizedBox(
            height: 22,
          ),
          LiveMatchCardList(),
          SizedBox(
            height: 40,
          ),
          UpCommingMatchs(),
          SizedBox(
            height: 13,
          ),
          UpCommingMatchsCard(
              upCommingMatchsModel: UpCommingMatchsModel(
                  teamName: "teamName",
                  homeOrAway: "homeOrAway",
                  logoTeam: Assets.football,
                  startTime: "startTime",
                  date: "date")),
        ],
      ),
    );
  }
}
