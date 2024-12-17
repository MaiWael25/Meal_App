import 'package:flutter/material.dart';
import 'package:meal_app/ingredient_item.dart';

class IngredientsList extends StatelessWidget {
  const IngredientsList({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        IngredientItem(text: '2 Eggs'),
        IngredientItem(text: '1 Cup All-purpose flour'),
        IngredientItem(text: '1/2 Cup Whole milk'),
        IngredientItem(text: '2 Tablespoon Butter'),
      ],
    );
  }
}
