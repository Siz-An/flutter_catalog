import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../../Customs/appbar.dart';

class GetStartedWithFlutter extends StatelessWidget {
  const GetStartedWithFlutter({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: 'Getting Started with Flutter',
      ),
      body: LayoutBuilder(
        builder: (context, constraints) {
          double fontSize = constraints.maxWidth < 600 ? 16 : 18;
          double headerFontSize = constraints.maxWidth < 600 ? 22 : 24;
          return SingleChildScrollView(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Step 2: Set Up an Editor
                Container(
                  margin: const EdgeInsets.only(bottom: 16),
                  decoration: BoxDecoration(
                    color: Colors.blue[50],
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            SizedBox(width: 8),
                            Expanded(  // Wrap the text in an Expanded widget
                              child: Text(
                                'Step 1: Set Up an Editor',
                                style: TextStyle(
                                  fontSize: headerFontSize,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.blue,
                                ),
                                overflow: TextOverflow.ellipsis, // Ensure text doesn't overflow
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 12),
                        Text(
                          'To start developing with Flutter, you need to set up an editor of your choice. You can use the following editors:',
                          style: TextStyle(fontSize: fontSize),
                        ),
                        const SizedBox(height: 12),
                        Container(
                          padding: const EdgeInsets.all(8),
                          color: Colors.grey[100],
                          child: Text(
                            '''1. Visual Studio Code (VS Code):
- A lightweight, fast code editor.
- It has rich plugin support for Flutter and Dart, making it an ideal choice for Flutter development.

2. Android Studio:
- A more feature-rich Integrated Development Environment (IDE).
- Provides complete Flutter and Dart support with additional tools like an Android emulator, Firebase integration, and more.''',
                            style: TextStyle(fontFamily: 'monospace', fontSize: fontSize, fontWeight: FontWeight.w700),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),

                // Step 3: Create a Simple Flutter App
                Container(
                  margin: const EdgeInsets.only(bottom: 16),
                  decoration: BoxDecoration(
                    color: Colors.green[50],
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            SizedBox(width: 8),
                            Expanded(  // Wrap the text in an Expanded widget
                              child: Text(
                                'Step 2: Create a Flutter App',
                                style: TextStyle(
                                  fontSize: headerFontSize,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.green,
                                ),
                                overflow: TextOverflow.ellipsis, // Ensure text doesn't overflow
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 12),
                        Text(
                          'Once you have installed Flutter and set up your editor, you can create your first Flutter app. Follow these detailed steps to do so:',
                          style: TextStyle(fontSize: fontSize),
                        ),
                        const SizedBox(height: 12),
                        Container(
                          padding: const EdgeInsets.all(8),
                          color: Colors.grey[100],
                          child: Text(
                            '''1. Open your terminal/command prompt.
2. Run `flutter create my_first_app`.
3. Navigate to the new project folder by running `cd my_first_app`.
4. Open the project in your preferred editor (VS Code or Android Studio).
5. Open `lib/main.dart` and Start your Coding journey''',
                            style: TextStyle(fontFamily: 'monospace', fontSize: fontSize, fontWeight: FontWeight.w700),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
