import 'package:flutter/material.dart';
import '../../../Customs/appbar.dart'; // Assuming you have a custom app bar in your project

class async extends StatelessWidget {
  const async({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: 'Dart Asynchronous Programming Tutorial',
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
                // Introduction to Asynchronous Programming
                Text(
                  'Asynchronous Programming in Dart',
                  style: TextStyle(fontSize: headerFontSize, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 8),
                Text(
                  'Asynchronous programming allows you to write non-blocking code that can perform multiple tasks concurrently. '
                      'In Dart, asynchronous programming is achieved using **Futures**, **async/await**, and **Streams**.',
                  style: TextStyle(fontSize: fontSize),
                ),
                const SizedBox(height: 16),

                // The Future Class
                Text(
                  'The Future Class',
                  style: TextStyle(fontSize: headerFontSize, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 8),
                Text(
                  'A **Future** represents a potential value or error that will be available at some time in the future. It can either be completed with a value or with an error.',
                  style: TextStyle(fontSize: fontSize),
                ),
                const SizedBox(height: 8),
                Container(
                  padding: const EdgeInsets.all(8),
                  color: Colors.grey[200],
                  child: Text(
                    '''// A Future example
Future<String> fetchData() async {
  await Future.delayed(Duration(seconds: 2));
  return 'Data fetched successfully';
}

void main() async {
  print('Fetching data...');
  String result = await fetchData();  // Using 'await' to wait for the Future
  print(result);  // Output after 2 seconds: Data fetched successfully
}''',
                    style: TextStyle(fontFamily: 'monospace', fontSize: fontSize),
                  ),
                ),
                const SizedBox(height: 16),

                // Async and Await
                Text(
                  'Async and Await',
                  style: TextStyle(fontSize: headerFontSize, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 8),
                Text(
                  'The `async` keyword is used to define a function that returns a Future. The `await` keyword is used to pause the execution of an `async` function until the Future is completed.',
                  style: TextStyle(fontSize: fontSize),
                ),
                const SizedBox(height: 8),
                Container(
                  padding: const EdgeInsets.all(8),
                  color: Colors.grey[200],
                  child: Text(
                    '''// Using async and await
Future<void> fetchDataAsync() async {
  print('Fetching...');
  String data = await fetchData();  // Waits for the Future to complete
  print(data);  // Output after the Future completes: Data fetched successfully
}

void main() async {
  await fetchDataAsync();  // Ensures the main function waits for the async task to complete
}''',
                    style: TextStyle(fontFamily: 'monospace', fontSize: fontSize),
                  ),
                ),
                const SizedBox(height: 16),

                // Error Handling with Async
                Text(
                  'Error Handling in Async',
                  style: TextStyle(fontSize: headerFontSize, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 8),
                Text(
                  'You can handle errors in asynchronous operations using **try/catch** blocks. If a Future completes with an error, the error is caught and handled.',
                  style: TextStyle(fontSize: fontSize),
                ),
                const SizedBox(height: 8),
                Container(
                  padding: const EdgeInsets.all(8),
                  color: Colors.grey[200],
                  child: Text(
                    '''// Handling errors in async code
Future<String> fetchWithError() async {
  await Future.delayed(Duration(seconds: 1));
  throw 'Error fetching data';
}

void main() async {
  try {
    String result = await fetchWithError();
    print(result);
  } catch (e) {
    print('Caught error: \$e');  // Catches the error and prints: Caught error: Error fetching data
  }
}''',
                    style: TextStyle(fontFamily: 'monospace', fontSize: fontSize),
                  ),
                ),
                const SizedBox(height: 16),

                // Streams in Dart
                Text(
                  'Streams in Dart',
                  style: TextStyle(fontSize: headerFontSize, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 8),
                Text(
                  'A **Stream** is an asynchronous sequence of data. You can think of it as a series of events delivered over time. Streams are used to handle multiple asynchronous events.',
                  style: TextStyle(fontSize: fontSize),
                ),
                const SizedBox(height: 8),
                Container(
                  padding: const EdgeInsets.all(8),
                  color: Colors.grey[200],
                  child: Text(
                    '''// A simple Stream example
Stream<int> countStream() async* {
  for (int i = 1; i <= 5; i++) {
    await Future.delayed(Duration(seconds: 1));
    yield i;  // 'yield' sends a value to the stream
  }
}

void main() async {
  await for (var count in countStream()) {
    print(count);  // Output: 1, 2, 3, 4, 5 (one per second)
  }
}''',
                    style: TextStyle(fontFamily: 'monospace', fontSize: fontSize),
                  ),
                ),
                const SizedBox(height: 16),

                // Stream and Listeners
                Text(
                  'Streams and Listeners',
                  style: TextStyle(fontSize: headerFontSize, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 8),
                Text(
                  'You can also listen to Streams using the `listen` method. This allows you to react to new data as it arrives.',
                  style: TextStyle(fontSize: fontSize),
                ),
                const SizedBox(height: 8),
                Container(
                  padding: const EdgeInsets.all(8),
                  color: Colors.grey[200],
                  child: Text(
                    '''// Listening to a stream
Stream<int> numberStream() async* {
  for (int i = 0; i < 5; i++) {
    await Future.delayed(Duration(seconds: 1));
    yield i;
  }
}

void main() {
  numberStream().listen(
    (data) {
      print('Received: \$data');  // Prints received values as the stream emits them
    },
    onError: (error) {
      print('Error: \$error');  // Catches errors from the stream
    },
    onDone: () {
      print('Stream is done');  // Runs when the stream is finished
    },
  );
}''',
                    style: TextStyle(fontFamily: 'monospace', fontSize: fontSize),
                  ),
                ),
                const SizedBox(height: 16),

                // The Difference Between Future and Stream
                Text(
                  'Future vs. Stream',
                  style: TextStyle(fontSize: headerFontSize, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 8),
                Text(
                  'A **Future** represents a single value that will be available at some point in the future, while a **Stream** represents a sequence of values, delivered asynchronously over time.',
                  style: TextStyle(fontSize: fontSize),
                ),
                const SizedBox(height: 8),
                Text(
                  'Use a Future when you expect a single result, and a Stream when you expect multiple results over time.',
                  style: TextStyle(fontSize: fontSize),
                ),
                const SizedBox(height: 16),

                // Summary
                Text(
                  'Summary',
                  style: TextStyle(fontSize: headerFontSize, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 8),
                Text(
                  'Asynchronous programming in Dart provides an efficient way to handle tasks that take time (e.g., network requests or file I/O) without blocking the main thread. '
                      'By using **Futures**, **async/await**, and **Streams**, you can handle asynchronous operations and events in a more manageable and readable way.',
                  style: TextStyle(fontSize: fontSize),
                ),
                const SizedBox(height: 8),
                Text(
                  'Asynchronous programming is crucial for building responsive applications that perform complex operations in the background while keeping the UI responsive.',
                  style: TextStyle(fontSize: fontSize),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
