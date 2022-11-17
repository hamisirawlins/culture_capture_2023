import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'background.dart';

class SplashBody extends StatelessWidget {
  const SplashBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SplashBackground(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            "Culture Capture",
            style: GoogleFonts.cormorant(
              fontSize: 40,
              fontWeight: FontWeight.bold,
              fontStyle: FontStyle.italic,
            ),
          )
        ],
      ),
    );
  }
}
