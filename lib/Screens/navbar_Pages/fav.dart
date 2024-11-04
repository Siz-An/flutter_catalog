import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class ChatBot extends StatefulWidget {
  @override
  _ChatBotState createState() => _ChatBotState();
}

class _ChatBotState extends State<ChatBot> {
  final TextEditingController _controller = TextEditingController();
  final List<String> _messages = [];
  final String apiKey = 'sk-522b301e3ae0d0c9d7d2faa1687fc3d7c3bf8134df8a3371'; // Replace with your Notd AI API key

  // Function to call Notd AI API
  Future<String> _getResponseFromNotdAI(String query) async {
    // Replace with the correct Notd AI endpoint URL
    final url = Uri.parse('https://api.notdiamond.ai/v1/chat');

    final headers = {
      'Authorization': 'Bearer $apiKey',
      'Content-Type': 'application/json',
    };

    final body = json.encode({
      'model': 'your-model-name', // Replace with the model name if required by Notd AI
      'messages': [
        {'role': 'user', 'content': query},
      ],
    });

    try {
      final response = await http.post(url, headers: headers, body: body);
      print('Status code: ${response.statusCode}');
      print('Response body: ${response.body}');

      if (response.statusCode == 200) {
        final data = json.decode(response.body);
        return data['choices'][0]['message']['content'] ?? 'No response found.';
      } else {
        return 'Error: Unable to fetch response from Notd AI API. Status code: ${response.statusCode}';
      }
    } catch (e) {
      print('Exception: $e');
      return 'Error: $e';
    }
  }

  // Function to handle sending messages
  void _sendMessage(String message) async {
    if (message.isNotEmpty) {
      setState(() {
        _messages.add('You: $message');
      });

      _controller.clear();

      // Get response from Notd AI API
      String response = await _getResponseFromNotdAI(message);

      setState(() {
        _messages.add('Bot: $response');
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ChatBot'),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              padding: EdgeInsets.all(16.0),
              itemCount: _messages.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.symmetric(vertical: 4.0),
                  child: Align(
                    alignment: _messages[index].startsWith('You')
                        ? Alignment.centerRight
                        : Alignment.centerLeft,
                    child: Container(
                      padding: EdgeInsets.all(12),
                      decoration: BoxDecoration(
                        color: _messages[index].startsWith('You')
                            ? Colors.blue[100]
                            : Colors.grey[300],
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Text(_messages[index]),
                    ),
                  ),
                );
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Expanded(
                  child: TextField(
                    controller: _controller,
                    decoration: InputDecoration(
                      hintText: 'Type your message...',
                      border: OutlineInputBorder(),
                    ),
                    onSubmitted: _sendMessage,
                  ),
                ),
                IconButton(
                  icon: Icon(Icons.send),
                  onPressed: () => _sendMessage(_controller.text),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
