
import 'package:flutter/material.dart';
import 'chat_screen.dart';
import 'contacts_screen.dart';

class ChatsScreen extends StatelessWidget {
  const ChatsScreen({super.key});

  final List<Map<String, String>> chats = const [
    {
      'name': 'Hassan',
      'message': 'Hello, how are you?',
      'time': '10:30 AM',
      'initial': 's',
    },
    {
      'name': 'Ali',
      'message': 'See you tomorrow!',
      'time': '09:45 AM',
      'initial': 'A',
    },
    {
      'name': 'Usman',
      'message': 'Flutter project completed',
      'time': 'Yesterday',
      'initial': 'U',
    },
    {
      'name': 'Hamza',
      'message': 'Send me the assignment',
      'time': 'Yesterday',
      'initial': 'H',
    },
    {
      'name': 'Class Group',
      'message': 'New assignment uploaded',
      'time': 'Yesterday',
      'initial': 'C',
    },

     {
      'name': 'Ahmed',
      'message': 'Hello, how are you?',
      'time': '10:30 AM',
      'initial': 'A',
    },
    {
      'name': 'Ali',
      'message': 'See you tomorrow!',
      'time': '09:45 AM',
      'initial': 'A',
    },
    {
      'name': 'Usman',
      'message': 'Flutter project completed',
      'time': 'Yesterday',
      'initial': 'U',
    },
    {
      'name': 'Hamza',
      'message': 'Send me the assignment',
      'time': 'Yesterday',
      'initial': 'H',
    },
    {
      'name': 'Class Group',
      'message': 'New assignment uploaded',
      'time': 'Yesterday',
      'initial': 'C',
    },

     {
      'name': 'Ahmed',
      'message': 'Hello, how are you?',
      'time': '10:30 AM',
      'initial': 'A',
    },
    {
      'name': 'Ali',
      'message': 'See you tomorrow!',
      'time': '09:45 AM',
      'initial': 'A',
    },
    {
      'name': 'Usman',
      'message': 'Flutter project completed',
      'time': 'Yesterday',
      'initial': 'U',
    },
    {
      'name': 'Hamza',
      'message': 'Send me the assignment',
      'time': 'Yesterday',
      'initial': 'H',
    },
    {
      'name': 'Class Group',
      'message': 'New assignment uploaded',
      'time': 'Yesterday',
      'initial': 'C',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: chats.length,

        itemBuilder: (context, index) {
          final chat = chats[index];

          return ListTile(
            leading: CircleAvatar(
              radius: 27,
              backgroundColor: const Color.fromARGB(255, 42, 94, 7),
              child: Text(
                chat['initial']!,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                ),
              ),
            ),

            title: Text(
              chat['name']!,
              style: const TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),

            subtitle: Text(chat['message']!),

            trailing: Text(
              chat['time']!,
              style: const TextStyle(
                fontSize: 11,
                color: Colors.grey,
              ),
            ),

            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => ChatScreen(
                    contactName: chat['name']!,
                  ),
                ),
              );
            },
          );
        },
      ),

      floatingActionButton: FloatingActionButton(
        backgroundColor: const Color.fromARGB(255, 15, 192, 59),
        foregroundColor: Colors.white,
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const ContactsScreen(),
            ),
          );
        },
        child: const Icon(Icons.message),
      ),
    );
  }
}
