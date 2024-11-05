import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class OnboardingPageThree extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(40.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              'Get Started',
              style: GoogleFonts.poppins(
                fontSize: 28,
                fontWeight: FontWeight.bold,
                color: Colors.blueAccent,
              ),
            ),
            SizedBox(height: 10),
            Text(
              'Let\'s get started!',
              textAlign: TextAlign.center,
              style: GoogleFonts.roboto(fontSize: 16),
            ),
            SizedBox(height: 20),

            // Roadmap Section
            Text(
              'Your Flutter Roadmap',
              style: GoogleFonts.poppins(
                fontSize: 22,
                fontWeight: FontWeight.bold,
                color: Colors.blue,
              ),
            ),
            SizedBox(height: 10),

            // Roadmap Steps
            Expanded(
              child: ListView(
                children: [
                  _buildRoadmapStep('1. Learn Dart Basics', 'Familiarize yourself with Dart language fundamentals and syntax.'),
                  _buildRoadmapStep('2. Understand Flutter Widgets', 'Explore various widgets available and how to create layouts.'),
                  _buildRoadmapStep('3. State Management Techniques', 'Learn about managing state in your applications.'),
                  _buildRoadmapStep('4. Build Responsive UI', 'Create layouts that adapt to different screen sizes and orientations.'),
                  _buildRoadmapStep('5. Integrate APIs and Services', 'Connect your app to external data sources and services.'),
                  _buildRoadmapStep('6. Deploy Your Application', 'Learn how to publish your app to app stores.'),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  // Helper method to create roadmap steps with better visuals
  Widget _buildRoadmapStep(String title, String description) {
    return Card(
      elevation: 4,
      margin: EdgeInsets.symmetric(vertical: 8.0),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: GoogleFonts.poppins(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Colors.blueAccent,
              ),
            ),
            SizedBox(height: 6),
            Text(
              description,
              style: GoogleFonts.roboto(fontSize: 14),
            ),
          ],
        ),
      ),
    );
  }
}
