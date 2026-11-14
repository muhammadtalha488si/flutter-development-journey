import 'package:flutter/material.dart';

class StatusPrivacyScreen extends StatefulWidget {
  const StatusPrivacyScreen({super.key});
  @override
  State<StatusPrivacyScreen> createState() => _StatusPrivacyScreenState();
}
class _StatusPrivacyScreenState extends State<StatusPrivacyScreen> {
  String choice = 'My Contacts';
  @override
  Widget build(BuildContext context) => Scaffold(
    appBar: AppBar(title: const Text('Status Privacy')),
    body: Column(children: [
      RadioListTile<String>(title: const Text('My Contacts'),
        // ignore: deprecated_member_use
        value: 'My Contacts', groupValue: choice,
        // ignore: deprecated_member_use
        onChanged: (v) => setState(() => choice = v!)),
      RadioListTile<String>(title: const Text('My Contacts Except...'),
        // ignore: deprecated_member_use
        value: 'My Contacts Except...', groupValue: choice,
        // ignore: deprecated_member_use
        onChanged: (v) => setState(() => choice = v!)),
      RadioListTile<String>(title: const Text('Only Share With...'),
        value: 'Only Share With...', groupValue: choice,
        onChanged: (v) => setState(() => choice = v!)),
      Padding(padding: const EdgeInsets.all(16),
        child: Text('Selected: $choice')),
    ]),
  );
}
