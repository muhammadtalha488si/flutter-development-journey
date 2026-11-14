import 'package:flutter/material.dart';
import 'feature_image.dart';
import 'create_community_screen.dart';
import 'community_profile_screen.dart';
import 'groups_screen.dart';


class CommunitiesScreen extends StatefulWidget {
  const CommunitiesScreen({super.key});
  @override
  State<CommunitiesScreen> createState() => _CommunitiesScreenState();
}

class _CommunitiesScreenState extends State<CommunitiesScreen> {
  final communities = <Map<String, String>>[
    {'name': 'University Community', 'description': 'Students and announcements',
      'image': 'assets/whatsapp_clone/images/community.jpg'},
    {'name': 'Friends Community', 'description': 'Friends and social groups',
      'image': 'assets/whatsapp_clone/images/group.jpg'},
  ];

  Future<void> addCommunity() async {
    final result = await Navigator.push<Map<String, String>>(context,
      MaterialPageRoute(builder: (_) => const CreateCommunityScreen()));
    if (result != null) setState(() => communities.add(result));
  }

  @override
  Widget build(BuildContext context) => Scaffold(
    appBar: AppBar(title: const Text('Communities')),
    floatingActionButton: FloatingActionButton.extended(
      backgroundColor: const Color(0xFF008F76),
      foregroundColor: Colors.white,
      onPressed: addCommunity,
      icon: const Icon(Icons.add), label: const Text('New Community')),
    body: ListView(padding: const EdgeInsets.all(14), children: [
      const Text('Stay connected with your groups',
        style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600)),
      const SizedBox(height: 14),
      ...communities.map((c) => Card(child: ListTile(
        leading: FeatureImage(path: c['image']!, width: 56, height: 56),
        title: Text(c['name']!), subtitle: Text(c['description']!),
        trailing: const Icon(Icons.chevron_right),
        onTap: () => Navigator.push(context, MaterialPageRoute(
          builder: (_) => CommunityProfileScreen(
            name: c['name']!, description: c['description']!,
            imagePath: c['image']!))),
      ))),
      const SizedBox(height: 16),
      ListTile(
        leading: const CircleAvatar(child: Icon(Icons.groups)),
        title: const Text('Your Groups'),
        trailing: const Icon(Icons.chevron_right),
        onTap: () => Navigator.push(context, MaterialPageRoute(
          builder: (_) => const GroupsScreen())),
      ),
    ]),
  );
}
