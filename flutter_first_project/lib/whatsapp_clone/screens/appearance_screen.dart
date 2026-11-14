import 'package:flutter/material.dart';

class AppearanceScreen extends StatefulWidget {
  const AppearanceScreen({super.key});
  @override
  State<AppearanceScreen> createState() => _AppearanceScreenState();
}
class _AppearanceScreenState extends State<AppearanceScreen> {
  String mode = 'System Default';
  @override
  Widget build(BuildContext context) => Scaffold(
    appBar: AppBar(title: const Text('Appearance')),
    body: Column(children: [
      for (final value in ['Light', 'Dark', 'System Default'])
        RadioListTile<String>(
          title: Text(value), value: value, groupValue: mode,
          onChanged: (v) => setState(() => mode = v!)),
      Padding(padding: const EdgeInsets.all(16),
        child: Text('Selected appearance: $mode (demo only)')),
    ]),
  );
}
