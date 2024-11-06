import 'package:flutter/material.dart';
import 'package:flutter_syntax_view/flutter_syntax_view.dart';
import 'package:google_fonts/google_fonts.dart';

class CodeAndOutputPage extends StatelessWidget {
  final String code = '''import 'package:flutter/cupertino.dart';
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
}''';

  final String output = "TopicCard widget will display a card with a title that responds to user taps.";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Code and Output')),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          children: [
            // Left side: Code Display
            Expanded(
              flex: 1,
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.black12,
                ),
                child: Builder(
                  builder: (context) {
                    if (code.isNotEmpty) {
                      return SyntaxView(
                        code: code,
                        syntax: Syntax.DART,
                        withZoom: true,
                        fontSize: 14,
                        expanded: true,
                      );
                    } else {
                      return Center(child: Text("No code available", style: GoogleFonts.aBeeZee(fontSize: 14)));
                    }
                  },
                ),
              ),
            ),
            SizedBox(width: 16),
            // Right side: Output Display
            Expanded(
              flex: 1,
              child: Container(
                padding: EdgeInsets.all(16),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.grey[200],
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Output:', style: GoogleFonts.aBeeZee(fontSize: 16)),
                    SizedBox(height: 10),
                    Text(output, style: GoogleFonts.aBeeZee(fontSize: 14)),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
