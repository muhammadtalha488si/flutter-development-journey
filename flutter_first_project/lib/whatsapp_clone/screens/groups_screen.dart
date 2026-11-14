import 'package:flutter/material.dart';
import 'feature_image.dart';
import 'create_group_screen.dart';
import 'group_info_screen.dart';


class GroupsScreen extends StatelessWidget {
  const GroupsScreen({super.key});
  @override
  Widget build(BuildContext context) => Scaffold(
    appBar: AppBar(title: const Text('Groups')),
    floatingActionButton: FloatingActionButton(
      backgroundColor: const Color(0xFF008F76),
      onPressed: () => Navigator.push(context, MaterialPageRoute(
        builder: (_) => const CreateGroupScreen())),
      child: const Icon(Icons.add, color: Colors.white)),
    body: ListView(children: [
      ListTile(
        leading: const FeatureImage(path: 'assets/whatsapp_clone/images/group.jpg',
          width: 52, height: 52),
        title: const Text('Flutter Learners'),
        subtitle: const Text('12 members'),
        onTap: () => Navigator.push(context, MaterialPageRoute(
          builder: (_) => const GroupInfoScreen(groupName: 'Flutter Learners'))),
      ),
      ListTile(
        leading: const FeatureImage(path: 'assets/whatsapp_clone/images/community.jpg',
          width: 52, height: 52),
        title: const Text('Friends Group'),
        subtitle: const Text('8 members'),
        onTap: () => Navigator.push(context, MaterialPageRoute(
          builder: (_) => const GroupInfoScreen(groupName: 'Friends Group'))),
      ),
    ]),
  );
}
