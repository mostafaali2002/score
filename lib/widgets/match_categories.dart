import 'package:flutter/material.dart';
import 'package:score/widgets/custom_container.dart';

class MatchCategories extends StatefulWidget {
  const MatchCategories({
    super.key,
  });

  @override
  State<MatchCategories> createState() => _MatchCategoriesState();
}

List items = ["Status", "H2H", "Table"];
int current = 0;

class _MatchCategoriesState extends State<MatchCategories> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: List.generate(
          items.length,
          (index) => CustomContainer(
                text: items[index],
                isActive: current == index,
                onTap: () {
                  setState(() {
                    current = index;
                  });
                },
              )),
    );
  }
}
