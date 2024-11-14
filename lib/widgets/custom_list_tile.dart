import 'package:flutter/material.dart';
import 'package:score/model/category_model.dart';
import 'package:score/utils/app_style.dart';

class CustomListTile extends StatelessWidget {
  const CustomListTile({
    super.key,
    required this.categoryModel,
    this.onTap,
    required this.isSelected,
  });
  final CategoryModel categoryModel;
  final Function()? onTap;
  final bool isSelected;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      child: ListTile(
        selectedTileColor: const Color(AppStyle.appColorBlue),
        splashColor: const Color(AppStyle.appColorBlue),
        selected: isSelected,
        onTap: onTap,
        leading: Image.asset(categoryModel.leagueIcon, height: 30),
        title: Text(
          categoryModel.leagueName,
          style: AppStyle.styleBold18,
        ),
      ),
    );
  }
}
