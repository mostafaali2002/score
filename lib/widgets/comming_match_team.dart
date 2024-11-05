import 'package:flutter/material.dart';
import 'package:score/utils/app_style.dart';

class CommingMatchTeam extends StatelessWidget {
  const CommingMatchTeam({
    super.key,
    required this.homeOrAway,
    required this.logoTeam,
    required this.teamName,
  });
  final String homeOrAway, logoTeam, teamName;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          teamName,
          style: AppStyle.styleBold16,
        ),
        const SizedBox(
          width: 10,
        ),
        Column(
          children: [
            Image.asset(
              logoTeam,
              height: 40,
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              homeOrAway,
              style: AppStyle.styleRegular11,
            )
          ],
        ),
      ],
    );
  }
}

class CommingMatchTeam2 extends StatelessWidget {
  const CommingMatchTeam2({
    super.key,
    required this.homeOrAway,
    required this.logoTeam,
    required this.teamName,
  });
  final String homeOrAway, logoTeam, teamName;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Column(
          children: [
            Image.asset(
              logoTeam,
              height: 40,
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              homeOrAway,
              style: AppStyle.styleRegular11,
            )
          ],
        ),
        const SizedBox(
          width: 10,
        ),
        Text(
          teamName,
          style: AppStyle.styleBold16,
        ),
      ],
    );
  }
}
