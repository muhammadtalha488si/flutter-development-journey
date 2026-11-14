import 'package:flutter/material.dart';
import 'call_history_screen.dart';
import 'new_call_screen.dart';
import 'new_contact_screen.dart';

class CallsContactsScreen extends StatelessWidget {
  const CallsContactsScreen({super.key});
  @override
  Widget build(BuildContext context) => Scaffold(
    appBar: AppBar(title: const Text('Calls & Contacts')),
    body: ListView(children: [
      ListTile(leading: const Icon(Icons.history, color: Color(0xFF008F76)),
        title: const Text('Call History'),
        onTap: () => Navigator.push(context, MaterialPageRoute(
          builder: (_) => const CallHistoryScreen()))),
      ListTile(leading: const Icon(Icons.add_call, color: Color(0xFF008F76)),
        title: const Text('New Call'),
        onTap: () => Navigator.push(context, MaterialPageRoute(
          builder: (_) => const NewCallScreen()))),
      ListTile(leading: const Icon(Icons.person_add, color: Color(0xFF008F76)),
        title: const Text('New Contact'),
        onTap: () => Navigator.push(context, MaterialPageRoute(
          builder: (_) => const NewContactScreen()))),
    ]),
  );
}
