import 'package:flutter/material.dart';
import 'feature_image.dart';


class CreateGroupScreen extends StatefulWidget {
  const CreateGroupScreen({super.key});
  @override
  State<CreateGroupScreen> createState() => _CreateGroupScreenState();
}

class _CreateGroupScreenState extends State<CreateGroupScreen> {
  final controller = TextEditingController();
  @override
  void dispose() { controller.dispose(); super.dispose(); }

  @override
  Widget build(BuildContext context) => Scaffold(
    appBar: AppBar(title: const Text('New Group')),
    body: Padding(padding: const EdgeInsets.all(20), child: Column(children: [
      const FeatureImage(path: 'assets/whatsapp_clone/images/group.jpg',
        width: 100, height: 100, radius: 55),
      const SizedBox(height: 20),
      TextField(controller: controller,
        decoration: const InputDecoration(labelText: 'Group name',
          border: OutlineInputBorder())),
      const SizedBox(height: 18),
      FilledButton(
        onPressed: () {
          if (controller.text.trim().isEmpty) return;
          Navigator.pop(context);
          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(content: Text('Group created (demo)')));
        },
        child: const Text('Create Group')),
    ])),
  );
}
