import 'package:flutter/material.dart';
import 'package:score/pages/notification_page.dart';
import 'package:score/widgets/app_logo.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Row(
        children: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.category,
              color: Colors.white,
              size: 32,
            ),
          ),
          const Expanded(child: SizedBox()),
          const AppLogo(logSize: 35),
          const Expanded(child: SizedBox()),
          IconButton(
              onPressed: () {
                Navigator.pushNamed(context, NotificationPage.id);
              },
              icon: const Icon(
                Icons.notifications,
                color: Colors.white,
                size: 32,
              ))
        ],
      ),
    );
  }
}
