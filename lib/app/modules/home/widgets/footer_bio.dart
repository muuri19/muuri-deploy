import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class FooterBio extends StatelessWidget {
  const FooterBio({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      child: Center(
        child: Text(
          "Made with 🚀 Muhammad Sadri",
          style: TextStyle(
              fontFamily: GoogleFonts.robotoMono().fontFamily,
              color: Colors.white,
              fontSize: 14,
              fontWeight: FontWeight.w400),
        ),
      ),
    );
  }
}
