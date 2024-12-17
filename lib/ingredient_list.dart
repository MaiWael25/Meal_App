import 'package:flutter/material.dart';
import 'package:meal_app/ingredient_item.dart';

class IngredientsList extends StatelessWidget {
  const IngredientsList({super.key, required this.ing});
  final List<String> ing;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: (ing.length)*28,
      child: ListView.builder(
        itemCount: ing.length,
        itemBuilder: (context, index) => IngredientItem(
          text: ing[index],
        ),
      ),
    );
  }
}
