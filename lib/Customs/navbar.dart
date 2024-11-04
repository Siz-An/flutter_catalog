import 'package:flutter/material.dart';
import 'package:custom_navigation_bar/custom_navigation_bar.dart';

import '../Screens/navbar_Pages/HomePage.dart';
import '../Screens/navbar_Pages/explore.dart';
import '../Screens/navbar_Pages/fav.dart';

class FlutterCatalogApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Catalog',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: MainNavigation(),
    );
  }
}

class MainNavigation extends StatefulWidget {
  @override
  _MainNavigationState createState() => _MainNavigationState();
}

class _MainNavigationState extends State<MainNavigation> {
  int _currentIndex = 0;

  final List<Widget> _pages = [
    HomePage(),
    ExplorePage(),
    ChatBot(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_currentIndex],
      bottomNavigationBar: ClipRRect(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(30),
          topRight: Radius.circular(30),
        ),
        child: Container(
          margin: EdgeInsets.only(bottom: 10), // Margin for floating effect
          color: Colors.white, // Background color
          child: CustomNavigationBar(
            items: [
              CustomNavigationBarItem(
                icon: Icon(Icons.home),
                title: Text('Home'),
              ),
              CustomNavigationBarItem(
                icon: Icon(Icons.explore),
                title: Text('Explore'),
              ),
              CustomNavigationBarItem(
                icon: Icon(Icons.chat),
                title: Text('ChatBot'),
              ),
            ],
            currentIndex: _currentIndex,
            onTap: (index) {
              setState(() {
                _currentIndex = index;
              });
            },
            selectedColor: Colors.blue,
            isFloating: true, // Enable floating effect
          ),
        ),
      ),
    );
  }
}