import 'package:flutter/material.dart';
import 'package:meal_app/details_view.dart';
import 'package:meal_app/dummy_data.dart';
import 'package:meal_app/home/category.dart';
import 'package:meal_app/home/category_card.dart';
import 'package:meal_app/home/list_item_home_screen.dart';
import 'package:meal_app/home/search_bar_home_screen.dart';
import 'package:meal_app/home/upper_text_home_screen.dart';
import 'package:meal_app/homepage.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key, required this.name});
  final String name;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
          child: Column(
            children: [
              SizedBox(height: 10,),
              UpperTextHomeScreen(name: name),
              const SizedBox(
                height: 20,
              ),
              const SearchBarHomeScreen(),
              SizedBox(
                height: 100,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: categoryListImage.length,
                  itemBuilder: (context, index) => Padding(
                    padding: const EdgeInsets.only(top: 20, left: 5, right: 5),
                    child: Column(
                      children: [
                        Container(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 8, vertical: 10),
                          decoration: BoxDecoration(
                            color: const Color(0xfff7af65),
                            borderRadius: BorderRadius.circular(50),
                          ),
                          child: ListItemHomeScreen(
                            image: categoryListImage[index],
                            text: categoryListTitle[index],
                            onTap: () {
                              Navigator.push(context, MaterialPageRoute(builder: (context) =>const HomePage() ,));
                            },
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
              const Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Popular Recipes',
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              GridView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  childAspectRatio: 9 / 15,
                  crossAxisSpacing: 15,
                ),
                itemCount: dummyMeals.length,
                itemBuilder: (context, index) {
                  return CategoryCard(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => DetailsView(
                            name: dummyMeals[index].title,
                            img: dummyMeals[index].imageUrl,
                            mins: dummyMeals[index].duration,
                            servings: dummyMeals[index].servings,
                            cal: dummyMeals[index].calories,
                            type: dummyMeals[index].complexity.name,
                            ing: dummyMeals[index].ingredients,
                            description: dummyMeals[index].steps,
                          ),
                        ),
                      );
                    },
                    category: Category(
                      image: dummyMeals[index].imageUrl,
                      label: dummyMeals[index].title,
                      subtitle: dummyMeals[index].subtitle,
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}

const categoryListImage = [
  "assets/allIcon.png",
  "assets/pizzaIcon.png",
  "assets/burgerIcon.png",
  "assets/italianIcon.png",
];
const categoryListTitle = ["All", "Pizza", "Homburger", "Italian"];
