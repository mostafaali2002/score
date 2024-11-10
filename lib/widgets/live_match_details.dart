import 'package:flutter/material.dart';
import 'package:score/widgets/detail.dart';
import 'package:score/widgets/flow_details.dart';

class LiveMatchDetails extends StatelessWidget {
  const LiveMatchDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Details(detailName: "Goals", teamOnedetail: "1", teamTwoDetail: "2"),
        SizedBox(
          height: 10,
        ),
        FlowDetails(),
      ],
    );
  }
}
