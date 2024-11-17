import 'package:flutter/material.dart';
import 'package:score/model/live_matche_model.dart';
import 'package:score/utils/assets.dart';

abstract class AppStyle {
  static const TextStyle styleBold48 = TextStyle(
    fontFamily: "Caladea",
    fontSize: 48,
    color: Colors.white,
    fontWeight: FontWeight.bold,
  );
  static const TextStyle styleBold20 = TextStyle(
    fontFamily: "Caladea",
    fontSize: 20,
    color: Colors.white,
    fontWeight: FontWeight.bold,
  );
  static const TextStyle styleBold14 = TextStyle(
    fontFamily: "Caladea",
    fontSize: 14,
    color: Colors.white,
    fontWeight: FontWeight.bold,
  );

  static const TextStyle styleBold18 = TextStyle(
    fontFamily: "Caladea",
    fontSize: 18,
    color: Colors.white,
    fontWeight: FontWeight.bold,
  );
  static const TextStyle styleBold16 = TextStyle(
    fontFamily: "Caladea",
    fontSize: 16,
    color: Colors.white,
    fontWeight: FontWeight.bold,
  );
  static const TextStyle styleBold96 = TextStyle(
    fontFamily: "Caladea",
    fontSize: 96,
    color: Colors.white,
    fontWeight: FontWeight.bold,
  );
  static const TextStyle styleBold40 = TextStyle(
    fontFamily: "Caladea",
    fontSize: 40,
    color: Colors.white,
    fontWeight: FontWeight.bold,
  );
  static const TextStyle styleRegular11 = TextStyle(
    fontFamily: "Caladea",
    fontSize: 11,
    color: Colors.white,
    fontWeight: FontWeight.normal,
  );
  static const TextStyle styleRegular14 = TextStyle(
    fontFamily: "Caladea",
    fontSize: 14,
    color: Colors.black,
    fontWeight: FontWeight.normal,
  );
  static const TextStyle styleRegular16 = TextStyle(
    fontFamily: "Caladea",
    fontSize: 16,
    color: Colors.black,
    fontWeight: FontWeight.normal,
  );
  static const appColorBlue = 0xff0D99FF;
  static const appColorOfWhite = 0xffD8D7D7;
  static const List<LiveMatcheModel> itemsPremier = [
    LiveMatcheModel(
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
        leagueLogo: Assets.logoFootball,
        cardBackGroundColor: AppStyle.appColorOfWhite),
    LiveMatcheModel(
        leagueLogo: Assets.logoFootball,
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
    LiveMatcheModel(
        leagueLogo: Assets.logoFootball,
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
  static const List<LiveMatcheModel> itemsLaliga = [
    LiveMatcheModel(
        leagueLogo: Assets.logoLaLigaLeague,
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
    LiveMatcheModel(
        leagueLogo: Assets.logoLaLigaLeague,
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
    LiveMatcheModel(
        leagueLogo: Assets.logoLaLigaLeague,
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
  static const List<LiveMatcheModel> itemsBoundesLiga = [
    LiveMatcheModel(
        leagueLogo: Assets.logoBigBoundes,
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
    LiveMatcheModel(
        leagueLogo: Assets.logoBigBoundes,
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
    LiveMatcheModel(
        leagueLogo: Assets.logoBigBoundes,
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
  static const List<LiveMatcheModel> itemsSerieA = [
    LiveMatcheModel(
        leagueLogo: Assets.logoBigSerie,
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
    LiveMatcheModel(
        leagueLogo: Assets.logoBigSerie,
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
    LiveMatcheModel(
        leagueLogo: Assets.logoBigSerie,
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
  static const List<LiveMatcheModel> itemsLiguOne = [
    LiveMatcheModel(
        leagueLogo: Assets.logoBiglegue1,
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
    LiveMatcheModel(
        leagueLogo: Assets.logoBiglegue1,
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
    LiveMatcheModel(
        leagueLogo: Assets.logoBiglegue1,
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
}
