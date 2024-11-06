import 'package:flutter/material.dart';
import '../../../Customs/appbar.dart'; // Assuming you have a custom app bar in your project

class loops extends StatelessWidget {
  const loops({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: 'Dart Loops Tutorial',
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
                // For Loop
                Text(
                  'For Loop',
                  style: TextStyle(fontSize: headerFontSize, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 8),
                Text(
                  'The `for` loop is ideal when you know exactly how many times you need to repeat an action. '
                      'It consists of an initializer, a condition, and an increment or decrement statement. '
                      'It is commonly used to iterate over ranges of numbers.',
                  style: TextStyle(fontSize: fontSize),
                ),
                const SizedBox(height: 8),
                Container(
                  padding: const EdgeInsets.all(8),
                  color: Colors.grey[200],
                  child: Text(
                    '''void forLoopExample() {
  for (int i = 0; i < 5; i++) {
    print('Iteration \$i');
  }
  // Output:
  // Iteration 0
  // Iteration 1
  // Iteration 2
  // Iteration 3
  // Iteration 4
}''',
                    style: TextStyle(fontFamily: 'monospace', fontSize: fontSize),
                  ),
                ),

                // For...in Loop
                const SizedBox(height: 16),
                Text(
                  'For...in Loop',
                  style: TextStyle(fontSize: headerFontSize, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 8),
                Text(
                  'The `for...in` loop iterates over each element in a collection, such as a list or set. '
                      'It’s simpler than using a traditional `for` loop for collections because it doesn’t need an index.',
                  style: TextStyle(fontSize: fontSize),
                ),
                const SizedBox(height: 8),
                Container(
                  padding: const EdgeInsets.all(8),
                  color: Colors.grey[200],
                  child: Text(
                    '''void forInLoopExample() {
  List<String> fruits = ['Apple', 'Banana', 'Cherry'];
  for (var fruit in fruits) {
    print(fruit);
  }
  // Output:
  // Apple
  // Banana
  // Cherry
}''',
                    style: TextStyle(fontFamily: 'monospace', fontSize: fontSize),
                  ),
                ),

                // While Loop
                const SizedBox(height: 16),
                Text(
                  'While Loop',
                  style: TextStyle(fontSize: headerFontSize, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 8),
                Text(
                  'The `while` loop executes as long as a condition remains true. '
                      'It is particularly useful when the number of iterations is unknown or dependent on a dynamic condition.',
                  style: TextStyle(fontSize: fontSize),
                ),
                const SizedBox(height: 8),
                Container(
                  padding: const EdgeInsets.all(8),
                  color: Colors.grey[200],
                  child: Text(
                    '''void whileLoopExample() {
  int count = 0;
  while (count < 5) {
    print('Count is \$count');
    count++;
  }
  // Output:
  // Count is 0
  // Count is 1
  // Count is 2
  // Count is 3
  // Count is 4
}''',
                    style: TextStyle(fontFamily: 'monospace', fontSize: fontSize),
                  ),
                ),

                // Do...while Loop
                const SizedBox(height: 16),
                Text(
                  'Do...while Loop',
                  style: TextStyle(fontSize: headerFontSize, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 8),
                Text(
                  'The `do...while` loop is similar to the `while` loop, but it executes at least once, even if the condition is initially false.',
                  style: TextStyle(fontSize: fontSize),
                ),
                const SizedBox(height: 8),
                Container(
                  padding: const EdgeInsets.all(8),
                  color: Colors.grey[200],
                  child: Text(
                    '''void doWhileLoopExample() {
  int count = 0;
  do {
    print('Count is \$count');
    count++;
  } while (count < 5);
  // Output:
  // Count is 0
  // Count is 1
  // Count is 2
  // Count is 3
  // Count is 4
}''',
                    style: TextStyle(fontFamily: 'monospace', fontSize: fontSize),
                  ),
                ),

                // ForEach Loop
                const SizedBox(height: 16),
                Text(
                  'ForEach Loop',
                  style: TextStyle(fontSize: headerFontSize, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 8),
                Text(
                  'The `forEach` loop is a function applied to collections. It accepts a function that it applies to each element of the collection.',
                  style: TextStyle(fontSize: fontSize),
                ),
                const SizedBox(height: 8),
                Container(
                  padding: const EdgeInsets.all(8),
                  color: Colors.grey[200],
                  child: Text(
                    '''void forEachLoopExample() {
  List<int> numbers = [1, 2, 3, 4];
  numbers.forEach((number) {
    print(number);
  });
  // Output:
  // 1
  // 2
  // 3
  // 4
}''',
                    style: TextStyle(fontFamily: 'monospace', fontSize: fontSize),
                  ),
                ),

                // Break and Continue
                const SizedBox(height: 16),
                Text(
                  'Break and Continue',
                  style: TextStyle(fontSize: headerFontSize, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 8),
                Text(
                  '`break` exits a loop entirely, while `continue` skips to the next iteration of the loop.',
                  style: TextStyle(fontSize: fontSize),
                ),
                const SizedBox(height: 8),
                Container(
                  padding: const EdgeInsets.all(8),
                  color: Colors.grey[200],
                  child: Text(
                    '''void breakAndContinueExample() {
  for (int i = 0; i < 5; i++) {
    if (i == 3) break; // Exits the loop when i is 3
    print('i: \$i');
  }

  for (int j = 0; j < 5; j++) {
    if (j == 2) continue; // Skips when j is 2
    print('j: \$j');
  }
  // Output for break:
  // i: 0
  // i: 1
  // i: 2

  // Output for continue:
  // j: 0
  // j: 1
  // j: 3
  // j: 4
}''',
                    style: TextStyle(fontFamily: 'monospace', fontSize: fontSize),
                  ),
                ),

                // Await For Loop
                const SizedBox(height: 16),
                Text(
                  'Await For Loop (Async)',
                  style: TextStyle(fontSize: headerFontSize, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 8),
                Text(
                  'The `await for` loop is used to process asynchronous streams, waiting for each element to be available.',
                  style: TextStyle(fontSize: fontSize),
                ),
                const SizedBox(height: 8),
                Container(
                  padding: const EdgeInsets.all(8),
                  color: Colors.grey[200],
                  child: Text(
                    '''Future<void> awaitForLoopExample() async {
  Stream<int> numberStream = Stream.periodic(Duration(seconds: 1), (count) => count).take(5);
  await for (var number in numberStream) {
    print('Number: \$number');
  }
  // Output (one per second):
  // Number: 0
  // Number: 1
  // Number: 2
  // Number: 3
  // Number: 4
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
