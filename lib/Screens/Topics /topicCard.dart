import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TopicCard extends StatelessWidget {
  final String title;
  final VoidCallback onTap;
  final double fontSize; // Add a font size parameter

  const TopicCard({
    required this.title,
    required this.onTap,
    this.fontSize = 16.0, // Default font size if not provided
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      margin: const EdgeInsets.symmetric(vertical: 8.0),
      child: ListTile(
        title: Text(
          title,
          style: GoogleFonts.aBeeZee(fontSize: fontSize, fontWeight: FontWeight.w600), // Set font size here
        ),
        onTap: onTap,
      ),
    );
  }
}
