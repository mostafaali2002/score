import 'package:flutter/material.dart';
import 'package:score/model/live_match_details_model.dart';
import 'package:score/widgets/live_match_details.dart';

class LiveMatchDetailsList extends StatefulWidget {
  const LiveMatchDetailsList({super.key});

  @override
  State<LiveMatchDetailsList> createState() => _LiveMatchDetailsListState();
}

class _LiveMatchDetailsListState extends State<LiveMatchDetailsList> {
  List<LiveMatchDetailsModel> items = [
    const LiveMatchDetailsModel(
        teamTwoDetail: "1",
        teamOnedetail: "0",
        detailName: "Goals",
        flow1: .2,
        flow2: .1,
        isBigger1: false,
        isBigger2: true),
    const LiveMatchDetailsModel(
        teamTwoDetail: "12",
        teamOnedetail: "15",
        detailName: "Shot On Target",
        flow1: .1,
        flow2: .2,
        isBigger1: true,
        isBigger2: false),
    const LiveMatchDetailsModel(
        teamTwoDetail: "3",
        teamOnedetail: "1",
        detailName: "Yellow Cards",
        flow1: .2,
        flow2: .1,
        isBigger1: false,
        isBigger2: true),
    const LiveMatchDetailsModel(
        teamTwoDetail: "0",
        teamOnedetail: "0",
        detailName: "Red Cards",
        flow1: 0,
        flow2: 0,
        isBigger1: false,
        isBigger2: false),
    const LiveMatchDetailsModel(
        teamTwoDetail: "5",
        teamOnedetail: "7",
        detailName: "Corners",
        flow1: .1,
        flow2: .2,
        isBigger1: true,
        isBigger2: false),
  ];

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        itemCount: items.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(vertical: 10),
            child: LiveMatchDetails(
              liveMatchDetails: items[index],
            ),
          );
        },
      ),
    );
  }
}
