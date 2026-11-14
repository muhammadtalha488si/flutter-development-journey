import 'package:flutter/material.dart';

class NotificationSettingsScreen extends StatefulWidget {
  const NotificationSettingsScreen({super.key});
  @override
  State<NotificationSettingsScreen> createState() => _NotificationSettingsScreenState();
}
class _NotificationSettingsScreenState extends State<NotificationSettingsScreen> {
  bool messages = true, groups = true, sounds = true, previews = true;
  @override
  Widget build(BuildContext context) => Scaffold(
    appBar: AppBar(title: const Text('Notifications')),
    body: ListView(children: [
      SwitchListTile(title: const Text('Message notifications'),
        value: messages, onChanged: (v) => setState(() => messages = v)),
      SwitchListTile(title: const Text('Group notifications'),
        value: groups, onChanged: (v) => setState(() => groups = v)),
      SwitchListTile(title: const Text('Notification sounds'),
        value: sounds, onChanged: (v) => setState(() => sounds = v)),
      SwitchListTile(title: const Text('Show message previews'),
        value: previews, onChanged: (v) => setState(() => previews = v)),
    ]),
  );
}
