
import 'package:flutter/material.dart';

class ChatScreen extends StatefulWidget {
  final String contactName;

  const ChatScreen({
    super.key,
    required this.contactName,
  });

  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {

  final TextEditingController messageController =
      TextEditingController();

  final List<Map<String, dynamic>> messages = [
    {'text': 'Hello!', 'isMe': false, 'time': '10:00 AM'},
    {'text': 'How are you?', 'isMe': true, 'time': '10:01 AM'},
    {'text': 'I am fine.', 'isMe': false, 'time': '10:02 AM'},
  ];

  @override
  void dispose() {
    messageController.dispose();
    super.dispose();
  }

  void sendMessage() {
    final text = messageController.text.trim();

    if (text.isEmpty) return;

    setState(() {
      messages.add({
        'text': text,
        'isMe': true,
        'time': TimeOfDay.now().format(context),
      });
    });

    messageController.clear();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            const CircleAvatar(
              backgroundColor: Color(0xFF075E54),
              child: Icon(Icons.person, color: Colors.white),
            ),
            const SizedBox(width: 10),
            Text(widget.contactName),
          ],
        ),
      ),

      body: Column(
        children: [

          Expanded(
            child: ListView.builder(
              padding: const EdgeInsets.all(12),
              itemCount: messages.length,

              itemBuilder: (context, index) {
                final message = messages[index];
                final isMe = message['isMe'] as bool;

                return Align(
                  alignment: isMe
                      ? Alignment.centerRight
                      : Alignment.centerLeft,

                  child: Container(
                    margin: const EdgeInsets.symmetric(vertical: 5),
                    padding: const EdgeInsets.all(12),

                    constraints: BoxConstraints(
                      maxWidth: MediaQuery.of(context).size.width * 0.75,
                    ),

                    decoration: BoxDecoration(
                      color: isMe
                          ? const Color(0xFFD9FDD3)
                          : Colors.grey.shade200,
                      borderRadius: BorderRadius.circular(12),
                    ),

                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text(message['text'] as String),
                        const SizedBox(height: 5),
                        Text(
                          message['time'] as String,
                          style: const TextStyle(
                            fontSize: 10,
                            color: Colors.grey,
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          ),

          Container(
            padding: const EdgeInsets.all(10),
            color: Colors.white,

            child: Row(
              children: [
                Expanded(
                  child: TextField(
                    controller: messageController,
                    decoration: InputDecoration(
                      hintText: 'Type a message',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(25),
                      ),
                      contentPadding: const EdgeInsets.symmetric(
                        horizontal: 15,
                      ),
                    ),
                  ),
                ),

                IconButton(
                  onPressed: sendMessage,
                  icon: const Icon(
                    Icons.send,
                    color: Color.fromARGB(255, 61, 94, 7),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
