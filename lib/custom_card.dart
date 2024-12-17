import 'package:flutter/material.dart';
import 'package:meal_app/meal.dart';

class CustomCard extends StatelessWidget {
  const CustomCard({
    super.key, required this.img, required this.name, required this.subtitle,
  });
  final String img;
  final String name;
  final String subtitle;
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Card(
          elevation: 4,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16),
          ),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(16),
            child: Image.asset(
              img,
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
              borderRadius: const BorderRadius.only(
                  bottomLeft: Radius.circular(16),
                  bottomRight: Radius.circular(16)),
              color: Colors.black.withOpacity(.4),
            ),
            child: Column(
              children: [
                const SizedBox(height: 10),
                Text(
                  name,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 13),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Icon(
                      Icons.access_time,
                      color: Colors.white,
                    ),
                    const SizedBox(width: 5),
                    
                  ],
                ),
                const SizedBox(height: 10),
              ],
            ),
          ),
        )
      ],
    );
  }
}
