import 'package:flutter/material.dart';
import 'package:flutter_catalog/Screens/HomeCategory/widgets/stateless/text.dart';
import 'package:get/get.dart';
import '../../../../../Customs/appbar.dart';
import '../../../Topics /topicCard.dart';
import 'icon.dart';

class stless extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
          title:
          'Stateless Widgets'
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Topics Section
            const Text(
              'Stateless Widgets',
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 5),
            const Text(
              'Widgets that do not depend on any mutable state and do not change over time. Their appearance is determined when they are created and they remain the same throughout their lifetime.',
              style: TextStyle(fontSize: 15, fontWeight: FontWeight.normal),
            ),
            const SizedBox(height: 10),
            const Text(
              'Topics',
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            Expanded(
              child: ListView(
                children: [
                  TopicCard(
                    title: '1. Texts',
                    onTap: () => Get.to(() => TextPreviewPage()), // Navigate to Introduction Page
                  ),
                  TopicCard(
                    title: '2. Icons',
                    onTap: () => Get.to(() => CodePreviewPage()), // Navigate to Introduction Page
                  ),
                  TopicCard(
                    title: '3. Buttons',
                    onTap: () => Get.to(() => CodePreviewPage()), // Navigate to Introduction Page
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

