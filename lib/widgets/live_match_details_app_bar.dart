import 'package:flutter/material.dart';
import 'package:score/utils/app_style.dart';

class LiveMatchDetailsAppBar extends StatelessWidget {
  const LiveMatchDetailsAppBar({
    super.key,
    required this.text,
  });
  final String text;
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
          Text(
            text,
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
