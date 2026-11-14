import 'package:flutter/material.dart';

class LinkDeviceScreen extends StatelessWidget {
  const LinkDeviceScreen({super.key});

  @override
  Widget build(BuildContext context) => Scaffold(
    appBar: AppBar(title: const Text('Link a Device')),
    body: Center(child: Padding(
      padding: const EdgeInsets.all(24),
      child: Column(mainAxisSize: MainAxisSize.min, children: [
        const Icon(Icons.qr_code_2, size: 190, color: Color(0xFF008F76)),
        const SizedBox(height: 16),
        const Text('QR Scanner Placeholder',
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
        const SizedBox(height: 8),
        const Text('Camera scanning is not connected in this UI demo.',
          textAlign: TextAlign.center),
        const SizedBox(height: 18),
        OutlinedButton(onPressed: () => Navigator.pop(context),
          child: const Text('Back')),
      ]),
    )),
  );
}
