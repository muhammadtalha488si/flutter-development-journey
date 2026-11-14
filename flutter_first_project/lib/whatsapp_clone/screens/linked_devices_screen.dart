import 'package:flutter/material.dart';
import 'feature_image.dart';
import 'link_device_screen.dart';
import 'device_details_screen.dart';


class LinkedDevicesScreen extends StatefulWidget {
  const LinkedDevicesScreen({super.key});
  @override
  State<LinkedDevicesScreen> createState() => _LinkedDevicesScreenState();
}

class _LinkedDevicesScreenState extends State<LinkedDevicesScreen> {
  final devices = ['Windows PC', 'Chrome Browser'];

  @override
  Widget build(BuildContext context) => Scaffold(
    appBar: AppBar(title: const Text('Linked Devices')),
    body: ListView(padding: const EdgeInsets.all(16), children: [
      const Center(child: FeatureImage(path: 'assets/whatsapp_clone/images/device.jpg',
        width: 120, height: 100)),
      const SizedBox(height: 16),
      const Text('Use WhatsApp on other devices',
        style: TextStyle(fontSize: 21, fontWeight: FontWeight.bold)),
      const Text('This screen demonstrates device management only.'),
      const SizedBox(height: 16),
      FilledButton.icon(
        onPressed: () => Navigator.push(context,
          MaterialPageRoute(builder: (_) => const LinkDeviceScreen())),
        icon: const Icon(Icons.add_link), label: const Text('Link a Device')),
      const SizedBox(height: 20),
      const Text('Device Status', style: TextStyle(
        fontSize: 18, fontWeight: FontWeight.bold)),
      ...devices.map((device) => ListTile(
        leading: const Icon(Icons.laptop_mac, color: Color(0xFF008F76)),
        title: Text(device),
        subtitle: const Text('Active recently · Demo'),
        trailing: const Icon(Icons.chevron_right),
        onTap: () => Navigator.push(context, MaterialPageRoute(
          builder: (_) => DeviceDetailsScreen(deviceName: device,
            onLogout: () => setState(() => devices.remove(device)))),
        ),
      )),
    ]),
  );
}
