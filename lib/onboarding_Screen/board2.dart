import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class OnboardingPageTwo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(  // Wrap the Column with SingleChildScrollView
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              // Flutter logo at the top
              Container(
                width: 100,
                height: 200,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.blueAccent,
                ),
                child: Icon(
                  Icons.flutter_dash, // Use flutter_dash as a placeholder icon for Flutter logo
                  color: Colors.white,
                  size: 60,
                ),
              ),
              SizedBox(height: .5),

              // Main Title
              Text(
                'Discover',
                style: GoogleFonts.aBeeZee(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 2),

              // Instruction Text
              Text(
                '(Please screenshot this for future reference)',
                style: GoogleFonts.roboto(
                  fontSize: 14,
                  fontStyle: FontStyle.italic,
                ),
              ),
              SizedBox(height: 20),

              // Section 1: What is Flutter?
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'What is Flutter?',
                      style: GoogleFonts.roboto(
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    SizedBox(height: 8),
                    Text(
                      'Flutter is an open-source UI software development toolkit by Google. It enables developers to create natively compiled applications for mobile, web, and desktop from a single codebase.',
                      textAlign: TextAlign.left,
                      style: GoogleFonts.roboto(fontSize: 14),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20),

              // Section 2: What is Dart?
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'What is Dart?',
                      style: GoogleFonts.roboto(
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    SizedBox(height: 8),
                    Text(
                      'Dart is a client-optimized programming language created by Google. It is optimized for building fast apps on any platform, with a focus on performance and usability, and is the primary language for Flutter development.',
                      textAlign: TextAlign.left,
                      style: GoogleFonts.roboto(fontSize: 14),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20),

              // Section 3: Why is Flutter Special?
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Why is Flutter Special?',
                      style: GoogleFonts.roboto(
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    SizedBox(height: 8),
                    Text(
                      'Flutter offers a unique "write once, run anywhere" experience, enabling faster development, a rich set of pre-built widgets, a highly flexible UI, and outstanding performance across platforms. It’s a game-changer for developers looking to create seamless, high-quality user experiences.',
                      textAlign: TextAlign.left,
                      style: GoogleFonts.roboto(fontSize: 14),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20),

              // Section 4: How does Flutter achieve high performance?
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'How does Flutter achieve high performance?',
                      style: GoogleFonts.roboto(
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    SizedBox(height: 8),
                    Text(
                      'Flutter achieves high performance through its direct compilation to native ARM code, which eliminates performance bottlenecks. The framework uses a rendering engine called Skia, which allows for smooth animations and complex UIs, and it does not rely on JavaScript bridges like other frameworks, resulting in faster execution times.',
                      textAlign: TextAlign.left,
                      style: GoogleFonts.roboto(fontSize: 14),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
