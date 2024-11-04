// In HomeCategory/widgets.dart
import 'package:flutter/material.dart';

class WidgetsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Widgets Page'),
      ),
      body: Center(
        child: Text('This is the Widgets page'),
      ),
    );
  }
}