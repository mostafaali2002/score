import 'package:flutter/material.dart';
import 'package:score/utils/app_style.dart';

class NotificationBody extends StatelessWidget {
  const NotificationBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          Icons.notifications,
          color: Colors.white.withOpacity(.2),
          size: 52,
        ),
        const SizedBox(
          height: 10,
        ),
        Text(
          "No Notification",
          style: AppStyle.styleBold20
              .copyWith(color: Colors.white.withOpacity(.2), fontSize: 30),
        )
      ],
    );
  }
}
