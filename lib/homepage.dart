import 'dart:math';

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
          final pizza = pizzaList[index];
          return CustomCard(
            img: pizza["imageUrl"]!,
            name:pizza["subtitle"]! ,
            subtitle: pizza["subtitle"]!,
          );
        },
      ),
    );
  }
}

const pizzaList = [
  {
    'name': 'Margherita Pizza',
    'subtitle': 'Classic pizza with fresh basil, mozzarella, and tomatoes',
    'imageUrl': 'assets/pizza1.jpg',
  },
  {
    'name': 'Pepperoni Pizza',
    'subtitle': 'Spicy pepperoni with mozzarella and tomato sauce',
    'imageUrl': 'assets/pizza2.jpg',
  },
  {
    'name': 'BBQ Chicken Pizza',
    'subtitle': 'Tangy BBQ sauce with grilled chicken and red onions',
    'imageUrl': 'assets/pizza3.jpg',
  },
  {
    'name': 'Hawaiian Pizza',
    'subtitle': 'Sweet pineapple and ham with mozzarella',
    'imageUrl': 'assets/pizza4.jpg',
  },
  {
    'name': 'Veggie Pizza',
    'subtitle': 'Loaded with fresh vegetables and mozzarella cheese',
    'imageUrl': 'assets/pizza5.jpg',
  },
  {
    'name': 'Meat Lovers Pizza',
    'subtitle': 'Packed with pepperoni, sausage, bacon, and ham',
    'imageUrl': 'assets/pizza6.jpg',
  },
  {
    'name': 'Four Cheese Pizza',
    'subtitle': 'A rich blend of mozzarella, cheddar, Parmesan, and blue cheese',
    'imageUrl': 'assets/pizza7.jpg',
  },
  {
    'name': 'Buffalo Chicken Pizza',
    'subtitle': 'Spicy buffalo sauce with chicken and blue cheese',
    'imageUrl': 'assets/pizza8.jpg',
  },
  {
    'name': 'Mushroom and Spinach Pizza',
    'subtitle': 'Savory mushrooms and spinach with garlic',
    'imageUrl': 'assets/pizza9.jpg',
  },
  {
    'name': 'Supreme Pizza',
    'subtitle': 'Everything on it: pepperoni, sausage, veggies, and more',
    'imageUrl': 'assets/pizza10.jpg',
  },
];
