import 'package:flutter/material.dart';
import 'package:flutter_catalog/Screens/HomeCategory/widgets/stateful.dart';
import 'package:flutter_catalog/Screens/HomeCategory/widgets/stateless/stateless.dart';
import 'package:get/get.dart';
import '../../../../Customs/appbar.dart';
import '../../Topics /topicCard.dart';

class WidgetsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
          title:
          'Flutter Widgets'
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Topics Section
            const Text(
              'Widgets',
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            const Text(
              'In Flutter, widgets are the core building blocks of the user interface (UI). '
                  'They define how the UI elements should look and behave. '
                  'There are several categories of widgets in Flutter, '
                  'each serving a specific purpose. The two primary categories of widgets are '
                  'Stateless and Stateful, but there are many more specialized types of widgets.',
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
                    title: '1. Stateless Widgets',
                    onTap: () => Get.to(() => stless()), // Navigate to Introduction Page
                  ),
                  TopicCard(
                    title: '2. Stateful Widgets',
                    onTap: () => Get.to(() => statful()), // Navigate to Introduction Page
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

