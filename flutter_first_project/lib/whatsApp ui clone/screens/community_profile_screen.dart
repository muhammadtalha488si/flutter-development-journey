import 'package:flutter/material.dart';
import 'package:flutter_first_project/whatsApp%20ui%20clone/screens/feature_image.dart';
import 'community_members_screen.dart';


class CommunityProfileScreen extends StatelessWidget {
  final String name;
  final String description;
  final String imagePath;
  const CommunityProfileScreen({super.key, required this.name,
    required this.description, required this.imagePath});

  @override
  Widget build(BuildContext context) => Scaffold(
    appBar: AppBar(title: const Text('Community Profile')),
    body: ListView(padding: const EdgeInsets.all(20), children: [
      Center(child: FeatureImage(path: imagePath, width: 125, height: 125,
        radius: 65)),
      const SizedBox(height: 16),
      Text(name, textAlign: TextAlign.center,
        style: const TextStyle(fontSize: 23, fontWeight: FontWeight.bold)),
      const SizedBox(height: 6),
      Text(description, textAlign: TextAlign.center),
      const Divider(height: 35),
      ListTile(leading: const Icon(Icons.people_outline),
        title: const Text('Members'),
        subtitle: const Text('View community members'),
        onTap: () => Navigator.push(context, MaterialPageRoute(
          builder: (_) => const CommunityMembersScreen()))),
      const ListTile(leading: Icon(Icons.campaign_outlined),
        title: Text('Announcements')),
      const ListTile(leading: Icon(Icons.settings_outlined),
        title: Text('Community Settings')),
    ]),
  );
}
