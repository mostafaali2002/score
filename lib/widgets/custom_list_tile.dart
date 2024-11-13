import 'package:flutter/material.dart';
import 'package:score/utils/app_style.dart';

class CustomListTile extends StatelessWidget {
  const CustomListTile({
    super.key,
    required this.iconLeague,
    required this.leagueName,
    this.onTap,
    required this.isSelected,
  });
  final String iconLeague, leagueName;
  final Function()? onTap;
  final bool isSelected;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      child: ListTile(
        selectedTileColor: Color(AppStyle.appColorBlue),
        splashColor: const Color(AppStyle.appColorBlue),
        selected: isSelected,
        onTap: onTap,
        leading: Image.asset(iconLeague, height: 30),
        title: Text(
          leagueName,
          style: AppStyle.styleBold18,
        ),
      ),
    );
  }
}
