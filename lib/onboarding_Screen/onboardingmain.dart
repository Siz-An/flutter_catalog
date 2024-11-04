import 'package:flutter/material.dart';
import '../Customs/navbar.dart';
import 'board1.dart';
import 'board2.dart';
import 'board3.dart';// Import MainNavigation screen

class OnboardingScreen extends StatefulWidget {
  @override
  _OnboardingScreenState createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  final PageController _pageController = PageController();
  int _currentPage = 0;

  void _onPageChanged(int index) {
    setState(() {
      _currentPage = index;
    });
  }

  void _navigateToHomePage() {
    Navigator.of(context).pushReplacement(
      MaterialPageRoute(builder: (context) => MainNavigation()), // Navigate to MainNavigation
    );
  }

  void _goToNextPage() {
    if (_currentPage < 2) {
      _pageController.nextPage(
        duration: Duration(milliseconds: 300),
        curve: Curves.easeInOut,
      );
    } else {
      _navigateToHomePage();
    }
  }

  Widget _buildDotsIndicator() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: List.generate(3, (index) {
        return Container(
          margin: EdgeInsets.symmetric(horizontal: 4.0),
          width: 10,
          height: 10,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: _currentPage == index ? Colors.blue : Colors.grey,
          ),
        );
      }),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          // Dots Indicator at the top left
          Padding(
            padding: const EdgeInsets.all(30.0),
            child: Align(
              alignment: Alignment.topLeft,
              child: _buildDotsIndicator(),
            ),
          ),
          Expanded(
            child: PageView(
              controller: _pageController,
              onPageChanged: _onPageChanged,
              children: [
                OnboardingPageOne(),
                OnboardingPageTwo(),
                OnboardingPageThree(),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: ElevatedButton(
              onPressed: _goToNextPage,
              child: Text(_currentPage == 2 ? 'Get Started' : 'Next'),
            ),
          ),
          SizedBox(height: 20),
        ],
      ),
    );
  }
}
