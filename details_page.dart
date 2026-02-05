import 'package:flutter/material.dart';

class DetailPage extends StatelessWidget {
  final Map<String, String> itemData;

  DetailPage({super.key, required this.itemData});

  final List<Map<String, String>> messages = [
    {'sender': 'User', 'message': 'Hello!'},
    {'sender': 'Friend', 'message': 'Hi there! How are you?'},
    {'sender': 'User', 'message': 'I am good, thanks for asking!'},
    {'sender': 'Friend', 'message': 'Great to hear! What’s up?'},
    // Add more dummy messages here
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFF25D366), // WhatsApp green color
        title: Row(
          children: [
            ClipOval(
              child: SizedBox(
                width: 40.0, // Set the width of the image
                height: 40.0, // Set the height of the image
                child: Image.network(
                  itemData['image']!,
                  fit: BoxFit.cover, // Ensure the image covers the circle
                ),
              ),
            ),
            const SizedBox(width: 10.0), // Space between the image and title
            Expanded(
              child: Text(
                itemData['title']!,
                style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                overflow: TextOverflow.ellipsis,
              ),
            ),
          ],
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.videocam),
            onPressed: () {
              // Handle video call button press
            },
          ),
          IconButton(
            icon: const Icon(Icons.call),
            onPressed: () {
              // Handle phone call button press
            },
          ),
          IconButton(
            icon: const Icon(Icons.more_vert),
            onPressed: () {
              // Handle more options button press
            },
          ),
        ],
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              padding: const EdgeInsets.all(10.0),
              itemCount: messages.length,
              itemBuilder: (context, index) {
                final message = messages[index];
                return Align(
                  alignment: message['sender'] == 'User'
                      ? Alignment.centerRight
                      : Alignment.centerLeft,
                  child: Container(
                    margin: const EdgeInsets.symmetric(vertical: 5.0),
                    padding: const EdgeInsets.all(10.0),
                    constraints: const BoxConstraints(maxWidth: 250.0),
                    decoration: BoxDecoration(
                      color: message['sender'] == 'User'
                          ? const Color(0xFFE1FFC7) // WhatsApp outgoing message color
                          : Colors.white,
                      borderRadius: BorderRadius.circular(8.0),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.2),
                          spreadRadius: 1,
                          blurRadius: 3,
                          offset: const Offset(0, 1),
                        ),
                      ],
                    ),
                    child: Text(
                      message['message']!,
                      style: TextStyle(
                        color: message['sender'] == 'User'
                            ? Colors.black
                            : Colors.black,
                      ),
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
                    decoration: InputDecoration(
                      hintText: 'Type a message',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30.0),
                      ),
                      contentPadding: const EdgeInsets.symmetric(horizontal: 20.0),
                    ),
                  ),
                ),
                const SizedBox(width: 8.0),
                IconButton(
                  icon: const Icon(Icons.send),
                  onPressed: () {
                    // Handle send button press
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
