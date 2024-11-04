import 'package:flutter/material.dart';
import 'package:flutter_highlight/flutter_highlight.dart';
import 'package:flutter_highlight/themes/androidstudio.dart';
import 'package:flutter/services.dart';
import '../../../../Customs/appbar.dart';

class CodeDisplayPage extends StatelessWidget {
  const CodeDisplayPage({super.key});

  @override
  Widget build(BuildContext context) {
    // Get screen width to apply responsive styling
    final screenWidth = MediaQuery.of(context).size.width;
    final isSmallScreen = screenWidth < 600;

    return Scaffold(
      appBar: CustomAppBar(
        title: 'Code Install Flutter on macOS',
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(
          horizontal: isSmallScreen ? 8.0 : 16.0,
          vertical: 16.0,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              ' For Packages Go to pub.dev ',
              style: TextStyle(
                fontSize: isSmallScreen ? 24 : 28,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 16),
            _buildCodeSnippet(context, isSmallScreen),
          ],
        ),
      ),
    );
  }

  Widget _buildCodeSnippet(BuildContext context, bool isSmallScreen) {
    const code = '''
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:url_launcher/url_launcher.dart';
import '../../../Customs/appbar.dart';
import 'codeDisplayMAcos.dart';

class InstallFlutterMacOS extends StatelessWidget {
  const InstallFlutterMacOS({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(title: 'Install Flutter on macOS',
      icon: Icons.code,
        onIconPressed: () {
          Get.to(() => InstallFlutter());
        },
      ),
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
          ],
        ),
      ),
    );
  }

  // Function to build the step cards
  
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
class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  final IconData? icon; // Optional icon parameter
  final Color? iconColor; // Optional icon color parameter
  final VoidCallback? onIconPressed; // Callback for icon press

  CustomAppBar({
    required this.title,
    this.icon,
    this.iconColor,
    this.onIconPressed, // Initialize the callback
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(
        title,
        style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
      ),
      centerTitle: true,
      backgroundColor: Colors.blue[700],
      elevation: 10,
      flexibleSpace: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Colors.blue[200]!, Colors.blue[600]!],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
      ),
      actions: [
        if (icon != null) // Check if icon is provided
          IconButton(
            icon: Icon(icon, color: iconColor ?? Colors.white), // Use provided color or default to white
            onPressed: onIconPressed, // Call the passed callback
          ),
      ],
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}

''';

    return Stack(
      children: [
        // Code snippet with highlighting
        HighlightView(
          code,
          language: 'dart',
          theme: androidstudioTheme,
          padding: EdgeInsets.symmetric(
            horizontal: isSmallScreen ? 8.0 : 16.0,
            vertical: 16.0,
          ),
          textStyle: TextStyle(
            fontFamily: 'monospace',
            fontSize: isSmallScreen ? 12 : 14,
          ),
        ),
        // Positioned "Copy" button
        Positioned(
          top: 8,
          right: 8,
          child: IconButton(
            icon: const Icon(Icons.copy, color: Colors.blue),
            tooltip: 'Copy to Clipboard',
            onPressed: () {
              Clipboard.setData(const ClipboardData(text: code));
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(
                  content: Text('Code copied to clipboard!'),
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}
