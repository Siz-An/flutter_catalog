import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:url_launcher/url_launcher.dart';
import '../../../Customs/appbar.dart';
import 'codessnippet/codeDisplayMAcos.dart';

class InstallFlutterMacOS extends StatelessWidget {
  const InstallFlutterMacOS({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(title: 'Install Flutter on macOS',
      icon: Icons.code,
        onIconPressed: () {
          // Navigate to the OtherScreen when the icon is pressed using GetX
          Get.to(() => CodeDisplayPage());
        },), // Use the custom AppBar here
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'How to Install Flutter on macOS',
              style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 16),
            const Text(
              'Follow these steps to install Flutter on your macOS machine:',
              style: TextStyle(fontSize: 18, color: Colors.grey),
            ),
            const SizedBox(height: 16),
            _buildStepCard(
              context,
              '1. Download the Flutter SDK',
              'Visit the Flutter SDK releases page to download the latest stable version:',
              'https://flutter-ko.dev/get-started/install/macos',
            ),
            _buildStepCard(
              context,
              '2. Extract the ZIP file',
              'Extract the downloaded ZIP file to a suitable location on your machine, for example, `~/flutter`.',
            ),
            _buildStepCard(
              context,
              '3. Update your Path variable',
              'Add the Flutter bin directory to your PATH:\n'
                  'Open a terminal and run:\n'
                  '```bash\n'
                  'export PATH="\$PATH:<PATH_TO_FLUTTER_DIRECTORY>/flutter/bin"\n'
                  '```\n'
                  'To make this change permanent, add the line to your shell configuration file (e.g., `.bashrc` or `.zshrc`).',
            ),
            _buildStepCard(
              context,
              '4. Run Flutter Doctor',
              'Open a new terminal window and run the following command:\n'
                  '```\n'
                  'flutter doctor\n'
                  '```\n'
                  'This command checks your environment and displays a report of the status of your Flutter installation.',
            ),
            _buildStepCard(
              context,
              '5. Install any missing dependencies',
              'Follow the instructions provided by `flutter doctor` to install any missing dependencies.',
            ),
            _buildStepCard(
              context,
              '6. Verify your installation',
              'Run the following command to verify that Flutter is installed correctly:\n'
                  '```\n'
                  'flutter --version\n'
                  '```\n'
                  'This should display the Flutter version that you have installed.',
            ),
            const SizedBox(height: 16),
            GestureDetector(
              onTap: () {
                launch(
                  'https://flutter-ko.dev',
                );
              },
              child: const Text(
                'For more details, visit the official Flutter installation guide:\n'
                    'https://flutter-ko.dev',
                style: TextStyle(fontSize: 16, color: Colors.blue),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildStepCard(BuildContext context, String title, String description, [String? url]) {
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
            if (url != null) // Only show the URL if it's provided
              GestureDetector(
                onTap: () {
                  launch(url);
                },
                child: Text(
                  url,
                  style: const TextStyle(fontSize: 16, color: Colors.blue, decoration: TextDecoration.underline),
                ),
              ),
          ],
        ),
      ),
    );
  }
}


