import 'package:flutter/material.dart';
import 'account_center_screen.dart';
import 'avatar_screen.dart';
import 'app_lock_screen.dart';
import 'notification_settings_screen.dart';
import 'storage_screen.dart';

class AccountFeaturesScreen extends StatelessWidget {
  const AccountFeaturesScreen({super.key});
  @override
  Widget build(BuildContext context) {
    final items = [
      ('Account Center', Icons.account_circle, const AccountCenterScreen()),
      ('Avatar', Icons.face, const AvatarScreen()),
      ('App Lock', Icons.lock_outline, const AppLockScreen()),
      ('Notifications', Icons.notifications_outlined, const NotificationSettingsScreen()),
      ('Storage and Data', Icons.storage, const StorageScreen()),
    ];
    return Scaffold(
      appBar: AppBar(title: const Text('Account & Settings')),
      body: ListView(children: items.map((e) => ListTile(
        leading: Icon(e.$2, color: const Color(0xFF008F76)),
        title: Text(e.$1), trailing: const Icon(Icons.chevron_right),
        onTap: () => Navigator.push(context,
          MaterialPageRoute(builder: (_) => e.$3)),
      )).toList()),
    );
  }
}
