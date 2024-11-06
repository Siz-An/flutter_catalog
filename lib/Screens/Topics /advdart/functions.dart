import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../Customs/appbar.dart';
import '../installFlutter/codessnippet/codeDisplayWindows.dart';

class functions extends StatelessWidget {
  const functions({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: 'Dart Functions Tutorial',
        
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
                // Function Basics
                Text(
                  'Function Basics',
                  style: TextStyle(fontSize: headerFontSize, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 8),
                Text(
                  'Functions in Dart are blocks of reusable code that can be called to perform specific tasks. '
                      'They help organize code and reduce redundancy.',
                  style: TextStyle(fontSize: fontSize),
                ),
                const SizedBox(height: 8),
                Container(
                  padding: const EdgeInsets.all(8),
                  color: Colors.grey[200],
                  child: Text(
                    '''// Basic function that adds two numbers
int add(int a, int b) {
  return a + b;
}
// Usage
print(add(3, 4)); // Output: 7''',
                    style: TextStyle(fontFamily: 'monospace', fontSize: fontSize),
                  ),
                ),

                // Named Parameters
                const SizedBox(height: 16),
                Text(
                  'Named Parameters',
                  style: TextStyle(fontSize: headerFontSize, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 8),
                Text(
                  'Named parameters allow you to specify arguments by name when calling a function. '
                      'They’re wrapped in curly braces `{}` and can be made optional or required.',
                  style: TextStyle(fontSize: fontSize),
                ),
                const SizedBox(height: 8),
                Container(
                  padding: const EdgeInsets.all(8),
                  color: Colors.grey[200],
                  child: Text(
                    '''void greet({required String name, int age = 18}) {
  print('Hello, \$name! Age: \$age');
}
// Usage
greet(name: 'Alice'); // Output: Hello, Alice! Age: 18
greet(name: 'Bob', age: 25); // Output: Hello, Bob! Age: 25''',
                    style: TextStyle(fontFamily: 'monospace', fontSize: fontSize),
                  ),
                ),

                // Positional Parameters
                const SizedBox(height: 16),
                Text(
                  'Positional Parameters',
                  style: TextStyle(fontSize: headerFontSize, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 8),
                Text(
                  'Positional parameters are passed in the order defined in the function signature. '
                      'You can make them optional by wrapping them in square brackets `[]`.',
                  style: TextStyle(fontSize: fontSize),
                ),
                const SizedBox(height: 8),
                Container(
                  padding: const EdgeInsets.all(8),
                  color: Colors.grey[200],
                  child: Text(
                    '''void describe(String name, [String? job = 'Student']) {
  print('\$name is a \$job');
}
// Usage
describe('Alice'); // Output: Alice is a Student
describe('Bob', 'Developer'); // Output: Bob is a Developer''',
                    style: TextStyle(fontFamily: 'monospace', fontSize: fontSize),
                  ),
                ),

                // Arrow Functions
                const SizedBox(height: 16),
                Text(
                  'Arrow Functions',
                  style: TextStyle(fontSize: headerFontSize, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 8),
                Text(
                  'Arrow functions provide a shorter syntax for functions with a single expression. '
                      'They’re defined using `=>` and are useful for concise function definitions.',
                  style: TextStyle(fontSize: fontSize),
                ),
                const SizedBox(height: 8),
                Container(
                  padding: const EdgeInsets.all(8),
                  color: Colors.grey[200],
                  child: Text(
                    '''int multiply(int a, int b) => a * b;
// Usage
print(multiply(3, 4)); // Output: 12''',
                    style: TextStyle(fontFamily: 'monospace', fontSize: fontSize),
                  ),
                ),

                // Anonymous Functions
                const SizedBox(height: 16),
                Text(
                  'Anonymous Functions (Lambdas)',
                  style: TextStyle(fontSize: headerFontSize, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 8),
                Text(
                  'Anonymous functions, also called lambdas, are functions without names. '
                      'They’re often used for short-term tasks like callbacks or iterating over collections.',
                  style: TextStyle(fontSize: fontSize),
                ),
                const SizedBox(height: 8),
                Container(
                  padding: const EdgeInsets.all(8),
                  color: Colors.grey[200],
                  child: Text(
                    '''List<int> numbers = [1, 2, 3];
numbers.forEach((number) {
  print(number * 2);
});
// Output:
// 2
// 4
// 6''',
                    style: TextStyle(fontFamily: 'monospace', fontSize: fontSize),
                  ),
                ),

                // Higher-Order Functions
                const SizedBox(height: 16),
                Text(
                  'Higher-Order Functions',
                  style: TextStyle(fontSize: headerFontSize, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 8),
                Text(
                  'A higher-order function is a function that takes other functions as parameters or returns a function as its result. '
                      'This is particularly useful in functional programming and allows for powerful abstractions.',
                  style: TextStyle(fontSize: fontSize),
                ),
                const SizedBox(height: 8),
                Container(
                  padding: const EdgeInsets.all(8),
                  color: Colors.grey[200],
                  child: Text(
                    '''void applyFunction(int a, int b, int Function(int, int) operation) {
  print('Result: \${operation(a, b)}');
}
// Usage with an anonymous function
applyFunction(5, 3, (x, y) => x + y); // Output: Result: 8
// Usage with a named function
applyFunction(5, 3, multiply); // Output using previously defined multiply function: Result: 15''',
                    style: TextStyle(fontFamily: 'monospace', fontSize: fontSize),
                  ),
                ),

                // Async Functions
                const SizedBox(height: 16),
                Text(
                  'Async and Await Functions',
                  style: TextStyle(fontSize: headerFontSize, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 8),
                Text(
                  'Dart supports asynchronous programming with `async` and `await`. '
                      'Async functions allow you to perform asynchronous operations without blocking the main thread.',
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
  print('Data fetched');
}
// Usage
fetchData();
// Output:
// Fetching data...
// (after 2 seconds)
// Data fetched''',
                    style: TextStyle(fontFamily: 'monospace', fontSize: fontSize),
                  ),
                ),

                // Recursive Functions
                const SizedBox(height: 16),
                Text(
                  'Recursive Functions',
                  style: TextStyle(fontSize: headerFontSize, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 8),
                Text(
                  'A recursive function is one that calls itself. Recursion is often used to solve problems that can be divided into sub-problems of the same type, such as calculating factorials or traversing trees.',
                  style: TextStyle(fontSize: fontSize),
                ),
                const SizedBox(height: 8),
                Container(
                  padding: const EdgeInsets.all(8),
                  color: Colors.grey[200],
                  child: Text(
                    '''int factorial(int n) {
  if (n <= 1) return 1;
  return n * factorial(n - 1);
}
// Usage
print(factorial(5)); // Output: 120''',
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
