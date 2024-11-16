import 'package:expandable_page_view/expandable_page_view.dart';
import 'package:flutter/material.dart';
import 'package:score/model/live_matche_model.dart';
import 'package:score/utils/app_style.dart';
import 'package:score/utils/assets.dart';
import 'package:score/widgets/live_matche_card.dart';

class LiveMatchCardList extends StatefulWidget {
  const LiveMatchCardList({super.key});

  @override
  State<LiveMatchCardList> createState() => _LiveMatchCardListState();
}

class _LiveMatchCardListState extends State<LiveMatchCardList> {
  List<LiveMatcheModel> items = [
    const LiveMatcheModel(
        stadiumName: "London Stadium",
        numberOfWeek: "11",
        firstTeamName: "CHELSEA",
        secondTeamName: "NEWCASTLE",
        firstTeamLogo: Assets.logoChelse,
        secondTeamLogo: Assets.logoNewCastel,
        home: "home",
        away: "away",
        time: "85'",
        scoreOne: 3,
        scoreTwo: 2,
        cardBackGroundColor: AppStyle.appColorOfWhite),
    const LiveMatcheModel(
        stadiumName: "Old Trafford",
        numberOfWeek: "11",
        firstTeamName: "MAN UNITED",
        secondTeamName: "LESTER CITY",
        firstTeamLogo: Assets.logoUnited,
        secondTeamLogo: Assets.logoLester,
        home: "home",
        away: "away",
        time: "15'",
        scoreOne: 2,
        scoreTwo: 3,
        cardBackGroundColor: AppStyle.appColorBlue),
    const LiveMatcheModel(
        stadiumName: "Anfiled",
        numberOfWeek: "11",
        firstTeamName: "LEVERPOOL",
        secondTeamName: "Aston Villa",
        firstTeamLogo: Assets.logoBigLever,
        secondTeamLogo: Assets.logoBigAston,
        home: "home",
        away: "away",
        time: "10",
        scoreOne: 3,
        scoreTwo: 3,
        cardBackGroundColor: AppStyle.appColorOfWhite)
  ];

  @override
  Widget build(BuildContext context) {
    return ExpandablePageView(
        scrollDirection: Axis.horizontal,
        children: List.generate(
          items.length,
          (index) => Padding(
            padding: const EdgeInsets.only(left: 16, right: 20),
            child: LiveMatcheCard(
              liveMatcheModel: items[index],
            ),
          ),
        ));
  }
}
