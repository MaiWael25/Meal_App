import 'package:flutter/material.dart';

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
          style: const TextStyle(color: Colors.grey, fontSize: 15, fontWeight: FontWeight.bold),
        ),
        const Text(
          "Make your own food, ",
          style: TextStyle(color: Colors.black, fontSize: 20 , fontWeight: FontWeight.bold ,),
        ),
        const Row(
          children: [
            Text(
              "stay at",
              style: TextStyle(color: Colors.black, fontSize: 20, fontWeight: FontWeight.bold),
            ),
            Text(
              " home",
              style: TextStyle(
                color: Color(0xfff7af65),
                fontSize: 20,
                fontWeight: FontWeight.bold
              ),
            )
          ],
        ),
      ],
    );
  }
}
