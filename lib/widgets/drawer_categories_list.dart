import 'package:flutter/material.dart';
import 'package:score/model/category_model.dart';
import 'package:score/pages/boundesliaga_page.dart';
import 'package:score/pages/home_page.dart';
import 'package:score/pages/laliga_page.dart';
import 'package:score/pages/ligue_one_page.dart';
import 'package:score/pages/serie_a_page.dart';
import 'package:score/utils/assets.dart';
import 'package:score/widgets/custom_list_tile.dart';

class DrawerCategoriesList extends StatefulWidget {
  const DrawerCategoriesList({super.key});

  @override
  State<DrawerCategoriesList> createState() => _DrawerCategoriesListState();
}

class _DrawerCategoriesListState extends State<DrawerCategoriesList> {
  int currentPage = 0;
  List<CategoryModel> items = [
    const CategoryModel(
      leagueName: "Premier League",
      leagueIcon: Assets.logoPremierLeague,
    ),
    const CategoryModel(
      leagueName: "La Liga",
      leagueIcon: Assets.logoLaLigaLeague,
    ),
    const CategoryModel(
      leagueName: "Bundesliga",
      leagueIcon: Assets.logoBundesLigaLeague,
    ),
    const CategoryModel(
      leagueName: "Serie A",
      leagueIcon: Assets.logoSerieALeague,
    ),
    const CategoryModel(
      leagueName: "Ligue 1",
      leagueIcon: Assets.logoLigue,
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Column(
      children: List.generate(
          items.length,
          (index) => CustomListTile(
                isSelected: currentPage == index,
                categoryModel: items[index],
                onTap: () {
                  currentPage = index;

                  setState(() {
                    if (index == 0) {
                      Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const HomePage()));
                    } else if (index == 1) {
                      Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const LaligaPage()));
                    } else if (index == 2) {
                      Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const BoundesLigaPage()));
                    } else if (index == 3) {
                      Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const Serie_A_Page()));
                    } else {
                      Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const LigueOnePage()));
                    }
                    // currentPage = index;
                    // Navigator.pop(context);
                  });
                },
              )),
    );
  }
}
