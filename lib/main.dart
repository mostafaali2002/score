import 'package:flutter/material.dart';
import 'package:score/pages/boundesliaga_page.dart';
import 'package:score/pages/home_page.dart';
import 'package:score/pages/laliga_page.dart';
import 'package:score/pages/ligue_one_page.dart';
import 'package:score/pages/live_match_card_details_page.dart';
import 'package:score/pages/notification_page.dart';
import 'package:score/pages/serie_a_page.dart';
import 'package:score/pages/spalsh_page.dart';

void main() {
  runApp(const Score());
}

class Score extends StatelessWidget {
  const Score({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.dark,
      routes: {
        HomePage.id: (context) => const HomePage(),
        LiveMatchCardDetails.id: (context) => const LiveMatchCardDetails(),
        SplashPage.id: (context) => const SplashPage(),
        NotificationPage.id: (context) => const NotificationPage(),
        LaligaPage.id: (context) => const LaligaPage(),
        BoundesLigaPage.id: (context) => const BoundesLigaPage(),
        Serie_A_Page.id: (context) => const Serie_A_Page(),
        LigueOnePage.id: (context) => const LigueOnePage(),
      },
      initialRoute: SplashPage.id,
    );
  }
}
