import 'package:flutter/material.dart';
import 'package:score/utils/app_style.dart';

class UpCommingMatchs extends StatelessWidget {
  const UpCommingMatchs({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Text(
            "Up Comming Matchs",
            style: AppStyle.styleBold20,
          ),
          Text(
            "see all",
            style: AppStyle.styleBold20
                .copyWith(color: const Color(AppStyle.appColorBlue)),
          ),
        ],
      ),
    );
  }
}
