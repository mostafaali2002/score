import 'package:flutter/material.dart';
import 'package:score/model/up_comming_matchs_model.dart';
import 'package:score/utils/assets.dart';
import 'package:score/widgets/up_comming_matchs_card.dart';

class UpCommingMatchList extends StatefulWidget {
  const UpCommingMatchList({super.key});

  @override
  State<UpCommingMatchList> createState() => _UpCommingMatchListState();
}

class _UpCommingMatchListState extends State<UpCommingMatchList> {
  List<UpCommingMatchsModel> items = [
    const UpCommingMatchsModel(
        teamName: "teamName",
        teamName2: "teamName2",
        homeOrAway2: "Home",
        logoTeam2: Assets.football,
        homeOrAway: "Away",
        logoTeam: Assets.football,
        startTime: "startTime",
        date: "date"),
    const UpCommingMatchsModel(
        teamName: "teamName",
        teamName2: "teamName2",
        homeOrAway2: "Home",
        logoTeam2: Assets.football,
        homeOrAway: "Away",
        logoTeam: Assets.football,
        startTime: "startTime",
        date: "date"),
    const UpCommingMatchsModel(
        teamName: "teamName",
        teamName2: "teamName2",
        homeOrAway2: "Home",
        logoTeam2: Assets.football,
        homeOrAway: "Away",
        logoTeam: Assets.football,
        startTime: "startTime",
        date: "date"),
    const UpCommingMatchsModel(
        teamName: "teamName",
        teamName2: "teamName2",
        homeOrAway2: "Home",
        logoTeam2: Assets.football,
        homeOrAway: "Away",
        logoTeam: Assets.football,
        startTime: "startTime",
        date: "date"),
    const UpCommingMatchsModel(
        teamName: "teamName",
        teamName2: "teamName2",
        homeOrAway2: "Home",
        logoTeam2: Assets.football,
        homeOrAway: "Away",
        logoTeam: Assets.football,
        startTime: "startTime",
        date: "date"),
  ];

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        itemCount: items.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(vertical: 8),
            child: UpCommingMatchsCard(upCommingMatchsModel: items[index]),
          );
        },
      ),
    );
  }
}
