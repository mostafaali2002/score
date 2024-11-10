import 'package:flutter/material.dart';
import 'package:score/utils/app_style.dart';

class Details extends StatelessWidget {
  const Details({
    super.key,
    required this.teamOnedetail,
    required this.teamTwoDetail,
    required this.detailName,
  });
  final String teamOnedetail, teamTwoDetail, detailName;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            teamOnedetail,
            style: AppStyle.styleBold18.copyWith(
                color: int.parse(teamOnedetail) > int.parse(teamTwoDetail)
                    ? const Color(AppStyle.appColorBlue)
                    : Colors.white),
          ),
          Text(
            detailName,
            style: AppStyle.styleBold18,
          ),
          Text(
            teamTwoDetail,
            style: AppStyle.styleBold18.copyWith(
                color: int.parse(teamTwoDetail) > int.parse(teamOnedetail)
                    ? const Color(AppStyle.appColorBlue)
                    : Colors.white),
          ),
        ],
      ),
    );
  }
}
