enum Complexity {
  simple,
  challenging,
  hard,
}

enum Affordability {
  affordable,
  pricey,
  luxurious,
}

class Meal {
  const Meal({
    required this.id,
    required this.title,
    required this.imageUrl,
    required this.ingredients,
    required this.steps,
    required this.duration,
    required this.complexity,
    required this.affordability,
    required this.subtitle,
    required this.calories,
    required this.servings,
    required this.rating,
  });

  final String id;
  final String title;
  final String imageUrl;
  final List<String> ingredients;
  final String steps;
  final int duration;
  final Complexity complexity;
  final Affordability affordability;
  final String subtitle;
  final int calories;
  final int servings;
  final double rating;
}
