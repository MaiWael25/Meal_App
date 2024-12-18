import 'package:flutter/material.dart';
import 'package:meal_app/custom_card.dart';
import 'package:meal_app/details_view.dart';
import 'package:meal_app/dummy_data.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xfff7af65),
        title: const Text("Pizza"),
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(Icons.arrow_back)),
        elevation: 2,
      ),
      body: ListView.builder(
        itemCount: dummyMeals.length,
        itemBuilder: (context, index) {
          final pizza = pizzaList[index];
          return CustomCard(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => DetailsView(
                      mins: int.parse(pizza["duration"]!),
                      servings: int.parse(pizza["servings"]!),
                      cal: int.parse(pizza["calories"]!),
                      type: pizza["type"]!,
                      ing: list[index],
                      description: pizza["steps"]!,
                      img: pizza["imageUrl"]!,
                      name: pizza["name"]!),
                ),
              );
            },
            img: pizza["imageUrl"]!,
            name: pizza["subtitle"]!,
            subtitle: pizza["subtitle"]!,
          );
        },
      ),
    );
  }
}

List<List<String>> list = [
  [
    'Tomato Sauce',
    'Mozzarella Cheese',
    'Ham Slices',
    'Pineapple Chunks',
    'Olive Oil',
  ],
  [
    'Tomato Sauce',
    'Mozzarella Cheese',
    'Bell Peppers',
    'Onions',
    'Mushrooms',
    'Olives',
  ],
  [
    'Tomato Sauce',
    'Mozzarella Cheese',
    'Pepperoni',
    'Sausage',
    'Bacon',
    'Ham',
  ],
  [
    'Tomato Sauce',
    'Mozzarella Cheese',
    'Cheddar Cheese',
    'Parmesan Cheese',
    'Blue Cheese',
  ],
  [
    'Buffalo Sauce',
    'Mozzarella Cheese',
    'Grilled Chicken',
    'Blue Cheese',
    'Green Onions',
  ],
  [
    'Tomato Sauce',
    'Mozzarella Cheese',
    'Mushrooms',
    'Spinach',
    'Garlic',
  ],
  [
    'Tomato Sauce',
    'Mozzarella Cheese',
    'Pepperoni',
    'Sausage',
    'Bell Peppers',
    'Onions',
    'Mushrooms',
    'Olives',
  ]
];

