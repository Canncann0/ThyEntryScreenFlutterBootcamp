import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TopListviewItem extends StatelessWidget {
  final String labelText;

  const TopListviewItem({super.key, required this.labelText});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Stack(
          alignment: Alignment.center,
          children: [
            Container(
              width: 72,
              height: 72,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(color: Colors.white, width: 2),
              ),
            ),
            Container(
              width: 64,
              height: 64,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.white,
              ),
            ),
          ],
        ),
        SizedBox(height: 8),
        Text(
          labelText,
          style: GoogleFonts.poppins(fontSize: 12, color: Colors.white),
        ),
      ],
    );
  }
}
