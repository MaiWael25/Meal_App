import 'package:flutter/material.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key, required this.name});
  final String name;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          UpperTextHomeScreen(name: name),

        ],
      ),
    );
  }
}

class UpperTextHomeScreen extends StatelessWidget {
  const UpperTextHomeScreen({
    super.key,
    required this.name,
  });

  final String name;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(height: 50,),
        Text(
          "Hello,$name !",
          style: const TextStyle(color: Colors.grey, fontSize: 15),
        ),
        const Text(
          "Make your own food, ",
          style: TextStyle(color: Colors.black, fontSize: 20),
        ),
        const Row(
          children: [
            Text(
              "stay at",
              style: TextStyle(color: Colors.black, fontSize: 20),
            ),
            Text(
              " home",
              style: TextStyle(
                color: Color(0xfff7af65),
                fontSize: 20,
              ),
            )
          ],
        ),
      ],
    );
  }
}
