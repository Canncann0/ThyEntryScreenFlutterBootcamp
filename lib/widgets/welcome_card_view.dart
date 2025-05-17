import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class WelcomeCardView extends StatelessWidget {
  const WelcomeCardView({super.key});

  @override
  Widget build(BuildContext context) {
    //double screenWidth = MediaQuery.sizeOf(context).width;
    double screenHeight = MediaQuery.sizeOf(context).height;

    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Container(
        height: screenHeight * 0.2,
        decoration: BoxDecoration(
          color: Color(0XFF232B38),
          borderRadius: BorderRadius.all(Radius.circular(10)),
        ),

        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 24, top: 24),
                  child: Text(
                    "Hello",
                    style: GoogleFonts.poppins(
                      fontSize: 24,
                      color: Colors.white,
                    ),
                  ),
                ),
                Spacer(),
                Padding(
                  padding: const EdgeInsets.only(left: 24, bottom: 24),
                  child: Text(
                    "Buy Ticket for your Kayseri - İzmir\nsearch now",

                    maxLines: 2,
                    style: GoogleFonts.poppins(
                      fontSize: 16,
                      color: Colors.white,
                    ),
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
              ],
            ),
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.chevron_right_outlined),
              color: Colors.white,
            ),
          ],
        ),
      ),
    );
  }
}
