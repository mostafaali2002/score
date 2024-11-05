import 'package:flutter/material.dart';
import 'package:score/pages/home_page.dart';

void main() {
  runApp(const Score());
}

class Score extends StatelessWidget {
  const Score({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.dark,
      home: HomePage(),
    );
  }
}
