import 'package:flutter/material.dart';
import 'package:flutter_catalog/Screens/Topics%20/installFlutter/codessnippet/codeDisplayWindows.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../../Customs/appbar.dart';

class InstallFlutter extends StatelessWidget {
  const InstallFlutter({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title:'Install Flutter on Windows',
        icon: Icons.code,
        onIconPressed: () {
          // Navigate to the OtherScreen when the icon is pressed using GetX
          Get.to(() => CodeDisplayPageWindows());
        },

      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'How to Install Flutter on Windows',
              style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 16),
            const Text(
              'Follow these steps to install Flutter on your Windows machine:',
              style: TextStyle(fontSize: 18, color: Colors.grey),
            ),
            const SizedBox(height: 16),
            _buildStepCard(
              context,
              '1. Download the Flutter SDK',
              'Visit the Flutter SDK releases page to download the latest stable version:',
              'https://flutter-ko.dev/get-started/install/windows', // Pass URL to display
            ),
            _buildStepCard(
              context,
              '2. Extract the ZIP file',
              'Extract the downloaded ZIP file to a suitable location on your machine, for example, `C:\\flutter`.',
              '', // No URL for this step
            ),
            _buildStepCard(
              context,
              '3. Update your Path variable',
              'Add the Flutter bin directory to your PATH:\n'
                  'Right-click "This PC" or "My Computer" and select "Properties".\n'
                  'Then click on "Advanced system settings", then "Environment Variables".\n'
                  'Under "System variables", find the PATH variable and click "Edit".\n'
                  'Add the full path to `flutter\\bin` using a semicolon as a separator from other values.',
              '', // No URL for this step
            ),
            _buildStepCard(
              context,
              '4. Run Flutter Doctor',
              'Open a new command prompt or PowerShell window and run the following command:\n'
                  '```\n'
                  'flutter doctor\n'
                  '```\n'
                  'This command checks your environment and displays a report of the status of your Flutter installation.',
              '', // No URL for this step
            ),
            _buildStepCard(
              context,
              '5. Install any missing dependencies',
              'Follow the instructions provided by `flutter doctor` to install any missing dependencies.',
              '', // No URL for this step
            ),
            _buildStepCard(
              context,
              '6. Verify your installation',
              'Run the following command to verify that Flutter is installed correctly:\n'
                  '```\n'
                  'flutter --version\n'
                  '```\n'
                  'This should display the Flutter version that you have installed.',
              '', // No URL for this step
            ),
            const SizedBox(height: 16),
            GestureDetector(
              onTap: () => _launchURL('https://flutter.dev/docs'),
              child: const Text(
                'For more details, visit the official Flutter installation guide:\n'
                    'https://flutter.dev/docs',
                style: TextStyle(fontSize: 16, color: Colors.blue, decoration: TextDecoration.underline),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildStepCard(BuildContext context, String title, String description, String url) {
    return Card(
      margin: const EdgeInsets.symmetric(vertical: 8.0),
      elevation: 4,
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),
            Text(
              description,
              style: const TextStyle(fontSize: 16),
            ),
            if (url.isNotEmpty) // Only show the link if the URL is not empty
              const SizedBox(height: 8),
            if (url.isNotEmpty) // Only show the link if the URL is not empty
              GestureDetector(
                onTap: () => _launchURL(url), // Launch URL on link tap
                child: Text(
                  url, // Display the URL
                  style: const TextStyle(
                    fontSize: 16,
                    color: Colors.blue,
                    decoration: TextDecoration.underline,
                  ),
                ),
              ),
          ],
        ),
      ),
    );
  }

  Future<void> _launchURL(String url) async {
    try {
      await launch(url); // Call the launch function directly
    } catch (e) {
      print('Could not launch $url: $e');
    }
  }
}
