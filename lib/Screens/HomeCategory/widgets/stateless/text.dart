import 'package:flutter/material.dart';
import 'package:flutter/services.dart';  // Import for Clipboard
import 'package:flutter_highlight/flutter_highlight.dart';
import 'package:flutter_highlight/themes/androidstudio.dart';
import '../../../../Customs/appbar.dart';

class TextPreviewPage extends StatelessWidget {
  final String codeSnippet = '''import 'package:flutter/material.dart';

class TextExample extends StatelessWidget {
  const TextExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        'Hello, Flutter!',
        style: TextStyle(
          fontSize: 24.0,
          color: Theme.of(context).primaryColor,
        ),
      ),
    );
  }
}''';

  // Method to copy code to clipboard
  void _copyToClipboard(BuildContext context) {
    Clipboard.setData(ClipboardData(text: codeSnippet)).then((_) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Code copied to clipboard!')),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: CustomAppBar(
          title: 'Text Preview & Code',
        ),
        body: Column(
          children: [
            Container(
              color: Theme.of(context).primaryColor.withOpacity(0.1),
              child: TabBar(
                labelColor: Theme.of(context).primaryColor,
                unselectedLabelColor: Colors.black54,
                indicatorColor: Theme.of(context).primaryColor,
                tabs: [
                  Tab(text: 'Preview', icon: Icon(Icons.smartphone)),
                  Tab(text: 'Code', icon: Icon(Icons.code)),
                ],
              ),
            ),
            Expanded(
              child: TabBarView(
                children: [
                  // Preview Page
                  Center(
                    child: Text(
                      'Hello, Flutter!',
                      style: TextStyle(
                        fontSize: 24.0,
                        color: Theme.of(context).primaryColor,
                      ),
                    ),
                  ),
                  // Code Page with Syntax Highlighting and Copy Button
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,  // Aligning to the left
                          children: [
                            IconButton(
                              onPressed: () => _copyToClipboard(context),
                              icon: Icon(
                                Icons.copy,
                                color: Theme.of(context).primaryColor,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 10),
                        Container(
                          color: Colors.black12,
                          child: SingleChildScrollView(
                            child: HighlightView(
                              codeSnippet,
                              language: 'dart',
                              theme: androidstudioTheme,
                              padding: EdgeInsets.all(12),
                              textStyle: TextStyle(
                                fontSize: 14.0,
                                fontFamily: 'monospace',
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
