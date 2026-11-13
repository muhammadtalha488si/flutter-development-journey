
import 'package:flutter/material.dart';
import 'profile_screen.dart';
import 'settings_detail_screens.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  static const green = Color(0xFF008F76);

  void openPage(BuildContext context, Widget page) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (_) => page),
    );
  }

  Widget settingTile(
    BuildContext context,
    IconData icon,
    String title,
    String subtitle,
    Widget page,
  ) {
    return ListTile(
      leading: Icon(icon, color: Colors.grey.shade700),
      title: Text(
        title,
        style: const TextStyle(fontWeight: FontWeight.w500),
      ),
      subtitle: Text(subtitle),
      trailing: const Icon(
        Icons.chevron_right,
        color: Colors.grey,
      ),
      onTap: () => openPage(context, page),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF8FAF9),
      appBar: AppBar(
        title: const Text('Settings'),
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        elevation: 0,
      ),
      body: ListView(
        children: [
          const SizedBox(height: 10),

          ListTile(
            contentPadding: const EdgeInsets.all(16),
            leading: const CircleAvatar(
              radius: 29,
              backgroundColor: Color(0xFFD8F3EA),
              child: Icon(
                Icons.person,
                size: 34,
                color: green,
              ),
            ),
            title: const Text(
              'Your Name',
              style: TextStyle(
                fontSize: 17,
                fontWeight: FontWeight.bold,
              ),
            ),
            subtitle: const Text('Available'),
            trailing: const Icon(Icons.qr_code, color: green),
            onTap: () => openPage(
              context,
              const ProfileScreen(),
            ),
          ),

          const Divider(height: 20),

          settingTile(
            context,
            Icons.key_outlined,
            'Account',
            'Security notifications, change number',
            const AccountScreen(),
          ),

          settingTile(
            context,
            Icons.lock_outline,
            'Privacy',
            'Block contacts, disappearing messages',
            const PrivacyScreen(),
          ),

          settingTile(
            context,
            Icons.person_outline,
            'Avatar',
            'Create and edit your avatar',
            const AvatarScreen(),
          ),

          settingTile(
            context,
            Icons.chat_bubble_outline,
            'Chats',
            'Theme, wallpaper, chat history',
            const ChatSettingsScreen(),
          ),

          settingTile(
            context,
            Icons.notifications_none,
            'Notifications',
            'Message, group and call notifications',
            const NotificationsScreen(),
          ),

          settingTile(
            context,
            Icons.storage_outlined,
            'Storage and data',
            'Network usage, media auto-download',
            const StorageScreen(),
          ),

          settingTile(
            context,
            Icons.devices_outlined,
            'Linked devices',
            'Manage devices connected to your account',
            const LinkedDevicesScreen(),
          ),

          settingTile(
            context,
            Icons.help_outline,
            'Help',
            'Help center, contact us, privacy policy',
            const HelpScreen(),
          ),

          ListTile(
            leading: const Icon(
              Icons.people_outline,
              color: Colors.grey,
            ),
            title: const Text('Invite a friend'),
            subtitle: const Text('Share WhatsApp with friends'),
            onTap: () {
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(
                  content: Text('Invite friend UI demonstration'),
                ),
              );
            },
          ),

          const SizedBox(height: 25),

          const Center(
            child: Column(
              children: [
                Text(
                  'WhatsApp UI Practice Project',
                  style: TextStyle(color: Colors.grey, fontSize: 12),
                ),
                SizedBox(height: 5),
                Text(
                  'Version 2026 UI Demo',
                  style: TextStyle(color: Colors.grey, fontSize: 11),
                ),
              ],
            ),
          ),

          const SizedBox(height: 25),
        ],
      ),
    );
  }
}
