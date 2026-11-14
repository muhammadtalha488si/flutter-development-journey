import 'package:flutter/material.dart';

class DeviceDetailsScreen extends StatelessWidget {
  final String deviceName;
  final VoidCallback onLogout;
  const DeviceDetailsScreen({
    super.key, required this.deviceName, required this.onLogout,
  });

  @override
  Widget build(BuildContext context) => Scaffold(
    appBar: AppBar(title: const Text('Device Details')),
    body: ListView(padding: const EdgeInsets.all(20), children: [
      const Icon(Icons.devices, size: 85, color: Color(0xFF008F76)),
      const SizedBox(height: 16),
      Text(deviceName, textAlign: TextAlign.center,
        style: const TextStyle(fontSize: 22, fontWeight: FontWeight.bold)),
      const ListTile(leading: Icon(Icons.access_time),
        title: Text('Last active'), subtitle: Text('Recently · Demo')),
      const ListTile(leading: Icon(Icons.language),
        title: Text('Browser / device'), subtitle: Text('Demo information')),
      const SizedBox(height: 18),
      FilledButton(
        style: FilledButton.styleFrom(backgroundColor: Colors.red),
        onPressed: () {
          onLogout();
          Navigator.pop(context);
        },
        child: const Text('Log out this device'),
      ),
    ]),
  );
}