const pizzaList = [
  {
    'name': 'Margherita Pizza',
    'subtitle': 'Classic pizza with fresh basil, mozzarella, and tomatoes',
    'imageUrl': 'assets/pizza1.jpeg',
    'rating': '4.5',
    'steps':
        'Spread tomato sauce on the dough. Add mozzarella cheese. Bake in preheated oven at 220°C for 15 minutes. Garnish with fresh basil and a drizzle of olive oil. Season with salt and serve.',
    'duration': '25',
    'calories': '300',
    'servings': '4',
    'type': 'Vegetarian'
  },
  {
    'name': 'Pepperoni Pizza',
    'subtitle': 'Spicy pepperoni with mozzarella and tomato sauce',
    'imageUrl': 'assets/pizza2.jpeg',
    'rating': '4.8',
    'steps':
        'Spread tomato sauce on the dough. Add mozzarella cheese and pepperoni slices. Bake in preheated oven at 220°C for 15 minutes. Drizzle with olive oil and sprinkle with oregano. Serve hot.',
    'duration': '25',
    'calories': '350',
    'servings': '4',
    'type': 'Non-Vegetarian'
  },
  {
    'name': 'BBQ Chicken Pizza',
    'subtitle': 'Tangy BBQ sauce with grilled chicken and red onions',
    'imageUrl': 'assets/pizza3.jpeg',
    'rating': '4.7',
    'steps':
        'Spread BBQ sauce on the dough. Add mozzarella cheese, grilled chicken, and red onions. Bake in preheated oven at 220°C for 15 minutes. Garnish with cilantro and serve.',
    'duration': '30',
    'calories': '400',
    'servings': '4',
    'type': 'Non-Vegetarian'
  },
  {
    'name': 'Hawaiian Pizza',
    'subtitle': 'Sweet pineapple and ham with mozzarella',
    'imageUrl': 'assets/pizza4.jpg',
    'rating': '4.6',
    'ingredients':
        'Tomato Sauce, Mozzarella Cheese, Ham Slices, Pineapple Chunks, Olive Oil',
    'steps':
        'Spread tomato sauce on the dough. Add mozzarella cheese, ham slices, and pineapple chunks. Bake in preheated oven at 220°C for 15 minutes. Drizzle with olive oil and serve.',
    'duration': '25',
    'calories': '380',
    'servings': '4',
    'type': 'Non-Vegetarian'
  },
  {
    'name': 'Veggie Pizza',
    'subtitle': 'Loaded with fresh vegetables and mozzarella cheese',
    'imageUrl': 'assets/pizza5.jpeg',
    'rating': '4.5',
    'ingredients':
        'Tomato Sauce, Mozzarella Cheese, Bell Peppers, Onions, Mushrooms, Olives',
    'steps':
        'Spread tomato sauce on the dough. Add mozzarella cheese and mixed vegetables. Bake in preheated oven at 220°C for 15 minutes. Drizzle with olive oil and serve.',
    'duration': '25',
    'calories': '320',
    'servings': '4',
    'type': 'Vegetarian'
  },
  {
    'name': 'Meat Lovers Pizza',
    'subtitle': 'Packed with pepperoni, sausage, bacon, and ham',
    'imageUrl': 'assets/pizza6.jpeg',
    'rating': '4.9',
    'ingredients':
        'Tomato Sauce, Mozzarella Cheese, Pepperoni, Sausage, Bacon, Ham',
    'steps':
        'Spread tomato sauce on the dough. Add mozzarella cheese and various meats. Bake in preheated oven at 220°C for 15 minutes. Serve hot.',
    'duration': '30',
    'calories': '450',
    'servings': '4',
    'type': 'Non-Vegetarian'
  },
  {
    'name': 'Four Cheese Pizza',
    'subtitle':
        'A rich blend of mozzarella, cheddar, Parmesan, and blue cheese',
    'imageUrl': 'assets/pizza7.jpeg',
    'rating': '4.8',
    'ingredients':
        'Tomato Sauce, Mozzarella Cheese, Cheddar Cheese, Parmesan Cheese, Blue Cheese',
    'steps':
        'Spread tomato sauce on the dough. Add mozzarella, cheddar, Parmesan, and blue cheese. Bake in preheated oven at 220°C for 15 minutes. Serve hot.',
    'duration': '25',
    'calories': '400',
    'servings': '4',
    'type': 'Vegetarian'
  },
  {
    'name': 'Buffalo Chicken Pizza',
    'subtitle': 'Spicy buffalo sauce with chicken and blue cheese',
    'imageUrl': 'assets/pizza8.jpeg',
    'rating': '4.7',
    'ingredients':
        'Buffalo Sauce, Mozzarella Cheese, Grilled Chicken, Blue Cheese, Green Onions',
    'steps':
        'Spread buffalo sauce on the dough. Add mozzarella cheese, grilled chicken, and blue cheese. Bake in preheated oven at 220°C for 15 minutes. Garnish with green onions and serve.',
    'duration': '30',
    'calories': '420',
    'servings': '4',
    'type': 'Non-Vegetarian'
  },
  {
    'name': 'Mushroom and Spinach Pizza',
    'subtitle': 'Savory mushrooms and spinach with garlic',
    'imageUrl': 'assets/pizza9.jpeg',
    'rating': '4.6',
    'ingredients':
        'Tomato Sauce, Mozzarella Cheese, Mushrooms, Spinach, Garlic',
    'steps':
        'Spread tomato sauce on the dough. Add mozzarella cheese, mushrooms, and spinach. Bake in preheated oven at 220°C for 15 minutes. Garnish with garlic and serve.',
    'duration': '25',
    'calories': '310',
    'servings': '4',
    'type': 'Vegetarian'
  },
  {
    'name': 'Supreme Pizza',
    'subtitle': 'Everything on it: pepperoni, sausage, veggies, and more',
    'imageUrl': 'assets/pizza10.jpeg',
    'rating': '4.9',
    'ingredients':
        'Tomato Sauce, Mozzarella Cheese, Pepperoni, Sausage, Bell Peppers, Onions, Mushrooms, Olives',
    'steps':
        'Spread tomato sauce on the dough. Add mozzarella cheese, meats, and mixed vegetables. Bake in preheated oven at 220°C for 15 minutes. Serve hot.',
    'duration': '30',
    'calories': '450',
    'servings': '4',
    'type': 'Non-Vegetarian'
  },
];
