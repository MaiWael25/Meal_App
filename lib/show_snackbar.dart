import 'package:flutter/material.dart';

void showSnackBar(BuildContext context,
    {required String message, required String title}) {
  ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(
      padding: EdgeInsets.zero,
      backgroundColor: const Color.fromARGB(255, 240, 188, 132),
      behavior: SnackBarBehavior.floating,
      content: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(title),
            Text(message),
          ],
        ),
      ),
    ),
  );
}
