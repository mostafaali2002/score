import 'package:flutter/material.dart';
import 'package:score/utils/app_style.dart';

class LiveMatchDetailsAppBar extends StatelessWidget {
  const LiveMatchDetailsAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Row(
        children: [
          IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: const Icon(
                Icons.arrow_back_ios_new_outlined,
                color: Colors.white,
              )),
          const Spacer(
            flex: 2,
          ),
          const Text(
            "Premier League",
            style: AppStyle.styleBold20,
          ),
          const Spacer(
            flex: 2,
          ),
        ],
      ),
    );
  }
}
