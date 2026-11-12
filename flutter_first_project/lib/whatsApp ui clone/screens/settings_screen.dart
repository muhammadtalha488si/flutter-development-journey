
import 'package:flutter/material.dart';
import 'profile_screen.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.symmetric(vertical: 10),
      children: [
        ListTile(
          leading: const CircleAvatar(
            radius: 28,
            backgroundColor: Color(0xFF008F76),
            child: Icon(Icons.person, color: Colors.white),
          ),
          title: const Text(
            'My Profile',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          subtitle: const Text('Hey there! I am using WhatsApp.'),
          trailing: const Icon(Icons.qr_code),
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (_) => const ProfileScreen(),
              ),
            );
          },
        ),

        const Divider(),

        _setting(
          Icons.key_outlined,
          'Account',
          'Security, account information',
        ),
        _setting(
          Icons.lock_outline,
          'Privacy',
          'Last seen, profile photo, blocked contacts',
        ),
        _setting(
          Icons.chat_bubble_outline,
          'Chats',
          'Theme, wallpapers, chat history',
        ),
        _setting(
          Icons.notifications_none,
          'Notifications',
          'Message, group and call tones',
        ),
        _setting(
          Icons.storage_outlined,
          'Storage and data',
          'Network usage and storage management',
        ),
        _setting(
          Icons.language,
          'App language',
          'English',
        ),
        _setting(
          Icons.help_outline,
          'Help',
          'Help center, contact us, privacy policy',
        ),
        _setting(
          Icons.people_outline,
          'Invite a friend',
          'Share this app with friends',
        ),
      ],
    );
  }

  Widget _setting(IconData icon, String title, String subtitle) {
    return ListTile(
      leading: Icon(icon, color: const Color(0xFF008F76)),
      title: Text(title),
      subtitle: Text(subtitle),
      onTap: () {},
    );
  }
}
