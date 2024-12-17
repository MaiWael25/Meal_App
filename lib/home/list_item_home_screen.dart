import 'package:flutter/material.dart';

class ListItemHomeScreen extends StatelessWidget {
  const ListItemHomeScreen({
    super.key,
    required this.image,
    required this.text, this.onTap,
  });
  final String image;
  final String text;
  final void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return  GestureDetector(
      onTap: onTap,
      child: Row(
        children: [
          Image(
            image: AssetImage(
              image,
            ),
            height: 35,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(text, style: const TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.bold,
            ),),
          )
        ],
      ),
    );
  }
}
