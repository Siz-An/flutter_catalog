import 'package:flutter/material.dart';
import 'package:flutter_catalog/Screens/Topics%20/advdart/variables.dart';
import 'package:get/get.dart';
import '../../../Customs/appbar.dart';
import '../topicCard.dart';
import 'Asynchronous.dart';
import 'OOPindart.dart';
import 'collection.dart';
import 'file_handling.dart';
import 'functions.dart';
import 'loops.dart';
import 'nullSaftey.dart';

class SelectionScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title:
          'Select a Topic'
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
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
                    title: '1. Variables',
                    onTap: () => Get.to(() => variables()), // Navigate to Introduction Page
                  ),
                  TopicCard(
                    title: '2. Loops and Dart Conditions',
                    onTap: () => Get.to(() => loops()), // Navigate to Introduction Page
                  ),
                  TopicCard(
                    title: '3. Function in dart',
                    onTap: () => Get.to(() => functions()), // Navigate to State Management Page
                  ),
                  TopicCard(
                    title: '4. Collection in dart',
                    onTap: () => Get.to(() => collection()), // Navigate to State Management Page
                  ),
                  TopicCard(
                    title: '5. File Handling in dart',
                    onTap: () => Get.to(() => fileHandling()), // Navigate to State Management Page
                  ),
                  TopicCard(
                    title: '6. OOP (Object Oriented Programming) in dart',
                    onTap: () => Get.to(() => OOP()), // Navigate to State Management Page
                  ),
                  TopicCard(
                    title: '7. Null-Saftey in dart',
                    onTap: () => Get.to(() => NullSafety()), // Navigate to State Management Page
                  ),
                  TopicCard(
                    title: '8. Asynchronous in dart',
                    onTap: () => Get.to(() => async()), // Navigate to State Management Page
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

