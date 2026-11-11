
import 'package:flutter/material.dart';
import 'chat_screen.dart';

class ContactsScreen extends StatelessWidget {
  const ContactsScreen({super.key});

  final List<String> contacts = const [
    'Ahmed',
    'Ali',
    'Usman',
    'Hamza',
    'Bilal',
    'Hassan',
    'Ayesha',
    'Sara',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Select Contact'),
      ),

      body: ListView.builder(
        itemCount: contacts.length,

        itemBuilder: (context, index) {
          final name = contacts[index];

          return ListTile(
            leading: const CircleAvatar(
              backgroundColor: Color(0xFF075E54),
              child: Icon(Icons.person, color: Colors.white),
            ),

            title: Text(name),

            subtitle: const Text('Available'),

            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => ChatScreen(
                    contactName: name,
                  ),
                ),
              );
            },
          );
        },
      ),
    );
  }
}
