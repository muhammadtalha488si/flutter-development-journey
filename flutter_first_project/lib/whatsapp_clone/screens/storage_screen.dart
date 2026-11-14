import 'package:flutter/material.dart';

class StorageScreen extends StatelessWidget {
  const StorageScreen({super.key});
  @override
  Widget build(BuildContext context) => Scaffold(
    appBar: AppBar(title: const Text('Storage and Data')),
    body: ListView(padding: const EdgeInsets.all(18), children: [
      const Text('Storage Usage',
        style: TextStyle(fontSize: 21, fontWeight: FontWeight.bold)),
      const SizedBox(height: 18),
      const LinearProgressIndicator(value: .42,
        color: Color(0xFF008F76), minHeight: 10),
      const SizedBox(height: 8),
      const Text('Demo storage usage: 42%'),
      const ListTile(leading: Icon(Icons.folder), title: Text('Manage Storage')),
      const ListTile(leading: Icon(Icons.download), title: Text('Media Auto-download')),
      const ListTile(leading: Icon(Icons.data_usage), title: Text('Network Usage')),
    ]),
  );
}
