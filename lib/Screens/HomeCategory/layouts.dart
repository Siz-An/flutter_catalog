// In HomeCategory/layouts.dart
import 'package:flutter/material.dart';

class LayoutsPage extends StatelessWidget {
  const LayoutsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Layouts Page'),
      ),
      body: Center(
        child: Text('This is the Layouts page'),
      ),
    );
  }
}