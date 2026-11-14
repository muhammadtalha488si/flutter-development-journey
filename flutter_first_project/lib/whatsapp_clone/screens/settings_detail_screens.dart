
import 'package:flutter/material.dart';

const appGreen = Color(0xFF008F76);

// Reusable settings row
Widget detailTile(
  BuildContext context,
  IconData icon,
  String title,
  String subtitle,
) {
  return ListTile(
    leading: Icon(icon, color: Colors.grey.shade700),
    title: Text(title),
    subtitle: Text(subtitle),
    trailing: const Icon(Icons.chevron_right),
    onTap: () {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('$title UI option')),
      );
    },
  );
}

// Reusable detail page
class DetailPage extends StatelessWidget {
  final String title;
  final List<Widget> children;

  const DetailPage({
    super.key,
    required this.title,
    required this.children,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF8FAF9),
      appBar: AppBar(
        title: Text(title),
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        elevation: 0,
      ),
      body: ListView(
        children: children,
      ),
    );
  }
}

// ACCOUNT SCREEN
class AccountScreen extends StatelessWidget {
  const AccountScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DetailPage(
      title: 'Account',
      children: [
        detailTile(
          context,
          Icons.security,
          'Security notifications',
          'Get notified when security codes change',
        ),
        detailTile(
          context,
          Icons.verified_user_outlined,
          'Two-step verification',
          'Add extra security to your account',
        ),
        detailTile(
          context,
          Icons.phone_android,
          'Change number',
          'Change your phone number',
        ),
        detailTile(
          context,
          Icons.person_remove_outlined,
          'Delete account',
          'Delete your account',
        ),
      ],
    );
  }
}

// PRIVACY SCREEN
class PrivacyScreen extends StatefulWidget {
  const PrivacyScreen({super.key});

  @override
  State<PrivacyScreen> createState() => _PrivacyScreenState();
}

class _PrivacyScreenState extends State<PrivacyScreen> {
  String lastSeen = 'My contacts';
  String profilePhoto = 'Everyone';
  String about = 'Everyone';
  bool readReceipts = true;
  bool onlineStatus = true;

  Widget privacyOption(
    String title,
    String value,
    VoidCallback onTap,
  ) {
    return ListTile(
      title: Text(title),
      subtitle: Text(value),
      trailing: const Icon(Icons.chevron_right),
      onTap: onTap,
    );
  }

  void selectOption(
    String title,
    String current,
    List<String> options,
    Function(String) onSelected,
  ) {
    showDialog(
      context: context,
      builder: (dialogContext) => SimpleDialog(
        title: Text(title),
        children: options.map((option) {
          return RadioListTile<String>(
            value: option,
            groupValue: current,
            activeColor: appGreen,
            title: Text(option),
            onChanged: (value) {
              if (value != null) {
                onSelected(value);
              }
              Navigator.pop(dialogContext);
            },
          );
        }).toList(),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return DetailPage(
      title: 'Privacy',
      children: [
        const Padding(
          padding: EdgeInsets.all(16),
          child: Text(
            'Who can see my personal information',
            style: TextStyle(
              color: appGreen,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),

        privacyOption(
          'Last seen',
          lastSeen,
          () => selectOption(
            'Last seen',
            lastSeen,
            ['Everyone', 'My contacts', 'Nobody'],
            (value) => setState(() => lastSeen = value),
          ),
        ),

        privacyOption(
          'Profile photo',
          profilePhoto,
          () => selectOption(
            'Profile photo',
            profilePhoto,
            ['Everyone', 'My contacts', 'Nobody'],
            (value) => setState(() => profilePhoto = value),
          ),
        ),

        privacyOption(
          'About',
          about,
          () => selectOption(
            'About',
            about,
            ['Everyone', 'My contacts', 'Nobody'],
            (value) => setState(() => about = value),
          ),
        ),

        SwitchListTile(
          title: const Text('Online status'),
          subtitle: const Text('Show when you are online'),
          value: onlineStatus,
          activeThumbColor: appGreen,
          onChanged: (value) {
            setState(() => onlineStatus = value);
          },
        ),

        SwitchListTile(
          title: const Text('Read receipts'),
          subtitle: const Text('Show read receipts'),
          value: readReceipts,
          activeThumbColor: appGreen,
          onChanged: (value) {
            setState(() => readReceipts = value);
          },
        ),

        const Divider(),

        detailTile(
          context,
          Icons.block,
          'Blocked contacts',
          'Manage blocked contacts',
        ),

        detailTile(
          context,
          Icons.timer_outlined,
          'Default message timer',
          'Set disappearing messages duration',
        ),

        detailTile(
          context,
          Icons.fingerprint,
          'App lock',
          'Protect your app with authentication',
        ),
      ],
    );
  }
}

// LINKED DEVICES SCREEN
class LinkedDevicesScreen extends StatelessWidget {
  const LinkedDevicesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DetailPage(
      title: 'Linked devices',
      children: [
        const SizedBox(height: 25),

        const Center(
          child: Icon(
            Icons.devices,
            size: 90,
            color: appGreen,
          ),
        ),

        const Padding(
          padding: EdgeInsets.all(20),
          child: Text(
            'Use WhatsApp on other devices. '
            'Your linked devices will appear here.',
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 15),
          ),
        ),

        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25),
          child: ElevatedButton.icon(
            onPressed: () {
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(
                  content: Text('Link device UI demonstration'),
                ),
              );
            },
            icon: const Icon(Icons.add),
            label: const Text('Link a device'),
            style: ElevatedButton.styleFrom(
              backgroundColor: appGreen,
              foregroundColor: Colors.white,
              padding: const EdgeInsets.all(14),
            ),
          ),
        ),

        const SizedBox(height: 25),

        const Padding(
          padding: EdgeInsets.all(18),
          child: Text(
            'No devices linked',
            textAlign: TextAlign.center,
            style: TextStyle(color: Colors.grey),
          ),
        ),
      ],
    );
  }
}

