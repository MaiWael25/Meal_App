import 'package:flutter/material.dart';
import 'package:meal_app/on_boarding_pages.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 3), () {
      Navigator.pushReplacement(context,
          MaterialPageRoute(builder: (context) => const OnboardingScreen()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: Center(
          child: Column(mainAxisSize: MainAxisSize.min, children: [
            Image.asset(
              'assets/logo1.png',
              width: 200,
            ),
            const SizedBox(
              height: 10,
            ),
            const Text(
              'Delicious food, delivered fast!',
              style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                  color: Color(0xffFFAE59)),
            ),
          ]),
        ));
  }
}
