//
// // Dart Basics Introduction
// // This file contains explanations and examples for basic Dart concepts.
//
// // Hello World
// // The starting point for any Dart program is the main function.
// void helloWorld() {
//   // Printing "Hello, World!" to the console
//   print('Hello, World!');
// }
//
// // Variables
// // Variables in Dart store data, and the type of data can be inferred or explicitly declared.
// void variablesExample() {
//   var name = 'Dart';  // inferred as String
//   int year = 2024;    // explicitly declared as int
//   double score = 99.9; // double type
//   bool isAlive = true; // boolean type
//   print('Name: $name, Year: $year, Score: $score, Alive: $isAlive');
// }
//
// // Control Flow Statements
// // Dart supports if-else, switch, for, while, and do-while loops.
// void controlFlowExample() {
//   int number = 3;
//
//   // If-else statement
//   if (number > 0) {
//     print('Positive number');
//   } else {
//     print('Negative number');
//   }
//
//   // Switch-case statement
//   switch (number) {
//     case 1:
//       print('One');
//       break;
//     case 2:
//       print('Two');
//       break;
//     default:
//       print('Other number');
//   }
//
//   // Loops
//   for (int i = 0; i < 5; i++) {
//     print('Loop iteration $i');
//   }
// }
//
// // Functions
// // Dart functions are objects and can be passed as arguments or returned from other functions.
// String greet(String name) {
//   return 'Hello, $name!';
// }
//
// // Comments
// // Single-line comments use double slashes
// /*
//   Multi-line comments use slash and asterisk
// */
//
// // Imports
// // To use external libraries or files, import them at the start of the file.
// import 'dart:math';
//
// void importsExample() {
//   var randomNumber = Random().nextInt(100); // generates a random number
//   print('Random Number: $randomNumber');
// }
//
// // Classes
// // Dart is an object-oriented language, so classes and objects are fundamental concepts.
// class Person {
//   String name;
//   int age;
//
//   // Constructor
//   Person(this.name, this.age);
//
//   void introduce() {
//     print('Hello, my name is $name and I am $age years old.');
//   }
// }
//
// // Enums
// // Enumerations are used to define a fixed set of constants.
// enum Colors { red, green, blue }
//
// void enumsExample() {
//   Colors favoriteColor = Colors.green;
//   switch (favoriteColor) {
//     case Colors.red:
//       print('Favorite color is red');
//       break;
//     case Colors.green:
//       print('Favorite color is green');
//       break;
//     case Colors.blue:
//       print('Favorite color is blue');
//       break;
//   }
// }
//
// // Inheritance
// // Dart supports inheritance, allowing you to create a class that reuses code from another class.
// class Animal {
//   void makeSound() {
//     print('Animal makes sound');
//   }
// }
//
// class Dog extends Animal {
//   @override
//   void makeSound() {
//     print('Dog barks');
//   }
// }
//
// // Mixins
// // Mixins are a way to reuse a class's code in multiple class hierarchies.
// mixin Swimming {
//   void swim() {
//     print('Swimming');
//   }
// }
//
// class Fish with Swimming {}
//
// // Interfaces and Abstract Classes
// // Abstract classes cannot be instantiated but can be subclassed.
// abstract class Shape {
//   void draw(); // Abstract method
// }
//
// class Circle extends Shape {
//   @override
//   void draw() {
//     print('Drawing a circle');
//   }
// }
//
// // Async and Await
// // Dart is asynchronous and supports async/await for non-blocking operations.
// Future<void> fetchData() async {
//   print('Fetching data...');
//   await Future.delayed(Duration(seconds: 2));
//   print('Data fetched!');
// }
//
// // Exceptions
// // Exceptions allow you to handle errors gracefully.
// void exceptionExample() {
//   try {
//     int result = 10 ~/ 0; // Integer division by zero
//     print(result);
//   } catch (e) {
//     print('Caught an exception: $e');
//   }
// }
//
// // Important Concepts: Final and Const, Null Safety
// // `final` means a variable can be set only once; `const` makes it a compile-time constant.
// // Null safety prevents null reference errors.
//
// void main() {
//   helloWorld();
//   variablesExample();
//   controlFlowExample();
//   print(greet('Sizan'));
//   importsExample();
//
//   var person = Person('Sizan', 23);
//   person.introduce();
//
//   enumsExample();
//
//   var dog = Dog();
//   dog.makeSound();
//
//   var fish = Fish();
//   fish.swim();
//
//   var circle = Circle();
//   circle.draw();
//
//   fetchData();
//   exceptionExample();
// }