// NOTIFICATIONS SCREEN
class NotificationsScreen extends StatefulWidget {
  const NotificationsScreen({super.key});

  @override
  State<NotificationsScreen> createState() =>
      _NotificationsScreenState();
}

class _NotificationsScreenState extends State<NotificationsScreen> {
  bool messageTone = true;
  bool groupNotifications = true;
  bool callNotifications = true;
  bool vibration = true;

  @override
  Widget build(BuildContext context) {
    return DetailPage(
      title: 'Notifications',
      children: [
        const Padding(
          padding: EdgeInsets.all(16),
          child: Text(
            'Messages',
            style: TextStyle(
              color: appGreen,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        SwitchListTile(
          title: const Text('Message notifications'),
          value: messageTone,
          activeThumbColor: appGreen,
          onChanged: (v) => setState(() => messageTone = v),
        ),
        SwitchListTile(
          title: const Text('Group notifications'),
          value: groupNotifications,
          activeThumbColor: appGreen,
          onChanged: (v) => setState(() => groupNotifications = v),
        ),
        SwitchListTile(
          title: const Text('Call notifications'),
          value: callNotifications,
          activeThumbColor: appGreen,
          onChanged: (v) => setState(() => callNotifications = v),
        ),
        const Divider(),
        SwitchListTile(
          title: const Text('Vibration'),
          value: vibration,
          activeThumbColor: appGreen,
          onChanged: (v) => setState(() => vibration = v),
        ),
        detailTile(
          context,
          Icons.notifications_active_outlined,
          'Notification tone',
          'Choose notification sound',
        ),
      ],
    );
  }
}

// STORAGE SCREEN
class StorageScreen extends StatelessWidget {
  const StorageScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DetailPage(
      title: 'Storage and data',
      children: [
        const SizedBox(height: 15),
        const ListTile(
          leading: Icon(Icons.storage, color: appGreen),
          title: Text('Storage usage'),
          subtitle: Text('Manage storage and review chats'),
        ),
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 18),
          child: LinearProgressIndicator(
            value: 0.35,
            color: appGreen,
            backgroundColor: Color(0xFFD8F3EA),
          ),
        ),
        const Padding(
          padding: EdgeInsets.all(18),
          child: Text(
            '35% of demo storage used',
            style: TextStyle(color: Colors.grey),
          ),
        ),
        detailTile(
          context,
          Icons.download_outlined,
          'Media auto-download',
          'Manage photos, audio and videos',
        ),
        detailTile(
          context,
          Icons.data_usage,
          'Network usage',
          'View data usage information',
        ),
        detailTile(
          context,
          Icons.backup_outlined,
          'Chat backup',
          'Backup settings UI',
        ),
      ],
    );
  }
}

