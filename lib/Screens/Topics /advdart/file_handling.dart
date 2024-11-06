import 'package:flutter/material.dart';
import 'dart:io';
import 'package:path_provider/path_provider.dart';
import '../../../Customs/appbar.dart';

class fileHandling extends StatelessWidget {
  const fileHandling({super.key});

  // Helper method to get the file path of the sample.txt file
  Future<String> _getFilePath() async {
    // The 'getApplicationDocumentsDirectory()' function from 'path_provider' package
    // returns the path to the app's documents directory. This is where files should be stored
    // for the app to be able to access them on the device.
    final directory = await getApplicationDocumentsDirectory();

    // The path of the file is created by appending the file name to the directory path.
    return '${directory.path}/sample.txt';
  }

  // Method to write data to a file
  Future<File> _writeToFile(String content) async {
    // Get the file path first
    final path = await _getFilePath();

    // Create a new File object with the file path
    final file = File(path);

    // The 'writeAsString' method writes a string to the file. It overwrites the content if the file exists
    // or creates a new file if it doesn't exist.
    return file.writeAsString(content);
  }

  // Method to read data from a file
  Future<String> _readFromFile() async {
    try {
      // Get the file path first
      final path = await _getFilePath();

      // Create a File instance with the file path
      final file = File(path);

      // The 'readAsString' method reads the content of the file as a string
      return await file.readAsString();
    } catch (e) {
      // If the file doesn't exist or any other error occurs, return a friendly error message
      return 'Error reading file: $e';
    }
  }

  // Method to delete the file
  Future<File> _deleteFile() async {
    // Get the file path
    final path = await _getFilePath();

    // Create a File object for the file
    final file = File(path);

    // If the file exists, delete it. If not, the method does nothing
    if (await file.exists()) {
      await file.delete();
    }

    // Return the file instance after deletion (or if not found)
    return file;
  }

  // Directory operations: creating, listing, and deleting directories
  Future<void> directoryExample() async {
    // Get the app's document directory to work with
    final directory = await getApplicationDocumentsDirectory();

    // Create a new folder (directory) inside the document directory
    final newDir = Directory('${directory.path}/new_folder');

    // Check if the directory already exists. If not, create it.
    if (!await newDir.exists()) {
      await newDir.create();
    }

    // List all files and directories inside the newly created directory
    final files = newDir.listSync();

    // Loop through each file in the directory and print its path to the console
    for (var file in files) {
      print(file.path);
    }

    // Optionally, delete the directory and all its contents (recursively)
    if (await newDir.exists()) {
      await newDir.delete(recursive: true);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: 'File Handling in Dart',
      ),
      body: LayoutBuilder(
        builder: (context, constraints) {
          // Dynamically adjust font size based on screen width
          double fontSize = constraints.maxWidth < 600 ? 16 : 18;
          double headerFontSize = constraints.maxWidth < 600 ? 22 : 24;

          return SingleChildScrollView(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Introduction to File Handling
                Text(
                  'Introduction to File Handling',
                  style: TextStyle(fontSize: headerFontSize, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 8),
                Text(
                  'In Dart and Flutter, file handling refers to reading from, writing to, and managing files in the device storage. '
                      'In this example, we will cover how to write, read, delete, and work with directories using Dart’s built-in I/O support.',
                  style: TextStyle(fontSize: fontSize),
                ),
                const SizedBox(height: 16),

                // Writing to a File
                Text(
                  'Writing to a File',
                  style: TextStyle(fontSize: headerFontSize, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 8),
                Text(
                  'To write data to a file in Dart, we use the `writeAsString` method provided by the `File` class. '
                      'This method allows you to save string data to a file, and if the file doesn’t exist, it will be created.',
                  style: TextStyle(fontSize: fontSize),
                ),
                const SizedBox(height: 8),
                Container(
                  padding: const EdgeInsets.all(8),
                  color: Colors.grey[200],
                  child: Text(
                    '''Future<File> _writeToFile(String content) async {
  final path = await _getFilePath();
  final file = File(path);
  return file.writeAsString(content);
}

// Usage example:
await _writeToFile('Hello, Dart!');
''',
                    style: TextStyle(fontFamily: 'monospace', fontSize: fontSize),
                  ),
                ),

                // Reading from a File
                const SizedBox(height: 16),
                Text(
                  'Reading from a File',
                  style: TextStyle(fontSize: headerFontSize, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 8),
                Text(
                  'To read data from a file, Dart provides the `readAsString` method, which reads the contents of the file and returns it as a string.',
                  style: TextStyle(fontSize: fontSize),
                ),
                const SizedBox(height: 8),
                Container(
                  padding: const EdgeInsets.all(8),
                  color: Colors.grey[200],
                  child: Text(
                    '''Future<String> _readFromFile() async {
  try {
    final path = await _getFilePath();
    final file = File(path);
    return await file.readAsString();
  } catch (e) {
    return 'Error reading file: \$e';
  }
}

// Usage example:
String content = await _readFromFile();
print(content);  // It prints the content of the file if it exists.
''',
                    style: TextStyle(fontFamily: 'monospace', fontSize: fontSize),
                  ),
                ),

                // Deleting a File
                const SizedBox(height: 16),
                Text(
                  'Deleting a File',
                  style: TextStyle(fontSize: headerFontSize, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 8),
                Text(
                  'To delete a file, use the `delete` method. Before deleting, it is important to check if the file exists to avoid errors.',
                  style: TextStyle(fontSize: fontSize),
                ),
                const SizedBox(height: 8),
                Container(
                  padding: const EdgeInsets.all(8),
                  color: Colors.grey[200],
                  child: Text(
                    '''Future<File> _deleteFile() async {
  final path = await _getFilePath();
  final file = File(path);
  if (await file.exists()) {
    await file.delete();
  }
  return file;
}

// Usage example:
await _deleteFile();
''',
                    style: TextStyle(fontFamily: 'monospace', fontSize: fontSize),
                  ),
                ),

                // Directory Operations: Creating, Listing, and Deleting Directories
                const SizedBox(height: 16),
                Text(
                  'Directory Operations',
                  style: TextStyle(fontSize: headerFontSize, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 8),
                Text(
                  'In addition to file handling, Dart allows you to work with directories. You can create directories, list their contents, and delete them as needed.',
                  style: TextStyle(fontSize: fontSize),
                ),
                const SizedBox(height: 8),
                Container(
                  padding: const EdgeInsets.all(8),
                  color: Colors.grey[200],
                  child: Text(
                    '''Future<void> directoryExample() async {
  final directory = await getApplicationDocumentsDirectory();
  
  // Creating a new directory
  final newDir = Directory('\${directory.path}/new_folder');
  if (!await newDir.exists()) {
    await newDir.create();
  }

  // Listing files and directories in the new folder
  final files = newDir.listSync();
  for (var file in files) {
    print(file.path); // Print each file's path
  }

  // Deleting the directory and its contents (recursively)
  if (await newDir.exists()) {
    await newDir.delete(recursive: true);
  }
}
''',
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
