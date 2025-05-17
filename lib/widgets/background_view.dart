import 'package:flutter/material.dart';

class BackgroundView extends StatelessWidget {
  const BackgroundView({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage("assets/bg2.png"),
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
