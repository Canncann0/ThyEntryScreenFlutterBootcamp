import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomButton extends StatelessWidget {
  final String labelText;
  final VoidCallback onClicked;

  const CustomButton({
    super.key,
    required this.labelText,
    required this.onClicked,
  });

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {
        onClicked;
      },
      style: TextButton.styleFrom(
        backgroundColor: Colors.red,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
        minimumSize: Size(180, 64), // Kare buton (64x64)
      ),
      child: Text(
        labelText,
        style: GoogleFonts.poppins(
          fontSize: 16,
          color: Colors.white,
          fontWeight: FontWeight.w500,
        ),
      ),
    );
  }
}
