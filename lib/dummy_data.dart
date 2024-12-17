import 'package:meal_app/meal.dart';

const dummyMeals = [
  Meal(
    id: 'm1',
    title: 'Spaghetti with Tomato Sauce',
    subtitle: 'Classic Italian Comfort Food',
    affordability: Affordability.affordable,
    complexity: Complexity.simple,
    imageUrl: "assets/spa.jpg",
    duration: 20,
    ingredients: [
      '4 Tomatoes',
      '1 Tablespoon of Olive Oil',
      '1 Onion',
      '250g Spaghetti',
      'Spices',
      'Cheese (optional)'
    ],
    steps: [
      'Cut the tomatoes and the onion into small pieces.',
      'Boil some water - add salt to it once it boils.',
      'Put the spaghetti into the boiling water - they should be done in about 10 to 12 minutes.',
      'In the meantime, heat up some olive oil and add the cut onion.',
      'After 2 minutes, add the tomato pieces, salt, pepper, and your other spices.',
      'The sauce will be done once the spaghetti are.',
      'Feel free to add some cheese on top of the finished dish.'
    ],
  ),
  Meal(
    id: 'm2',
    title: 'Toast Hawaii',
    subtitle: 'Tropical Twist on Classic Toast',
    affordability: Affordability.affordable,
    complexity: Complexity.simple,
    imageUrl: 'assets/toast.jpg',
    duration: 10,
    ingredients: [
      '1 Slice White Bread',
      '1 Slice Ham',
      '1 Slice Pineapple',
      '1-2 Slices of Cheese',
      'Butter'
    ],
    steps: [
      'Butter one side of the white bread.',
      'Layer ham, the pineapple, and cheese on the white bread.',
      'Bake the toast for around 10 minutes in the oven at 200°C.'
    ],
  ),
  Meal(
    id: 'm3',
    title: 'Classic Hamburger',
    subtitle: 'Juicy and Delicious',
    affordability: Affordability.pricey,
    complexity: Complexity.simple,
    imageUrl: 'assets/hamb.jpg',
    duration: 45,
    ingredients: [
      '300g Cattle Hack',
      '1 Tomato',
      '1 Cucumber',
      '1 Onion',
      'Ketchup',
      '2 Burger Buns'
    ],
    steps: [
      'Form 2 patties.',
      'Fry the patties for about 4 minutes on each side.',
      'Quickly fry the buns for about 1 minute on each side.',
      'Brush buns with ketchup.',
      'Serve burger with tomato, cucumber, and onion.'
    ],
  ),
  Meal(
    id: 'm4',
    title: 'Wiener Schnitzel',
    subtitle: 'Traditional Austrian Delight',
    affordability: Affordability.luxurious,
    complexity: Complexity.challenging,
    imageUrl: 'assets/wie.jpg',
    duration: 60,
    ingredients: [
      '8 Veal Cutlets',
      '4 Eggs',
      '200g Bread Crumbs',
      '100g Flour',
      '300ml Butter',
      '100g Vegetable Oil',
      'Salt',
      'Lemon Slices'
    ],
    steps: [
      'Tenderize the veal to about 2–4mm, and salt on both sides.',
      'On a flat plate, stir the eggs briefly with a fork.',
      'Lightly coat the cutlets in flour, then dip into the egg, and finally, coat in breadcrumbs.',
      'Heat the butter and oil in a large pan (allow the fat to get very hot) and fry the schnitzels until golden brown on both sides.',
      'Make sure to toss the pan regularly so that the schnitzels are surrounded by oil and the crumbing becomes ‘fluffy’.',
      'Remove, and drain on kitchen paper. Fry the parsley in the remaining oil and drain.',
      'Place the schnitzels on a warmed plate and serve garnished with parsley and slices of lemon.'
    ],
  ),
  Meal(
    id: 'm5',
    title: 'Salad with Smoked Salmon',
    subtitle: 'Fresh and Healthy',
    affordability: Affordability.luxurious,
    complexity: Complexity.simple,
    imageUrl: 'assets/salamon.jpg',
    duration: 15,
    ingredients: [
      'Arugula',
      'Lamb\'s Lettuce',
      'Parsley',
      'Fennel',
      '200g Smoked Salmon',
      'Mustard',
      'Balsamic Vinegar',
      'Olive Oil',
      'Salt and Pepper'
    ],
    steps: [
      'Wash and cut salad and herbs.',
      'Dice the salmon.',
      'Process mustard, vinegar, and olive oil into a dressing.',
      'Prepare the salad.',
      'Add salmon cubes and dressing.'
    ],
  ),
  Meal(
    id: 'm6',
    title: 'Delicious Orange Mousse',
    subtitle: 'A Citrusy Dessert Treat',
    affordability: Affordability.affordable,
    complexity: Complexity.hard,
    imageUrl: 'assets/orang.jpg',
    duration: 240,
    ingredients: [
      '4 Sheets of Gelatine',
      '150ml Orange Juice',
      '80g Sugar',
      '300g Yoghurt',
      '200g Cream',
      'Orange Peel',
    ],
    steps: [
      'Dissolve gelatine in a pot.',
      'Add orange juice and sugar.',
      'Take pot off the stove.',
      'Add 2 tablespoons of yoghurt.',
      'Stir gelatin under remaining yoghurt.',
      'Cool everything down in the refrigerator.',
      'Whip the cream and lift it under the orange mass.',
      'Cool down again for at least 4 hours.',
      'Serve with orange peel.'
    ],
  ),
  Meal(
    id: 'm7',
    title: 'Pancakes',
    subtitle: 'Fluffy Breakfast Favorite',
    affordability: Affordability.affordable,
    complexity: Complexity.simple,
    imageUrl: 'assets/pan.jpg',
    duration: 20,
    ingredients: [
      '1 1/2 Cups all-purpose Flour',
      '3 1/2 Teaspoons Baking Powder',
      '1 Teaspoon Salt',
      '1 Tablespoon White Sugar',
      '1 1/4 cups Milk',
      '1 Egg',
      '3 Tablespoons Butter, melted',
    ],
    steps: [
      'In a large bowl, sift together the flour, baking powder, salt and sugar.',
      'Make a well in the center and pour in the milk, egg and melted butter; mix until smooth.',
      'Heat a lightly oiled griddle or frying pan over medium-high heat.',
      'Pour or scoop the batter onto the griddle, using approximately 1/4 cup for each pancake. Brown on both sides and serve hot.'
    ],
  ),
  Meal(
    id: 'm8',
    title: 'Creamy Indian Chicken Curry',
    subtitle: 'Rich and Flavorful',
    affordability: Affordability.pricey,
    complexity: Complexity.challenging,
    imageUrl: 'assets/creamy.jpg',
    duration: 35,
    ingredients: [
      '4 Chicken Breasts',
      '1 Onion',
      '2 Cloves of Garlic',
      '1 Piece of Ginger',
      '4 Tablespoons Almonds',
      '1 Teaspoon Cayenne Pepper',
      '500ml Coconut Milk',
    ],
    steps: [
      'Slice and fry the chicken breast.',
      'Process onion, garlic, and ginger into a paste and sauté everything.',
      'Add spices and stir fry.',
      'Add chicken breast + 250ml of water and cook everything for 10 minutes.',
      'Add coconut milk.',
      'Serve with rice.'
    ],
  ),
  Meal(
    subtitle: 'Decadent and Delightful',
    id: 'm10',
    title: 'Asparagus Salad with Cherry Tomatoes',
    affordability: Affordability.luxurious,
    complexity: Complexity.simple,
    imageUrl: 'assets/aspa.jpg',
    duration: 30,
    ingredients: [
      'White and Green Asparagus',
      '30g Pine Nuts',
      '300g Cherry Tomatoes',
      'Salad',
      'Salt, Pepper and Olive Oil'
    ],
    steps: [
      'Wash, peel and cut the asparagus',
      'Cook in salted water',
      'Salt and pepper the asparagus',
      'Roast the pine nuts',
      'Halve the tomatoes',
      'Mix with asparagus, salad and dressing',
      'Serve with Baguette'
    ],
  ),
];
