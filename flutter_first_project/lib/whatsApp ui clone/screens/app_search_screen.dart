import 'package:flutter/material.dart';

class AppSearchScreen extends StatefulWidget {
  const AppSearchScreen({super.key});
  @override
  State<AppSearchScreen> createState() => _AppSearchScreenState();
}
class _AppSearchScreenState extends State<AppSearchScreen> {
  final controller = TextEditingController();
  final options = ['Chats', 'Contacts', 'Messages', 'Groups', 'Settings'];
  @override
  void dispose() { controller.dispose(); super.dispose(); }
  @override
  Widget build(BuildContext context) {
    final results = options.where((e) =>
      e.toLowerCase().contains(controller.text.toLowerCase())).toList();
    return Scaffold(
      appBar: AppBar(title: const Text('Search WhatsApp')),
      body: Padding(padding: const EdgeInsets.all(14), child: Column(children: [
        TextField(controller: controller,
          decoration: const InputDecoration(
            hintText: 'Search...', prefixIcon: Icon(Icons.search),
            border: OutlineInputBorder()),
          onChanged: (_) => setState(() {})),
        Expanded(child: ListView(children: results.map((e) =>
          ListTile(title: Text(e), leading: const Icon(Icons.search))).toList())),
      ])),
    );
  }
}
