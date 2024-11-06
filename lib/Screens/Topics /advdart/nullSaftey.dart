import 'package:flutter/material.dart';
import '../../../Customs/appbar.dart'; // Assuming you have a custom app bar in your project

class NullSafety extends StatelessWidget {
  const NullSafety({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: 'Dart Null Safety Tutorial',
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
                // Introduction to Null Safety
                Text(
                  'Null Safety in Dart',
                  style: TextStyle(fontSize: headerFontSize, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 8),
                Text(
                  'Null safety in Dart helps eliminate null reference errors by making types non-nullable by default. '
                      'This means that unless you explicitly declare a variable as nullable, it cannot hold a null value. '
                      'This feature was introduced in Dart 2.12 and provides better safety, clarity, and fewer runtime errors.',
                  style: TextStyle(fontSize: fontSize),
                ),
                const SizedBox(height: 16),

                // Basics of Null Safety
                Text(
                  'Basics of Null Safety',
                  style: TextStyle(fontSize: headerFontSize, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 8),
                Text(
                  'In Dart, types are non-nullable by default. That means you cannot assign a null value to a variable unless it is explicitly declared as nullable.',
                  style: TextStyle(fontSize: fontSize),
                ),
                const SizedBox(height: 8),
                Container(
                  padding: const EdgeInsets.all(8),
                  color: Colors.grey[200],
                  child: Text(
                    '''// Non-nullable type (this will cause an error)
int number = null;  // Error: A value of type 'Null' can't be assigned to a variable of type 'int'.

// Nullable type (explicitly declared with a question mark)
int? nullableNumber = null;  // No error, because 'nullableNumber' can hold null

// A function with non-nullable parameter
void printName(String name) {
  print(name);
}

// A function with nullable parameter
void printNullableName(String? name) {
  if (name != null) {
    print(name);
  } else {
    print('Name is null');
  }
}''',
                    style: TextStyle(fontFamily: 'monospace', fontSize: fontSize),
                  ),
                ),
                const SizedBox(height: 16),

                // Null-aware operators
                Text(
                  'Null-aware Operators',
                  style: TextStyle(fontSize: headerFontSize, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 8),
                Text(
                  'Dart provides several null-aware operators to make dealing with nullable types easier. These operators help you avoid null reference exceptions by safely accessing nullable values.',
                  style: TextStyle(fontSize: fontSize),
                ),
                const SizedBox(height: 8),
                Text(
                  'Some common null-aware operators in Dart are:',
                  style: TextStyle(fontSize: fontSize, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 8),
                // Null-aware operators list
                Text(
                  '1. **`?.` (null-aware access operator)**: Allows you to call a method or access a property on an object only if it is not null.',
                  style: TextStyle(fontSize: fontSize),
                ),
                Text(
                  '2. **`??` (null-aware operator)**: If the left-hand expression is null, it returns the right-hand expression.',
                  style: TextStyle(fontSize: fontSize),
                ),
                Text(
                  '3. **`??=` (null-aware assignment operator)**: If the left-hand variable is null, assign the right-hand expression to it.',
                  style: TextStyle(fontSize: fontSize),
                ),
                const SizedBox(height: 8),
                Container(
                  padding: const EdgeInsets.all(8),
                  color: Colors.grey[200],
                  child: Text(
                    '''// Null-aware operators in action
String? name;
print(name?.toUpperCase()); // null, doesn't throw an error

name = 'John';
print(name?.toUpperCase()); // JOHN

// Null-aware operator (??)
String greeting = name ?? 'Guest';
print(greeting);  // John

// Null-aware assignment operator (??=)
String? address;
address ??= 'Unknown Address';  // Assigns 'Unknown Address' to 'address' if it is null
print(address);  // Unknown Address''',
                    style: TextStyle(fontFamily: 'monospace', fontSize: fontSize),
                  ),
                ),
                const SizedBox(height: 16),

                // Late Variables
                Text(
                  'Late Variables',
                  style: TextStyle(fontSize: headerFontSize, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 8),
                Text(
                  'The `late` keyword in Dart is used to declare a variable that will be initialized later. This is especially useful when you know the variable will be assigned a non-null value but cannot initialize it immediately.',
                  style: TextStyle(fontSize: fontSize),
                ),
                const SizedBox(height: 8),
                Container(
                  padding: const EdgeInsets.all(8),
                  color: Colors.grey[200],
                  child: Text(
                    '''// Using the 'late' keyword
late String name;
name = 'Alice'; // Initialized later, no error
print(name);  // Alice

// Without 'late', you would get an error because 'name' is not initialized
// String name;  // Error: The non-nullable variable 'name' must be initialized.''',
                    style: TextStyle(fontFamily: 'monospace', fontSize: fontSize),
                  ),
                ),
                const SizedBox(height: 16),

                // Null Safety and Collections
                Text(
                  'Null Safety and Collections',
                  style: TextStyle(fontSize: headerFontSize, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 8),
                Text(
                  'You can apply null safety to collections like lists, sets, and maps. Collections can either hold nullable or non-nullable elements, depending on how they are declared.',
                  style: TextStyle(fontSize: fontSize),
                ),
                const SizedBox(height: 8),
                Container(
                  padding: const EdgeInsets.all(8),
                  color: Colors.grey[200],
                  child: Text(
                    '''// Null safety with collections
List<int> numbers = [1, 2, 3];  // Non-nullable list of integers
// numbers = null;  // Error, cannot assign null

List<int?> nullableNumbers = [1, 2, null];  // Nullable list of integers
nullableNumbers.add(null);  // Works fine

Map<String, int?> studentGrades = {
  'Alice': 90,
  'Bob': null,  // Bob's grade is null
};''',
                    style: TextStyle(fontFamily: 'monospace', fontSize: fontSize),
                  ),
                ),
                const SizedBox(height: 16),

                // Summary
                Text(
                  'Summary',
                  style: TextStyle(fontSize: headerFontSize, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 8),
                Text(
                  'Null safety in Dart ensures that variables cannot hold null values unless explicitly allowed. '
                      'This eliminates the possibility of null reference errors and makes your code more reliable and predictable.',
                  style: TextStyle(fontSize: fontSize),
                ),
                const SizedBox(height: 8),
                Text(
                  'By using null-aware operators, late variables, and nullable types, you can write safer and cleaner code.',
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