// CHAT SETTINGS SCREEN
class ChatSettingsScreen extends StatefulWidget {
  const ChatSettingsScreen({super.key});

  @override
  State<ChatSettingsScreen> createState() =>
      _ChatSettingsScreenState();
}

class _ChatSettingsScreenState extends State<ChatSettingsScreen> {
  bool enterToSend = false;
  bool mediaVisibility = true;

  @override
  Widget build(BuildContext context) {
    return DetailPage(
      title: 'Chats',
      children: [
        SwitchListTile(
          title: const Text('Enter is send'),
          subtitle: const Text('Press Enter to send messages'),
          value: enterToSend,
          activeThumbColor: appGreen,
          onChanged: (v) => setState(() => enterToSend = v),
        ),
        SwitchListTile(
          title: const Text('Media visibility'),
          subtitle: const Text('Show newly downloaded media in gallery'),
          value: mediaVisibility,
          activeThumbColor: appGreen,
          onChanged: (v) => setState(() => mediaVisibility = v),
        ),
        detailTile(
          context,
          Icons.wallpaper_outlined,
          'Default chat theme',
          'Choose your chat appearance',
        ),
        detailTile(
          context,
          Icons.language,
          'App language',
          'Choose application language',
        ),
        detailTile(
          context,
          Icons.history,
          'Chat history',
          'Export or clear chat history',
        ),
      ],
    );
  }
}

// HELP SCREEN
class HelpScreen extends StatelessWidget {
  const HelpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DetailPage(
      title: 'Help',
      children: [
        detailTile(
          context,
          Icons.help_center_outlined,
          'Help center',
          'Find answers to common questions',
        ),
        detailTile(
          context,
          Icons.contact_support_outlined,
          'Contact us',
          'Get support',
        ),
        detailTile(
          context,
          Icons.policy_outlined,
          'Privacy policy',
          'Read privacy information',
        ),
        detailTile(
          context,
          Icons.info_outline,
          'App information',
          'About this UI practice project',
        ),
      ],
    );
  }
}

// AVATAR SCREEN
class AvatarScreen extends StatelessWidget {
  const AvatarScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DetailPage(
      title: 'Avatar',
      children: [
        const SizedBox(height: 35),
        const Center(
          child: CircleAvatar(
            radius: 65,
            backgroundColor: Color(0xFFD8F3EA),
            child: Icon(
              Icons.face,
              color: appGreen,
              size: 85,
            ),
          ),
        ),
        const SizedBox(height: 20),
        const Center(
          child: Text(
            'Create your avatar',
            style: TextStyle(
              fontSize: 21,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        const Padding(
          padding: EdgeInsets.all(20),
          child: Text(
            'Customize an avatar for your profile. '
            'This is a UI demonstration.',
            textAlign: TextAlign.center,
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25),
          child: ElevatedButton(
            onPressed: () {
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(
                  content: Text('Avatar editor coming later'),
                ),
              );
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: appGreen,
              foregroundColor: Colors.white,
            ),
            child: const Text('Create Avatar'),
          ),
        ),
      ],
    );
  }
}

// QR CODE SCREEN
class QrCodeScreen extends StatelessWidget {
  const QrCodeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DetailPage(
      title: 'QR Code',
      children: [
        const SizedBox(height: 30),
        const Center(
          child: CircleAvatar(
            radius: 38,
            backgroundColor: Color(0xFFD8F3EA),
            child: Icon(
              Icons.person,
              color: appGreen,
              size: 45,
            ),
          ),
        ),
        const SizedBox(height: 12),
        const Center(
          child: Text(
            'Your Name',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        const SizedBox(height: 25),
        Center(
          child: Container(
            height: 220,
            width: 220,
            padding: const EdgeInsets.all(18),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(15),
              border: Border.all(color: Colors.grey.shade300),
            ),
            child: const Icon(
              Icons.qr_code_2,
              size: 175,
              color: Colors.black,
            ),
          ),
        ),
        const SizedBox(height: 15),
        const Center(
          child: Text(
            'Your demo QR code',
            style: TextStyle(color: Colors.grey),
          ),
        ),
        const SizedBox(height: 20),
        const Center(
          child: Text(
            'Let people scan this code to find your profile.',
            textAlign: TextAlign.center,
          ),
        ),
      ],
    );
  }
}
