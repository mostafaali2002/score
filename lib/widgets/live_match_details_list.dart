import 'package:flutter/material.dart';
import 'package:score/model/live_match_details_model.dart';
import 'package:score/widgets/live_match_details.dart';

class LiveMatchDetailsList extends StatefulWidget {
  const LiveMatchDetailsList(
      {super.key, required this.scoreOne, required this.scoreTwo});

  @override
  State<LiveMatchDetailsList> createState() => _LiveMatchDetailsListState();
  final String scoreOne, scoreTwo;
}

class _LiveMatchDetailsListState extends State<LiveMatchDetailsList> {
  @override
  Widget build(BuildContext context) {
    List<LiveMatchDetailsModel> items = [
      LiveMatchDetailsModel(
          teamTwoDetail: widget.scoreTwo,
          teamOnedetail: widget.scoreOne,
          detailName: "Goals",
          flow1: .2,
          flow2: .1,
          isBigger1: int.parse(widget.scoreOne) > int.parse(widget.scoreTwo)
              ? true
              : false,
          isBigger2: int.parse(widget.scoreTwo) > int.parse(widget.scoreOne)
              ? true
              : false),
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
