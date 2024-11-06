import 'package:flutter/material.dart';
import '../../../Customs/appbar.dart';

class collection extends StatelessWidget {
  const collection({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: 'Dart Collections Tutorial',
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
                // Lists
                Text(
                  'Lists',
                  style: TextStyle(fontSize: headerFontSize, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 8),
                Text(
                  'Lists in Dart are ordered collections of elements. Each item in a list is indexed and can be accessed by its position in the list. Lists allow duplicates and are versatile for many data manipulation tasks.',
                  style: TextStyle(fontSize: fontSize),
                ),
                const SizedBox(height: 8),
                Container(
                  padding: const EdgeInsets.all(8),
                  color: Colors.grey[200],
                  child: Text(
                    '''void listExample() {
  List<String> fruits = ['Apple', 'Banana', 'Cherry'];
  fruits.add('Date'); // Add an item to the list
  fruits.insert(1, 'Mango'); // Insert an item at a specific index
  print(fruits);
  // Output: [Apple, Mango, Banana, Cherry, Date]
}''',
                    style: TextStyle(fontFamily: 'monospace', fontSize: fontSize),
                  ),
                ),

                // Sets
                const SizedBox(height: 16),
                Text(
                  'Sets',
                  style: TextStyle(fontSize: headerFontSize, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 8),
                Text(
                  'Sets are unordered collections of unique items. They are useful when you need to store data and ensure no duplicates. Sets are faster than lists for checking whether an item is contained within them.',
                  style: TextStyle(fontSize: fontSize),
                ),
                const SizedBox(height: 8),
                Container(
                  padding: const EdgeInsets.all(8),
                  color: Colors.grey[200],
                  child: Text(
                    '''void setExample() {
  Set<int> uniqueNumbers = {1, 2, 3, 4};
  uniqueNumbers.add(4); // Duplicate will not be added
  print(uniqueNumbers);
  // Output: {1, 2, 3, 4}
  
  uniqueNumbers.add(5); // Adding a new unique item
  print(uniqueNumbers);
  // Output: {1, 2, 3, 4, 5}
}''',
                    style: TextStyle(fontFamily: 'monospace', fontSize: fontSize),
                  ),
                ),

                // Maps
                const SizedBox(height: 16),
                Text(
                  'Maps',
                  style: TextStyle(fontSize: headerFontSize, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 8),
                Text(
                  'Maps in Dart are collections of key-value pairs, where each key is unique. This structure is great for quick lookups where you need to map a specific key to a value.',
                  style: TextStyle(fontSize: fontSize),
                ),
                const SizedBox(height: 8),
                Container(
                  padding: const EdgeInsets.all(8),
                  color: Colors.grey[200],
                  child: Text(
                    '''void mapExample() {
  Map<String, int> fruitPrices = {
    'Apple': 2,
    'Banana': 1,
    'Cherry': 3
  };
  print(fruitPrices['Apple']); // Output: 2
  
  // Add new key-value pair
  fruitPrices['Orange'] = 4;
  print(fruitPrices);
  // Output: {Apple: 2, Banana: 1, Cherry: 3, Orange: 4}
  
  // Remove key-value pair
  fruitPrices.remove('Banana');
  print(fruitPrices);
  // Output: {Apple: 2, Cherry: 3, Orange: 4}
}''',
                    style: TextStyle(fontFamily: 'monospace', fontSize: fontSize),
                  ),
                ),

                // Collection If
                const SizedBox(height: 16),
                Text(
                  'Collection If',
                  style: TextStyle(fontSize: headerFontSize, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 8),
                Text(
                  'The collection if statement allows you to conditionally add elements to a collection based on some condition. This is useful when building dynamic lists.',
                  style: TextStyle(fontSize: fontSize),
                ),
                const SizedBox(height: 8),
                Container(
                  padding: const EdgeInsets.all(8),
                  color: Colors.grey[200],
                  child: Text(
                    '''void collectionIfExample(bool addBanana) {
  var fruits = [
    'Apple',
    if (addBanana) 'Banana', // Conditionally add Banana
    'Cherry',
  ];
  print(fruits);
  // Output when addBanana is true: [Apple, Banana, Cherry]
  // Output when addBanana is false: [Apple, Cherry]
}''',
                    style: TextStyle(fontFamily: 'monospace', fontSize: fontSize),
                  ),
                ),

                // Collection For
                const SizedBox(height: 16),
                Text(
                  'Collection For',
                  style: TextStyle(fontSize: headerFontSize, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 8),
                Text(
                  'The collection for allows you to iterate over an existing collection and add elements to a new collection. This is helpful for transforming data.',
                  style: TextStyle(fontSize: fontSize),
                ),
                const SizedBox(height: 8),
                Container(
                  padding: const EdgeInsets.all(8),
                  color: Colors.grey[200],
                  child: Text(
                    '''void collectionForExample() {
  var numbers = [1, 2, 3];
  var doubledNumbers = [
    for (var number in numbers) number * 2 // Double each number
  ];
  print(doubledNumbers); 
  // Output: [2, 4, 6]
  
  // Adding conditional transformation
  var evenNumbers = [
    for (var number in numbers) if (number.isEven) number
  ];
  print(evenNumbers); 
  // Output: [2]
}''',
                    style: TextStyle(fontFamily: 'monospace', fontSize: fontSize),
                  ),
                ),

                // Nested Collections Example
                const SizedBox(height: 16),
                Text(
                  'Nested Collections',
                  style: TextStyle(fontSize: headerFontSize, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 8),
                Text(
                  'You can also nest collections within each other, such as lists within maps or sets within lists. This allows for more complex data structures.',
                  style: TextStyle(fontSize: fontSize),
                ),
                const SizedBox(height: 8),
                Container(
                  padding: const EdgeInsets.all(8),
                  color: Colors.grey[200],
                  child: Text(
                    '''void nestedCollectionExample() {
  Map<String, List<String>> fruitCategories = {
    'Citrus': ['Orange', 'Lemon'],
    'Berries': ['Strawberry', 'Blueberry'],
  };
  
  // Accessing a nested list inside a map
  print(fruitCategories['Citrus']); // Output: [Orange, Lemon]
  
  // Adding to a nested list
  fruitCategories['Citrus']?.add('Grapefruit');
  print(fruitCategories['Citrus']); // Output: [Orange, Lemon, Grapefruit]
}''',
                    style: TextStyle(fontFamily: 'monospace', fontSize: fontSize),
                  ),
                ),

                // Performance Considerations
                const SizedBox(height: 16),
                Text(
                  'Performance Considerations',
                  style: TextStyle(fontSize: headerFontSize, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 8),
                Text(
                  'While working with collections, it’s important to consider their performance. Lists are good when you need order, sets are better for uniqueness, and maps are ideal for fast key-value lookups.',
                  style: TextStyle(fontSize: fontSize),
                ),
                const SizedBox(height: 8),
                Text(
                  'In general, use the right collection type for your specific needs, as choosing the wrong one can result in slower performance or unnecessary complexity.',
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
