import 'package:flutter/material.dart';
import 'package:score/pages/home_page.dart';
import 'package:score/pages/live_match_card_details_page.dart';
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
      },
      initialRoute: SplashPage.id,
    );
  }
}
