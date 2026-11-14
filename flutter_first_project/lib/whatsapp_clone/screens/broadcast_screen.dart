import 'package:flutter/material.dart';

class BroadcastScreen extends StatefulWidget {
  const BroadcastScreen({super.key});
  @override
  State<BroadcastScreen> createState() => _BroadcastScreenState();
}
class _BroadcastScreenState extends State<BroadcastScreen> {
  final controller = TextEditingController();
  final lists = <String>['Family Broadcast', 'Class Updates'];
  @override
  void dispose() { controller.dispose(); super.dispose(); }
  @override
  Widget build(BuildContext context) => Scaffold(
    appBar: AppBar(title: const Text('Broadcast Lists')),
    floatingActionButton: FloatingActionButton(
      backgroundColor: const Color(0xFF008F76),
      onPressed: () {
        controller.clear();
        showDialog(context: context, builder: (dialogContext) => AlertDialog(
          title: const Text('New Broadcast List'),
          content: TextField(controller: controller,
            decoration: const InputDecoration(labelText: 'List name')),
          actions: [
            TextButton(onPressed: () => Navigator.pop(dialogContext),
              child: const Text('Cancel')),
            TextButton(onPressed: () {
              if (controller.text.trim().isNotEmpty) {
                setState(() => lists.add(controller.text.trim()));
              }
              Navigator.pop(dialogContext);
            }, child: const Text('Create')),
          ],
        ));
      },
      child: const Icon(Icons.add, color: Colors.white)),
    body: ListView(children: lists.map((name) => ListTile(
      leading: const CircleAvatar(child: Icon(Icons.campaign)),
      title: Text(name), subtitle: const Text('Demo broadcast list'),
      trailing: const Icon(Icons.chevron_right),
    )).toList()),
  );
}
