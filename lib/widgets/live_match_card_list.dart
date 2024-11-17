import 'package:expandable_page_view/expandable_page_view.dart';
import 'package:flutter/material.dart';
import 'package:score/model/live_matche_model.dart';
import 'package:score/widgets/live_matche_card.dart';

class LiveMatchCardList extends StatefulWidget {
  const LiveMatchCardList({super.key, required this.itemsList});
  final List<LiveMatcheModel> itemsList;
  @override
  State<LiveMatchCardList> createState() => _LiveMatchCardListState();
}

class _LiveMatchCardListState extends State<LiveMatchCardList> {
  @override
  Widget build(BuildContext context) {
    return ExpandablePageView(
        scrollDirection: Axis.horizontal,
        children: List.generate(
          widget.itemsList.length,
          (index) => Padding(
            padding: const EdgeInsets.only(left: 16, right: 20),
            child: LiveMatcheCard(
              liveMatcheModel: widget.itemsList[index],
            ),
          ),
        ));
  }
}
