import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../Customs/appbar.dart';
import '../installFlutter/codessnippet/codeDisplayWindows.dart';

class variables extends StatelessWidget {
  const variables({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: 'Dart Variables Tutorial',
        icon: Icons.code,
        onIconPressed: () {
          Get.to(() => CodeDisplayPageWindows());
        },
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
                // Introduction to Variables
                Text(
                  'Introduction to Variables',
                  style: TextStyle(fontSize: headerFontSize, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 8),
                Text(
                  'Variables in Dart are used to store data. Dart is statically typed, so each variable has a type. '
                      'You can use either explicitly typed or type-inferred variables in Dart.',
                  style: TextStyle(fontSize: fontSize),
                ),

                // Declaring Variables
                const SizedBox(height: 16),
                Text(
                  'Declaring Variables',
                  style: TextStyle(fontSize: headerFontSize, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 8),
                Text(
                  'To declare a variable, you can specify its type explicitly or let Dart infer the type using the `var` keyword.',
                  style: TextStyle(fontSize: fontSize),
                ),
                const SizedBox(height: 8),
                Container(
                  padding: const EdgeInsets.all(8),
                  color: Colors.grey[200],
                  child: Text(
                    '''void variableDeclaration() {
  int age = 25; // Explicitly typed integer
  var name = 'Alice'; // Dart infers that 'name' is a String
  print('Name: \$name, Age: \$age');
}
// Output:
// Name: Alice, Age: 25''',
                    style: TextStyle(fontFamily: 'monospace', fontSize: fontSize),
                  ),
                ),

                // Mutable and Immutable Variables
                const SizedBox(height: 16),
                Text(
                  'Mutable and Immutable Variables',
                  style: TextStyle(fontSize: headerFontSize, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 8),
                Text(
                  'In Dart, `var` and `dynamic` variables are mutable (modifiable), while `final` and `const` variables are immutable (cannot be modified once set). '
                      'Use `final` when the value is set once but may be computed at runtime, and `const` for compile-time constants.',
                  style: TextStyle(fontSize: fontSize),
                ),
                const SizedBox(height: 8),
                Container(
                  padding: const EdgeInsets.all(8),
                  color: Colors.grey[200],
                  child: Text(
                    '''void immutabilityExample() {
  final String city = 'New York'; // Immutable, assigned at runtime
  const double pi = 3.14159; // Constant, assigned at compile-time
  
  print('City: \$city, Pi: \$pi');
  // city = 'Los Angeles'; // Error: 'final' variable can't be reassigned
}
// Output:
// City: New York, Pi: 3.14159''',
                    style: TextStyle(fontFamily: 'monospace', fontSize: fontSize),
                  ),
                ),

                // Variable Types
                const SizedBox(height: 16),
                Text(
                  'Variable Types',
                  style: TextStyle(fontSize: headerFontSize, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 8),
                Text(
                  'Dart supports several basic variable types: `int`, `double`, `String`, `bool`, `List`, and `Map`.',
                  style: TextStyle(fontSize: fontSize),
                ),
                const SizedBox(height: 8),
                Container(
                  padding: const EdgeInsets.all(8),
                  color: Colors.grey[200],
                  child: Text(
                    '''void variableTypes() {
  int count = 10;
  double price = 99.99;
  String product = 'Laptop';
  bool isAvailable = true;

  print('Count: \$count, Price: \$price, Product: \$product, Available: \$isAvailable');
}
// Output:
// Count: 10, Price: 99.99, Product: Laptop, Available: true''',
                    style: TextStyle(fontFamily: 'monospace', fontSize: fontSize),
                  ),
                ),

                // Dynamic Type
                const SizedBox(height: 16),
                Text(
                  'Dynamic Type',
                  style: TextStyle(fontSize: headerFontSize, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 8),
                Text(
                  'The `dynamic` type allows a variable to hold values of any type, but should be used sparingly. '
                      'It’s useful when the type isn’t known until runtime, but it bypasses type checking.',
                  style: TextStyle(fontSize: fontSize),
                ),
                const SizedBox(height: 8),
                Container(
                  padding: const EdgeInsets.all(8),
                  color: Colors.grey[200],
                  child: Text(
                    '''void dynamicTypeExample() {
  dynamic value = 'Hello';
  print('Value: \$value');
  
  value = 123; // No error, 'value' now holds an integer
  print('New Value: \$value');
}
// Output:
// Value: Hello
// New Value: 123''',
                    style: TextStyle(fontFamily: 'monospace', fontSize: fontSize),
                  ),
                ),

                // Null Safety
                const SizedBox(height: 16),
                Text(
                  'Null Safety',
                  style: TextStyle(fontSize: headerFontSize, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 8),
                Text(
                  'Dart’s null safety feature helps prevent null reference errors. Variables cannot be null unless specified with a nullable type (`?`).',
                  style: TextStyle(fontSize: fontSize),
                ),
                const SizedBox(height: 8),
                Container(
                  padding: const EdgeInsets.all(8),
                  color: Colors.grey[200],
                  child: Text(
                    '''void nullSafetyExample() {
  String? nullableName; // Nullable, can hold null
  nullableName = 'John';
  
  print('Nullable Name: \$nullableName');
}
// Output:
// Nullable Name: John''',
                    style: TextStyle(fontFamily: 'monospace', fontSize: fontSize),
                  ),
                ),

                // Late Initialization
                const SizedBox(height: 16),
                Text(
                  'Late Initialization',
                  style: TextStyle(fontSize: headerFontSize, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 8),
                Text(
                  'The `late` keyword defers the initialization of a variable until it’s accessed. '
                      'It’s useful when you need to initialize a variable that requires additional setup.',
                  style: TextStyle(fontSize: fontSize),
                ),
                const SizedBox(height: 8),
                Container(
                  padding: const EdgeInsets.all(8),
                  color: Colors.grey[200],
                  child: Text(
                    '''late String description;

void initializeLateVariable() {
  description = 'This is a late-initialized variable.';
  print(description);
}
// Output:
// This is a late-initialized variable.''',
                    style: TextStyle(fontFamily: 'monospace', fontSize: fontSize),
                  ),
                ),

                // Constants in Collections
                const SizedBox(height: 16),
                Text(
                  'Constants in Collections',
                  style: TextStyle(fontSize: headerFontSize, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 8),
                Text(
                  'The `const` keyword can also make entire collections immutable, meaning the collection and its items cannot be modified.',
                  style: TextStyle(fontSize: fontSize),
                ),
                const SizedBox(height: 8),
                Container(
                  padding: const EdgeInsets.all(8),
                  color: Colors.grey[200],
                  child: Text(
                    '''void constCollectionExample() {
  const List<String> colors = ['Red', 'Green', 'Blue'];
  
  print(colors);
  // colors.add('Yellow'); // Error: Cannot modify a const list
}
// Output:
// [Red, Green, Blue]''',
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
