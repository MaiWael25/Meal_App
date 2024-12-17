import 'package:flutter/material.dart';
import 'package:meal_app/home/home_page.dart';

import 'package:meal_app/splash_screen.dart';

void main() {
  runApp(const MealApp());
}

class MealApp extends StatelessWidget {
  const MealApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Meal App',
      home: MainScreen(name: "kk"),
    );
  }
}
