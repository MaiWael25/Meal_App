import 'package:flutter/material.dart';

class RecipeScreen extends StatelessWidget {
  const RecipeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: const Color(0xffFFAE59),
        title: const Text(
          'Classic Hamburger',
          style: TextStyle(
            fontSize: 20,
            color: Colors.white,
            fontWeight: FontWeight.w500,
          ),
        ),
        centerTitle: true,
        leading: const Padding(
          padding: EdgeInsets.only(left: 5),
          child: Icon(
            Icons.arrow_back,
            color: Colors.white,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              width: double.maxFinite,
              height: MediaQuery.sizeOf(context).width * 0.8,
              child: Image.asset(
                'assets/burger.jpeg',
                fit: BoxFit.cover,
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
              child: Text(
                'Ingredients',
                style: TextStyle(
                  decoration: TextDecoration.underline,
                  decorationColor: Color(0xffFFAE59),
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Color(0xffFFAE59),
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('300g Cattle Hack',
                      style: TextStyle(fontSize: 16),
                      textAlign: TextAlign.center),
                  Text('1 Tomato',
                      style: TextStyle(fontSize: 16),
                      textAlign: TextAlign.center),
                  Text('1 Cucumber',
                      style: TextStyle(fontSize: 16),
                      textAlign: TextAlign.center),
                  Text('1 Onion',
                      style: TextStyle(fontSize: 16),
                      textAlign: TextAlign.center),
                  Text('Ketchup',
                      style: TextStyle(fontSize: 16),
                      textAlign: TextAlign.center),
                  Text('2 Burger Buns',
                      style: TextStyle(fontSize: 16),
                      textAlign: TextAlign.center),
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 15),
              child: Text(
                'Steps',
                style: TextStyle(
                  decoration: TextDecoration.underline,
                  decorationColor: Color(0xffFFAE59),
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Color(0xffFFAE59),
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Form 2 patties',
                    style: TextStyle(fontSize: 16),
                  ),
                  SizedBox(height: 5),
                  Text(
                    'Fry the patties for c. 4 minutes on each side',
                    style: TextStyle(fontSize: 16),
                  ),
                  SizedBox(height: 5),
                  Text(
                    'Quickly fry the buns for c. 1 minute on each side',
                    style: TextStyle(fontSize: 16),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
