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
        teamName: "ARSENAL",
        teamName2: "LEVERPOOL",
        homeOrAway2: "Home",
        logoTeam2: Assets.logoLever,
        homeOrAway: "Away",
        logoTeam: Assets.logoArsenal,
        startTime: "06:00",
        date: "Nov"),
    const UpCommingMatchsModel(
        teamName: "Aston Villa",
        teamName2: "Brentford",
        homeOrAway2: "Home",
        logoTeam2: Assets.logoBrentford,
        homeOrAway: "Away",
        logoTeam: Assets.logoAston,
        startTime: "07:00",
        date: "Nov"),
    const UpCommingMatchsModel(
        teamName: "LESTER CITY",
        teamName2: "LEVERPOOL",
        homeOrAway2: "Home",
        logoTeam2: Assets.logoLever,
        homeOrAway: "Away",
        logoTeam: Assets.logoLester,
        startTime: "03:00",
        date: "Nov"),
    const UpCommingMatchsModel(
        teamName: "NEWCASTLE",
        teamName2: "ARSENAL",
        homeOrAway2: "Home",
        logoTeam2: Assets.logoArsenal,
        homeOrAway: "Away",
        logoTeam: Assets.logoNewCastel,
        startTime: "02:00",
        date: "Nov"),
  ];

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        itemCount: items.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 10),
            child: UpCommingMatchsCard(upCommingMatchsModel: items[index]),
          );
        },
      ),
    );
  }
}
