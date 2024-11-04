import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../Customs/appbar.dart';

// Dart Basics Introduction
// This file contains explanations and examples for basic Dart concepts.

class BasicOfDart extends StatelessWidget {
  const BasicOfDart({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: 'Dart Basics Introduction',
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
                // Hello World
                Text(
                  'Hello World',
                  style: TextStyle(fontSize: headerFontSize, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 8),
                Text(
                  'The starting point for any Dart program is the main function.',
                  style: TextStyle(fontSize: fontSize),
                ),
                const SizedBox(height: 8),
                Container(
                  padding: const EdgeInsets.all(8),
                  color: Colors.grey[200],
                  child: Text(
                    '''void helloWorld() {
  print('Hello, World!');
}''',
                    style: TextStyle(fontFamily: 'monospace', fontSize: fontSize),
                  ),
                ),

                // Variables
                const SizedBox(height: 16),
                Text(
                  'Variables',
                  style: TextStyle(fontSize: headerFontSize, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 8),
                Text(
                  'Variables in Dart store data, and the type of data can be inferred or explicitly declared.',
                  style: TextStyle(fontSize: fontSize),
                ),
                const SizedBox(height: 8),
                Container(
                  padding: const EdgeInsets.all(8),
                  color: Colors.grey[200],
                  child: Text(
                    '''void variablesExample() {
  var name = 'Dart';  // inferred as String
  int year = 2024;    // explicitly declared as int
  double score = 99.9; // double type
  bool isAlive = true; // boolean type
  print('Name: \$name, Year: \$year, Score: \$score, Alive: \$isAlive');
}''',
                    style: TextStyle(fontFamily: 'monospace', fontSize: fontSize),
                  ),
                ),

                // Control Flow Statements
                const SizedBox(height: 16),
                Text(
                  'Control Flow Statements',
                  style: TextStyle(fontSize: headerFontSize, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 8),
                Text(
                  'Dart supports if-else, switch, for, while, and do-while loops.',
                  style: TextStyle(fontSize: fontSize),
                ),
                const SizedBox(height: 8),
                Container(
                  padding: const EdgeInsets.all(8),
                  color: Colors.grey[200],
                  child: Text(
                    '''void controlFlowExample() {
  int number = 3;

  // If-else statement
  if (number > 0) {
    print('Positive number');
  } else {
    print('Negative number');
  }

  // Switch-case statement
  switch (number) {
    case 1:
      print('One');
      break;
    case 2:
      print('Two');
      break;
    default:
      print('Other number');
  }

  // Loops
  for (int i = 0; i < 5; i++) {
    print('Loop iteration \$i');
  }
}''',
                    style: TextStyle(fontFamily: 'monospace', fontSize: fontSize),
                  ),
                ),

                // Functions
                const SizedBox(height: 16),
                Text(
                  'Functions',
                  style: TextStyle(fontSize: headerFontSize, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 8),
                Text(
                  'Dart functions are objects and can be passed as arguments or returned from other functions.',
                  style: TextStyle(fontSize: fontSize),
                ),
                const SizedBox(height: 8),
                Container(
                  padding: const EdgeInsets.all(8),
                  color: Colors.grey[200],
                  child: Text(
                    '''String greet(String name) {
  return 'Hello, \$name!';
}

print(greet('Sizan')); // Output: Hello, Sizan!''',
                    style: TextStyle(fontFamily: 'monospace', fontSize: fontSize),
                  ),
                ),

                // Classes
                const SizedBox(height: 16),
                Text(
                  'Classes',
                  style: TextStyle(fontSize: headerFontSize, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 8),
                Text(
                  'Dart is an object-oriented language, and classes are a core concept.',
                  style: TextStyle(fontSize: fontSize),
                ),
                const SizedBox(height: 8),
                Container(
                  padding: const EdgeInsets.all(8),
                  color: Colors.grey[200],
                  child: Text(
                    '''class Person {
  String name;
  int age;

  Person(this.name, this.age);

  void introduce() {
    print('Hello, my name is \$name and I am \$age years old.');
  }
}

var person = Person('Sizan', 23);
person.introduce(); // Output: Hello, my name is Sizan and I am 23 years old.''',
                    style: TextStyle(fontFamily: 'monospace', fontSize: fontSize),
                  ),
                ),

                // Async and Await
                const SizedBox(height: 16),
                Text(
                  'Async and Await',
                  style: TextStyle(fontSize: headerFontSize, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 8),
                Text(
                  'Dart supports async and await for asynchronous operations.',
                  style: TextStyle(fontSize: fontSize),
                ),
                const SizedBox(height: 8),
                Container(
                  padding: const EdgeInsets.all(8),
                  color: Colors.grey[200],
                  child: Text(
                    '''Future<void> fetchData() async {
  print('Fetching data...');
  await Future.delayed(Duration(seconds: 2));
  print('Data fetched!');
}''',
                    style: TextStyle(fontFamily: 'monospace', fontSize: fontSize),
                  ),
                ),

                // Exceptions
                const SizedBox(height: 16),
                Text(
                  'Exceptions',
                  style: TextStyle(fontSize: headerFontSize, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 8),
                Text(
                  'Dart allows for handling errors using try-catch.',
                  style: TextStyle(fontSize: fontSize),
                ),
                const SizedBox(height: 8),
                Container(
                  padding: const EdgeInsets.all(8),
                  color: Colors.grey[200],
                  child: Text(
                    '''void exceptionExample() {
  try {
    int result = 10 ~/ 0; // Integer division by zero
    print(result);
  } catch (e) {
    print('Caught an exception: \$e');
  }
}''',
                    style: TextStyle(fontFamily: 'monospace', fontSize: fontSize),
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
