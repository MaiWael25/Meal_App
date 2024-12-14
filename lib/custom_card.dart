import 'package:flutter/material.dart';

class CustomCard extends StatelessWidget {
  const CustomCard({super.key,
  });

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
              'assets/download.jpg',
              height: 200,
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
            child:const Column(
              children: [
                SizedBox(height:10),
                Text(
                  'Humburger',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height:13),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.access_time,color: Colors.white,),
                    SizedBox(width: 5),
                    Text('45 min', style:  TextStyle(color: Colors.white)),
                    SizedBox(width: 5),
                    Icon(Icons.assignment_turned_in, color: Colors.white, size: 16),
                    SizedBox(width: 5),
                    Text('simple', style:  TextStyle(color: Colors.white)),
                    SizedBox(width: 5),
                    Icon(Icons.attach_money, color: Colors.white, size: 16),
                    SizedBox(width: 5),
                    Text('Pricy', style:   TextStyle(color: Colors.white)),
                  ],
                ),
                SizedBox(height:10),
              ],
            ),
          ),
        )
      ],
    );
  }
}