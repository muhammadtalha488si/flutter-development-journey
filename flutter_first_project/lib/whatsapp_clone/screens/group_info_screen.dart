import 'package:flutter/material.dart';
import 'feature_image.dart';


class GroupInfoScreen extends StatelessWidget {
  final String groupName;
  const GroupInfoScreen({super.key, required this.groupName});

  @override
  Widget build(BuildContext context) => Scaffold(
    appBar: AppBar(title: const Text('Group Info')),
    body: ListView(padding: const EdgeInsets.all(20), children: [
      const Center(child: FeatureImage(path: 'assets/whatsapp_clone/images/group.jpg',
        width: 120, height: 120, radius: 65)),
      const SizedBox(height: 14),
      Text(groupName, textAlign: TextAlign.center,
        style: const TextStyle(fontSize: 23, fontWeight: FontWeight.bold)),
      const Divider(height: 32),
      const ListTile(leading: Icon(Icons.people), title: Text('Group Members'),
        subtitle: Text('View and manage participants')),
      const ListTile(leading: Icon(Icons.link), title: Text('Invite via Link')),
      const ListTile(leading: Icon(Icons.admin_panel_settings),
        title: Text('Group Permissions')),
    ]),
  );
}
