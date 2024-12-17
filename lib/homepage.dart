import 'package:flutter/material.dart';
import 'package:meal_app/custom_card.dart';
import 'package:meal_app/dummy_data.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xfff7af65),
        title: const Text("Main"),
        leading: const Icon(Icons.arrow_back),
        elevation: 2,
      ),
      body: ListView.builder(
        itemCount: dummyMeals.length,
        itemBuilder: (context, index) {
          return CustomCard(
            meal: dummyMeals[index],
          );
        },
      ),
    );
  }
}
