import 'package:flutter/material.dart';
import 'status_viewer_screen.dart';
import 'status_privacy_screen.dart';
import 'broadcast_screen.dart';
import 'my_qr_screen.dart';
import 'app_search_screen.dart';
import 'appearance_screen.dart';

class MoreExtrasScreen extends StatelessWidget {
  const MoreExtrasScreen({super.key});
  @override
  Widget build(BuildContext context) {
    final items = [
      ('Status Viewer', Icons.circle_outlined, const StatusViewerScreen()),
      ('Status Privacy', Icons.visibility_outlined, const StatusPrivacyScreen()),
      ('Broadcast Lists', Icons.campaign_outlined, const BroadcastScreen()),
      ('My QR Code', Icons.qr_code, const MyQRScreen()),
      ('App Search', Icons.search, const AppSearchScreen()),
      ('Appearance', Icons.dark_mode_outlined, const AppearanceScreen()),
    ];
    return Scaffold(
      appBar: AppBar(title: const Text('More Updates & Extras')),
      body: ListView(children: items.map((e) => ListTile(
        leading: Icon(e.$2, color: const Color(0xFF008F76)),
        title: Text(e.$1), trailing: const Icon(Icons.chevron_right),
        onTap: () => Navigator.push(context,
          MaterialPageRoute(builder: (_) => e.$3)),
      )).toList()),
    );
  }
}
