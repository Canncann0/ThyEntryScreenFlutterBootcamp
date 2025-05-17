import 'package:flutter/material.dart';
import 'package:thy_entry_screen/widgets/top_listview_item.dart';

class CustomTopListview extends StatelessWidget {
  final List<String> labelTexts = [
    "Holidays",
    "New Routes ✈️",
    "Campaings",
    "News",
    "Miles&Smiles",
    "Blog",
    "Additional se...",
    "Fly Right",
  ];

  CustomTopListview({super.key});

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.sizeOf(context).height;
    return Container(
      decoration: BoxDecoration(color: Colors.red),
      height: screenHeight * 0.18,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: labelTexts.length,
        itemBuilder: (context, count) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [TopListviewItem(labelText: labelTexts[count])],
            ),
          );
        },
      ),
    );
  }
}
