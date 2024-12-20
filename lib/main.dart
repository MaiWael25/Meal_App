import 'package:flutter/material.dart';
import 'package:meal_app/details_view.dart';
import 'package:meal_app/home/home_page.dart';
import 'package:meal_app/sign_in_view.dart';
import 'package:meal_app/splash_screen.dart';

void main() {
  runApp(const MealApp());
}

class MealApp extends StatelessWidget {
  const MealApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Meal App',
      home: SplashScreen(),
    );
  }
}
