import 'package:flutter/material.dart';
import 'package:score/widgets/live_match_details_app_bar.dart';
import 'package:score/widgets/notification_body.dart';

class NotificationPage extends StatelessWidget {
  const NotificationPage({super.key});
  static String id = "NotificationPage";
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Color(0xff191616),
      body: Column(
        children: [
          SizedBox(
            height: 50,
          ),
          LiveMatchDetailsAppBar(
            text: "Notifications",
          ),
          Spacer(
            flex: 1,
          ),
          NotificationBody(),
          Spacer(
            flex: 1,
          ),
        ],
      ),
    );
  }
}
