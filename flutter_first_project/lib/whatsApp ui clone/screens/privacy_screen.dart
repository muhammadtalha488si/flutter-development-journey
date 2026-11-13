
import 'package:flutter/material.dart';

class PrivacyScreen extends StatefulWidget {
  const PrivacyScreen({super.key});

  @override
  State<PrivacyScreen> createState() => _PrivacyScreenState();
}

class _PrivacyScreenState extends State<PrivacyScreen> {
  static const green = Color(0xFF008F76);

  String lastSeen = 'My Contacts';
  String profilePhoto = 'Everyone';
  String about = 'My Contacts';
  String groups = 'Everyone';

  bool readReceipts = true;
  bool onlineStatus = true;

  void chooseOption(
    String title,
    String current,
    List<String> options,
    Function(String) onSelected,
  ) {
    showDialog(
      context: context,
      builder: (dialogContext) => AlertDialog(
        title: Text(title),
        content: Column(
          mainAxisSize: MainAxisSize.min,
          children: options.map((option) {
            return RadioListTile<String>(
              value: option,
              groupValue: current,
              activeColor: green,
              title: Text(option),
              onChanged: (value) {
                if (value != null) {
                  onSelected(value);
                  Navigator.pop(dialogContext);
                }
              },
            );
          }).toList(),
        ),
      ),
    );
  }

  Widget privacyTile(
    String title,
    String value,
    VoidCallback onTap,
  ) {
    return ListTile(
      title: Text(title),
      subtitle: Text(value),
      trailing: const Icon(
        Icons.chevron_right,
        color: Colors.grey,
      ),
      onTap: onTap,
    );
  }

  Widget switchTile(
    String title,
    String subtitle,
    bool value,
    Function(bool) onChanged,
  ) {
    return SwitchListTile(
      title: Text(title),
      subtitle: Text(subtitle),
      activeThumbColor: green,
      value: value,
      onChanged: onChanged,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF7F9F8),
      appBar: AppBar(
        title: const Text('Privacy'),
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        elevation: 0,
      ),
      body: ListView(
        children: [
          const Padding(
            padding: EdgeInsets.fromLTRB(18, 20, 18, 8),
            child: Text(
              'Who can see my personal information',
              style: TextStyle(
                color: green,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),

          privacyTile(
            'Last Seen',
            lastSeen,
            () => chooseOption(
              'Last Seen',
              lastSeen,
              ['Everyone', 'My Contacts', 'Nobody'],
              (value) => setState(() => lastSeen = value),
            ),
          ),

          privacyTile(
            'Profile Photo',
            profilePhoto,
            () => chooseOption(
              'Profile Photo',
              profilePhoto,
              ['Everyone', 'My Contacts', 'Nobody'],
              (value) => setState(() => profilePhoto = value),
            ),
          ),

          privacyTile(
            'About',
            about,
            () => chooseOption(
              'About',
              about,
              ['Everyone', 'My Contacts', 'Nobody'],
              (value) => setState(() => about = value),
            ),
          ),

          privacyTile(
            'Groups',
            groups,
            () => chooseOption(
              'Groups',
              groups,
              ['Everyone', 'My Contacts', 'My Contacts Except...'],
              (value) => setState(() => groups = value),
            ),
          ),

          const Divider(height: 25),

          const Padding(
            padding: EdgeInsets.fromLTRB(18, 5, 18, 8),
            child: Text(
              'Messaging',
              style: TextStyle(
                color: green,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),

          switchTile(
            'Read Receipts',
            'Send and receive read receipts',
            readReceipts,
            (value) => setState(() => readReceipts = value),
          ),

          switchTile(
            'Online Status',
            'Show when you are online (demo setting)',
            onlineStatus,
            (value) => setState(() => onlineStatus = value),
          ),

          const Divider(height: 25),

          const Padding(
            padding: EdgeInsets.fromLTRB(18, 5, 18, 8),
            child: Text(
              'Other privacy settings',
              style: TextStyle(
                color: green,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),

          ListTile(
            leading: const Icon(Icons.block_outlined),
            title: const Text('Blocked Contacts'),
            subtitle: const Text('Manage blocked contacts'),
            trailing: const Icon(Icons.chevron_right),
            onTap: () {
              showDialog(
                context: context,
                builder: (context) => AlertDialog(
                  title: const Text('Blocked Contacts'),
                  content: const Text(
                    'No blocked contacts in this UI demonstration.',
                  ),
                  actions: [
                    TextButton(
                      onPressed: () => Navigator.pop(context),
                      child: const Text('Close'),
                    ),
                  ],
                ),
              );
            },
          ),

          ListTile(
            leading: const Icon(Icons.timer_outlined),
            title: const Text('Default Message Timer'),
            subtitle: const Text('Off'),
            trailing: const Icon(Icons.chevron_right),
            onTap: () {
              showDialog(
                context: context,
                builder: (context) => AlertDialog(
                  title: const Text('Default Message Timer'),
                  content: const Text(
                    'This option is a UI demonstration for now.',
                  ),
                  actions: [
                    TextButton(
                      onPressed: () => Navigator.pop(context),
                      child: const Text('Close'),
                    ),
                  ],
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
