import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import '../HomeCategory/CategoryCard.dart';
import '../HomeCategory/layouts.dart';
import '../HomeCategory/widgets/widgets.dart';
import '../Topics /advdart/selection.dart';
import '../Topics /basicOfDart/basic.dart';
import '../Topics /getStartedwithflutter/runflutter.dart';
import '../Topics /installFlutter/selection.dart';
import '../Topics /topicCard.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Flutter Catalog',
          style: GoogleFonts.lato(),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Search Bar
            TextField(
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.search),
                hintText: 'Search Flutter topics...',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
              ),
            ),
            const SizedBox(height: 20),

            // Category Section
            const Text(
              'Categories',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            Container(
              height: 100,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  CategoryCard(
                    title: 'Widgets',
                    icon: Icons.widgets,
                    onTap: () => Get.to(() => WidgetsPage()),
                  ),
                  CategoryCard(
                    title: 'Layouts',
                    icon: Icons.view_module,
                    onTap: () => Get.to(() => const LayoutsPage()),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),

            // Topics Section
            const Text(
              'Topics',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            Expanded(
              child: ListView(
                children: [
                  TopicCard(
                    title: '1. How You can Install Flutter',

                    onTap: () => Get.to(() => SelectPlatformPage()), // Navigate to Introduction Page
                  ),
                  TopicCard(
                    title: '2. Dart Introduction',
                    onTap: () => Get.to(() => BasicOfDart()), // Navigate to State Management Page
                  ),
                  TopicCard(
                    title: '3. Basic Of Dart Programming',
                    onTap: () => Get.to(() => SelectionScreen()),
                  ),
                  TopicCard(
                    title: '4. Get Started With Flutter',
                    onTap: () => Get.to(() => GetStartedWithFlutter()),
                  ),
                  TopicCard(
                    title: '5. Flutter Widgets',
                    onTap: () => Get.to(() => WidgetsPage()),
                  ),
                  TopicCard(
                    title: '6. Basic Of Dart Programming',
                    onTap: () => Get.to(() => SelectionScreen()),
                  ),

                  // Add more topics as needed
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// Custom Widget for Topic Card

