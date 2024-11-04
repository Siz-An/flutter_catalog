import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class OnboardingPageOne extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Welcome to Our App',
            style: GoogleFonts.aBeeZee(
              fontSize: 28,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 20),
          // Logo placeholder, replace with actual logo if available
          Container(
            width: 100,
            height: 100,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.blueAccent,
            ),
            child: Icon(
              Icons.flutter_dash,
              color: Colors.white,
              size: 60,
            ),
          ),
          SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Text(
              'FlutterCatalog helps you learn Flutter while coding! Discover and explore various components and features to enhance your skills.',
              textAlign: TextAlign.center,
              style: GoogleFonts.aBeeZee(
                fontSize: 16,
                fontWeight: FontWeight.normal,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
