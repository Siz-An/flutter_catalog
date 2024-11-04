import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import '../../../Customs/appbar.dart';
import 'codessnippet/codeDisplaySelection.dart';
import 'installFlutter.dart';
import 'installfluttermacos.dart';

class SelectPlatformPage extends StatelessWidget {
  const SelectPlatformPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: 'Select Installation Platform',
        icon: Icons.code,
        onIconPressed: () {
          // Navigate to the OtherScreen when the icon is pressed using GetX
          Get.to(() => CodeDisplayPageSelection());
        },
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const Text(
              'Choose your platform to install Flutter:',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 20),
            // Description about Flutter
            const Text(
              'Flutter is an open-source UI toolkit created by Google. '
                  'It enables developers to build natively compiled applications for mobile, '
                  'web, and desktop from a single codebase. With its rich set of pre-designed '
                  'widgets, Flutter allows you to create beautiful and responsive user interfaces.',
              style: TextStyle(fontSize: 16),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 40),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                padding: const EdgeInsets.symmetric(vertical: 20),
                textStyle: const TextStyle(fontSize: 20),
              ),
              onPressed: () {
                // Navigate to Windows installation page
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const InstallFlutter()),
                );
              },
              child: const Text('Windows'),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                padding: const EdgeInsets.symmetric(vertical: 20),
                textStyle: const TextStyle(fontSize: 20),
              ),
              onPressed: () {
                // Navigate to macOS installation page
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const InstallFlutterMacOS()),
                );
              },
              child: const Text('macOS'),
            ),
          ],
        ),
      ),
    );
  }
}
