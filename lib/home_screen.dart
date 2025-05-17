import 'package:flutter/material.dart';
import 'package:thy_entry_screen/widgets/background_view.dart';
import 'package:thy_entry_screen/widgets/custom_button.dart';
import 'package:thy_entry_screen/widgets/custom_top_listview.dart';
import 'package:thy_entry_screen/widgets/welcome_card_view.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Image.asset("assets/thylogo.png", height: 24),
        leading: Icon(Icons.menu, color: Colors.white),
        backgroundColor: Colors.red,
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.notifications),
            color: Colors.white,
          ),
        ],
      ),
      body: Column(
        children: [
          CustomTopListview(),
          Expanded(
            child: Stack(
              children: [
                BackgroundView(),
                WelcomeCardView(),
                Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CustomButton(
                        labelText: "Book a flight",
                        onClicked: () {},
                      ),
                      SizedBox(height: 8),
                      CustomButton(labelText: "Check-in", onClicked: () {}),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
