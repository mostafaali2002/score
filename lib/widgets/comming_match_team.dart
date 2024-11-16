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
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 8),
          child: Column(
            children: [
              Image.asset(
                logoTeam,
                height: 40,
              ),
              const SizedBox(
                height: 5,
              ),
              Text(
                homeOrAway,
                style: AppStyle.styleRegular11,
              )
            ],
          ),
        ),
      ],
    );
  }
}

class CommingMatchTeam2 extends StatelessWidget {
  const CommingMatchTeam2({
    super.key,
    required this.logoTeam2,
    required this.homeOrAway2,
    required this.teamName2,
  });

  final String logoTeam2;
  final String homeOrAway2;
  final String teamName2;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Column(
          children: [
            Image.asset(
              logoTeam2,
              height: 40,
            ),
            const SizedBox(
              height: 5,
            ),
            Text(
              homeOrAway2,
              style: AppStyle.styleRegular11,
            )
          ],
        ),
        const SizedBox(
          width: 10,
        ),
        Text(
          teamName2,
          style: AppStyle.styleBold16,
        ),
      ],
    );
  }
}
