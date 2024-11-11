import 'package:flutter/material.dart';
import 'package:score/model/live_match_details_model.dart';
import 'package:score/widgets/detail.dart';
import 'package:score/widgets/flow_details.dart';

class LiveMatchDetails extends StatelessWidget {
  const LiveMatchDetails({super.key, required this.liveMatchDetails});
  final LiveMatchDetailsModel liveMatchDetails;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Details(
            detailName: liveMatchDetails.detailName,
            teamOnedetail: liveMatchDetails.teamOnedetail,
            teamTwoDetail: liveMatchDetails.teamTwoDetail),
        const SizedBox(
          height: 10,
        ),
        FlowDetails(
          flow1: liveMatchDetails.flow1,
          flow2: liveMatchDetails.flow2,
          isBigger1: liveMatchDetails.isBigger1,
          isBigger2: liveMatchDetails.isBigger2,
        ),
      ],
    );
  }
}
