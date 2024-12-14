import 'package:flutter/material.dart';
import 'package:meal_app/custom_card.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: const Color(0xfff7af65),
          title: const Text(" Quic & Easy"),
          leading: const Icon(Icons.arrow_back),
          elevation: 2,
        ),
        body:ListView.builder(
            itemCount: 6,
            itemBuilder: (context, index){
              return const CustomCard();
            }
        )
    );
  }
}