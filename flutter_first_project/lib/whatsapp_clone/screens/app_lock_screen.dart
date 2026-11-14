import 'package:flutter/material.dart';

class AppLockScreen extends StatefulWidget {
  const AppLockScreen({super.key});
  @override
  State<AppLockScreen> createState() => _AppLockScreenState();
}
class _AppLockScreenState extends State<AppLockScreen> {
  bool enabled = false;
  @override
  Widget build(BuildContext context) => Scaffold(
    appBar: AppBar(title: const Text('App Lock')),
    body: SwitchListTile(
      title: const Text('Unlock with device security'),
      subtitle: const Text('Visual demo only; no real lock is enabled.'),
      value: enabled,
      activeColor: const Color(0xFF008F76),
      onChanged: (v) => setState(() => enabled = v),
    ),
  );
}
