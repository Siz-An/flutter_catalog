import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TopicCard extends StatelessWidget {
  final String title;
  final VoidCallback onTap;

  const TopicCard({required this.title, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      margin: const EdgeInsets.symmetric(vertical: 8.0),
      child: ListTile(
        title: Text(title, style: GoogleFonts.aBeeZee(),),
        onTap: onTap,
      ),
    );
  }
}