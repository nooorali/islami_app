import 'package:flutter/material.dart';

class RadioView extends StatelessWidget {
  const RadioView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Image.asset("assets/images/radio_image.png"),
          Text("إذاعة القرآن الكريم"),
          Image.asset("assets/images/Group 5.png"),
        ],
      ),
    );
  }
}
