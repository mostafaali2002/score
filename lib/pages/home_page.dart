import 'package:flutter/material.dart';
import 'package:score/widgets/custom_app_bar.dart';
import 'package:score/widgets/custom_drawer.dart';
import 'package:score/widgets/live_match_card_list.dart';
import 'package:score/widgets/live_matches.dart';
import 'package:score/widgets/up_comming_match_card_list.dart';
import 'package:score/widgets/up_comming_matchs.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});
  static String id = "HomePage";
  @override
  Widget build(BuildContext context) {
    final GlobalKey<ScaffoldState> _key = GlobalKey();
    return Scaffold(
      key: _key,
      drawer: const CustomDrawer(),
      backgroundColor: const Color(0xff191616),
      body: Column(
        children: [
          const SizedBox(
            height: 50,
          ),
          CustomAppBar(
            onPressed: () {
              _key.currentState!.openDrawer();
            },
          ),
          const SizedBox(
            height: 67,
          ),
          const LiveMatches(),
          const SizedBox(
            height: 22,
          ),
          const LiveMatchCardList(),
          const SizedBox(
            height: 35,
          ),
          const UpCommingMatchs(),
          const SizedBox(
            height: 1,
          ),
          const UpCommingMatchList(),
        ],
      ),
    );
  }
}
