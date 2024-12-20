class LiveMatcheModel {
  final String stadiumName,
      numberOfWeek,
      firstTeamName,
      secondTeamName,
      firstTeamLogo,
      secondTeamLogo,
      home,
      away,
      leagueLogo,
      time;

  final int scoreOne, scoreTwo, cardBackGroundColor;

  const LiveMatcheModel({
    required this.leagueLogo,
    required this.stadiumName,
    required this.cardBackGroundColor,
    required this.numberOfWeek,
    required this.scoreOne,
    required this.scoreTwo,
    required this.firstTeamName,
    required this.secondTeamName,
    required this.firstTeamLogo,
    required this.secondTeamLogo,
    required this.home,
    required this.away,
    required this.time,
  });
}
