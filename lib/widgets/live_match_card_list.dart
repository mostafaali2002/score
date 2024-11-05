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
        stadiumName: "stadiumName",
        numberOfWeek: "numberOfWeek",
        firstTeamName: "firstTeamName",
        secondTeamName: "secondTeamName",
        firstTeamLogo: Assets.football,
        secondTeamLogo: Assets.football,
        home: "home",
        away: "away",
        time: "time",
        firstScore: "firstScore",
        secondScore: "secondScore",
        scoreOne: 3,
        scoreTwo: 2,
        cardBackGroundColor: AppStyle.appColorBlue),
    const LiveMatcheModel(
        stadiumName: "stadiumName",
        numberOfWeek: "numberOfWeek",
        firstTeamName: "firstTeamName",
        secondTeamName: "secondTeamName",
        firstTeamLogo: Assets.football,
        secondTeamLogo: Assets.football,
        home: "home",
        away: "away",
        time: "time",
        firstScore: "firstScore",
        secondScore: "secondScore",
        scoreOne: 3,
        scoreTwo: 2,
        cardBackGroundColor: AppStyle.appColorOfWhite),
    const LiveMatcheModel(
        stadiumName: "stadiumName",
        numberOfWeek: "numberOfWeek",
        firstTeamName: "firstTeamName",
        secondTeamName: "secondTeamName",
        firstTeamLogo: Assets.football,
        secondTeamLogo: Assets.football,
        home: "home",
        away: "away",
        time: "time",
        firstScore: "firstScore",
        secondScore: "secondScore",
        scoreOne: 3,
        scoreTwo: 2,
        cardBackGroundColor: AppStyle.appColorOfWhite),
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
