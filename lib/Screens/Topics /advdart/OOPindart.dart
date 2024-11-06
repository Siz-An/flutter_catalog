import 'package:flutter/material.dart';
import '../../../Customs/appbar.dart';

class OOP extends StatelessWidget {
  const OOP({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: 'Dart OOP Tutorial',
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
                // Introduction to OOP
                Text(
                  'Introduction to Object-Oriented Programming',
                  style: TextStyle(fontSize: headerFontSize, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 8),
                Text(
                  'Object-Oriented Programming (OOP) is a paradigm that organizes software design around data, or objects, '
                      'rather than functions and logic. In Dart, the key principles are encapsulation, inheritance, polymorphism, and abstraction.',
                  style: TextStyle(fontSize: fontSize),
                ),
                const SizedBox(height: 16),

                // Classes and Objects
                Text(
                  'Classes and Objects',
                  style: TextStyle(fontSize: headerFontSize, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 8),
                Text(
                  'A class is a blueprint for creating objects. Each object has properties and behaviors defined by the class. '
                      'For example, a `Car` class might have properties like `color` and `speed`, and behaviors like `drive()` and `stop()`.',
                  style: TextStyle(fontSize: fontSize),
                ),
                const SizedBox(height: 8),
                Container(
                  padding: const EdgeInsets.all(8),
                  color: Colors.grey[200],
                  child: Text(
                    '''class Car {
  String color;
  int speed;

  Car(this.color, this.speed);

  void drive() {
    print('The \$color car is driving at \$speed mph.');
  }
}

void main() {
  var car = Car('red', 60);
  car.drive();
  // Output: The red car is driving at 60 mph.
}''',
                    style: TextStyle(fontFamily: 'monospace', fontSize: fontSize),
                  ),
                ),

                // Constructors
                const SizedBox(height: 16),
                Text(
                  'Constructors',
                  style: TextStyle(fontSize: headerFontSize, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 8),
                Text(
                  'Constructors are special methods called when an object is instantiated. In Dart, you can define default constructors, '
                      'named constructors, and initializer lists to set up initial values.',
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

  // Default constructor
  Person(this.name, this.age);

  // Named constructor
  Person.teenager(this.name) : age = 15;

  void introduce() {
    print('Hi, I am \$name and I am \$age years old.');
  }
}

void main() {
  var adult = Person('Alice', 30);
  var teen = Person.teenager('Bob');
  adult.introduce(); // Hi, I am Alice and I am 30 years old.
  teen.introduce();  // Hi, I am Bob and I am 15 years old.
}''',
                    style: TextStyle(fontFamily: 'monospace', fontSize: fontSize),
                  ),
                ),

                // Encapsulation
                const SizedBox(height: 16),
                Text(
                  'Encapsulation (Using Getters and Setters)',
                  style: TextStyle(fontSize: headerFontSize, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 8),
                Text(
                  'Encapsulation restricts direct access to certain properties and allows controlled access through getter and setter methods. '
                      'It helps in protecting the integrity of data.',
                  style: TextStyle(fontSize: fontSize),
                ),
                const SizedBox(height: 8),
                Container(
                  padding: const EdgeInsets.all(8),
                  color: Colors.grey[200],
                  child: Text(
                    '''class BankAccount {
  double _balance = 0.0;

  // Getter
  double get balance => _balance;

  // Setter
  set deposit(double amount) {
    if (amount > 0) _balance += amount;
  }
}

void main() {
  var account = BankAccount();
  account.deposit = 100;
  print('Balance: \$\${account.balance}'); // Balance: \$100.0
}''',
                    style: TextStyle(fontFamily: 'monospace', fontSize: fontSize),
                  ),
                ),

                // Inheritance
                const SizedBox(height: 16),
                Text(
                  'Inheritance',
                  style: TextStyle(fontSize: headerFontSize, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 8),
                Text(
                  'Inheritance allows a class to inherit properties and methods from another class. This helps promote code reuse.',
                  style: TextStyle(fontSize: fontSize),
                ),
                const SizedBox(height: 8),
                Container(
                  padding: const EdgeInsets.all(8),
                  color: Colors.grey[200],
                  child: Text(
                    '''class Animal {
  void eat() => print('Animal is eating');
}

class Dog extends Animal {
  void bark() => print('Dog is barking');
}

void main() {
  var dog = Dog();
  dog.eat();   // Inherited method
  dog.bark();  // Method from Dog class
}''',
                    style: TextStyle(fontFamily: 'monospace', fontSize: fontSize),
                  ),
                ),

                // Method Overriding
                const SizedBox(height: 16),
                Text(
                  'Method Overriding',
                  style: TextStyle(fontSize: headerFontSize, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 8),
                Text(
                  'Method overriding allows a subclass to provide a specific implementation of a method defined in its superclass.',
                  style: TextStyle(fontSize: fontSize),
                ),
                const SizedBox(height: 8),
                Container(
                  padding: const EdgeInsets.all(8),
                  color: Colors.grey[200],
                  child: Text(
                    '''class Animal {
  void speak() => print('Animal sound');
}

class Cat extends Animal {
  @override
  void speak() => print('Cat meows');
}

void main() {
  var cat = Cat();
  cat.speak();  // Output: Cat meows
}''',
                    style: TextStyle(fontFamily: 'monospace', fontSize: fontSize),
                  ),
                ),

                // Polymorphism
                const SizedBox(height: 16),
                Text(
                  'Polymorphism',
                  style: TextStyle(fontSize: headerFontSize, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 8),
                Text(
                  'Polymorphism lets you use a single type to represent different types of objects. '
                      'For example, you can create an array of different types of animals and call the same method on each.',
                  style: TextStyle(fontSize: fontSize),
                ),
                const SizedBox(height: 8),
                Container(
                  padding: const EdgeInsets.all(8),
                  color: Colors.grey[200],
                  child: Text(
                    '''class Animal {
  void speak() => print('Animal sound');
}

class Dog extends Animal {
  @override
  void speak() => print('Dog barks');
}

class Cat extends Animal {
  @override
  void speak() => print('Cat meows');
}

void main() {
  List<Animal> animals = [Dog(), Cat()];
  animals.forEach((animal) => animal.speak());
  // Output:
  // Dog barks
  // Cat meows
}''',
                    style: TextStyle(fontFamily: 'monospace', fontSize: fontSize),
                  ),
                ),

                // Mixins
                const SizedBox(height: 16),
                Text(
                  'Mixins',
                  style: TextStyle(fontSize: headerFontSize, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 8),
                Text(
                  'Mixins allow you to add functionality to a class without inheritance. In Dart, mixins are implemented using the `with` keyword.',
                  style: TextStyle(fontSize: fontSize),
                ),
                const SizedBox(height: 8),
                Container(
                  padding: const EdgeInsets.all(8),
                  color: Colors.grey[200],
                  child: Text(
                    '''mixin CanFly {
  void fly() => print('Flying');
}

class Bird with CanFly {}

void main() {
  var bird = Bird();
  bird.fly();  // Output: Flying
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
