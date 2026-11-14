import 'package:flutter/material.dart';
import 'account_features_screen.dart';
import 'calls_contacts_screen.dart';
import 'chat_extras_screen.dart';
import 'communities_screen.dart';
import 'feature_image.dart';
import 'linked_devices_screen.dart';
import 'meta_ai_screen.dart';
import 'more_extras_screen.dart';

class WhatsAppFeaturesHub extends StatelessWidget {
  const WhatsAppFeaturesHub({super.key});

  @override
  Widget build(BuildContext context) {
    final entries = <_HubEntry>[
      _HubEntry('Meta AI', 'AI assistant demo', Icons.auto_awesome,
          const MetaAIScreen(), 'assets/whatsapp_clone/images/meta_ai.jpg'),
      _HubEntry('Linked Devices', 'Manage demo devices', Icons.devices,
          const LinkedDevicesScreen(), 'assets/whatsapp_clone/images/device.jpg'),
      _HubEntry('Communities & Groups', 'Create and view communities',
          Icons.groups, const CommunitiesScreen(),
          'assets/whatsapp_clone/images/community.jpg'),
      _HubEntry('Chat Experience', 'Wallpaper, media and starred messages',
          Icons.chat, const ChatExtrasScreen(), 'assets/whatsapp_clone/images/wallpaper.jpg'),
      _HubEntry('Account & Settings', 'Account preferences and avatar',
          Icons.settings, const AccountFeaturesScreen(),
          'assets/whatsapp_clone/images/avatar.jpg'),
      _HubEntry('Calls & Contacts', 'Call history and contacts',
          Icons.call, const CallsContactsScreen(),
          'assets/whatsapp_clone/images/contact.jpg'),
      _HubEntry('More Updates & Extras', 'Status, broadcast and QR',
          Icons.more_horiz, const MoreExtrasScreen(),
          'assets/whatsapp_clone/images/status1.jpg'),
    ];

    return Scaffold(
      appBar: AppBar(title: const Text('WhatsApp Features')),
      body: ListView(
        padding: const EdgeInsets.all(14),
        children: [
          Container(
            padding: const EdgeInsets.all(18),
            decoration: BoxDecoration(
              // ignore: deprecated_member_use
              color: const Color(0xFF008F76).withOpacity(.10),
              borderRadius: BorderRadius.circular(18),
            ),
            child: const Text(
              'Explore the additional WhatsApp-style screens',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
            ),
          ),
          const SizedBox(height: 14),
          ...entries.map((entry) => Card(
            child: ListTile(
              leading: FeatureImage(path: entry.image, width: 52, height: 52),
              title: Text(entry.title),
              subtitle: Text(entry.subtitle),
              trailing: const Icon(Icons.chevron_right),
              onTap: () => Navigator.push(context,
                MaterialPageRoute(builder: (_) => entry.page)),
            ),
          )),
        ],
      ),
    );
  }
}

class _HubEntry {
  final String title;
  final String subtitle;
  final IconData icon;
  final Widget page;
  final String image;
  _HubEntry(this.title, this.subtitle, this.icon, this.page, this.image);
}
