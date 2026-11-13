import 'package:flutter/material.dart';
import 'package:flutter_first_project/whatsApp%20ui%20clone/screens/feature_image.dart';


class CreateCommunityScreen extends StatefulWidget {
  const CreateCommunityScreen({super.key});
  @override
  State<CreateCommunityScreen> createState() => _CreateCommunityScreenState();
}

class _CreateCommunityScreenState extends State<CreateCommunityScreen> {
  final name = TextEditingController();
  final description = TextEditingController();
  final imagePath = 'assets/images/community.png';

  @override
  void dispose() { name.dispose(); description.dispose(); super.dispose(); }

  @override
  Widget build(BuildContext context) => Scaffold(
    appBar: AppBar(title: const Text('Create Community')),
    body: ListView(padding: const EdgeInsets.all(20), children: [
      const Center(child: FeatureImage(path: 'assets/images/community.png',
        width: 110, height: 110, radius: 55)),
      const SizedBox(height: 20),
      TextField(controller: name,
        decoration: const InputDecoration(labelText: 'Community name',
          border: OutlineInputBorder())),
      const SizedBox(height: 14),
      TextField(controller: description, maxLines: 3,
        decoration: const InputDecoration(labelText: 'Description',
          border: OutlineInputBorder())),
      const SizedBox(height: 20),
      FilledButton(
        style: FilledButton.styleFrom(backgroundColor: const Color(0xFF008F76)),
        onPressed: () {
          if (name.text.trim().isEmpty) return;
          Navigator.pop(context, {
            'name': name.text.trim(),
            'description': description.text.trim().isEmpty
              ? 'Community' : description.text.trim(),
            'image': imagePath,
          });
        },
        child: const Text('Create Community')),
    ]),
  );
}
