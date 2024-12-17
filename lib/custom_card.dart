import 'package:flutter/material.dart';
import 'package:meal_app/meal.dart';

class CustomCard extends StatelessWidget {
  const CustomCard({super.key, required this.meal,
  });
  final Meal meal; 
  @override
  Widget build(BuildContext context) {
    return  Stack(
      children:[
        Card(
          elevation: 4,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16),
          ),
          child:ClipRRect(
            borderRadius: BorderRadius.circular(16),
            child: Image.asset(
              meal.imageUrl,
              height: 250,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
          ),
        ),
        Positioned(
          bottom: 4,
          left: 5,
          right: 5,
          child: Container(
            decoration: BoxDecoration(
              borderRadius: const BorderRadius.only(bottomLeft: Radius.circular(16),bottomRight: Radius.circular(16)),
              color: Colors.black.withOpacity(.4),
            ),
            child:Column(
              children: [
                const SizedBox(height:10),
                Text(
                  meal.title,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height:13),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Icon(Icons.access_time,color: Colors.white,),
                    const SizedBox(width: 5),
                    Text("${meal.duration} min ", style:  const TextStyle(color: Colors.white)),
                    const SizedBox(width: 5),
                    const Icon(Icons.assignment_turned_in, color: Colors.white, size: 16),
                    const SizedBox(width: 5),
                    Text(meal.complexity.name, style:  const TextStyle(color: Colors.white)),
                    const SizedBox(width: 5),
                    const Icon(Icons.attach_money, color: Colors.white, size: 16),
                    const SizedBox(width: 5),
                     Text(meal.affordability.name, style:   const TextStyle(color: Colors.white)),
                  ],
                ),
                const SizedBox(height:10),
              ],
            ),
          ),
        )
      ],
    );
  }
}