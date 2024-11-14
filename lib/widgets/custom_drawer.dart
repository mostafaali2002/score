import 'package:flutter/material.dart';
import 'package:score/utils/app_style.dart';
import 'package:score/widgets/drawer_categories_list.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Drawer(
        backgroundColor: const Color(0xff191616),
        child: ListView(
          children: [
            const DrawerHeader(
              child: Text(
                "Football leagues",
                style: AppStyle.styleBold20,
              ),
            ),
            DrawerCategoriesList()
          ],
        ));
  }
}
