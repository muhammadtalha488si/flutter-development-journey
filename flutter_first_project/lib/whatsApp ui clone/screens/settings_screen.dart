
import 'package:flutter/material.dart';
import 'profile_screen.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [

        ListTile(
          leading: const CircleAvatar(
            radius: 28,
            backgroundColor: Color(0xFF075E54),
            child: Icon(Icons.person, color: Colors.white),
          ),

          title: const Text(
            'My Profile',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),

          subtitle: const Text('Hey there! I am using WhatsApp.'),

          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const ProfileScreen(),
              ),
            );
          },
        ),

        const Divider(),

        const ListTile(
          leading: Icon(Icons.key),
          title: Text('Account'),
          subtitle: Text('Security notifications, change number'),
        ),

        const ListTile(
          leading: Icon(Icons.lock),
          title: Text('Privacy'),
          subtitle: Text('Block contacts, disappearing messages'),
        ),

        const ListTile(
          leading: Icon(Icons.chat),
          title: Text('Chats'),
          subtitle: Text('Theme, wallpapers, chat history'),
        ),

        const ListTile(
          leading: Icon(Icons.notifications),
          title: Text('Notifications'),
          subtitle: Text('Message, group and call tones'),
        ),

        const ListTile(
          leading: Icon(Icons.storage),
          title: Text('Storage and data'),
        ),

        const ListTile(
          leading: Icon(Icons.help),
          title: Text('Help'),
        ),
      ],
    );
  }
}
