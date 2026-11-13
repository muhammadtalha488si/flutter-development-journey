import 'package:flutter/material.dart';
import 'package:flutter_first_project/whatsApp%20ui%20clone/screens/feature_image.dart';


class CallDetailsScreen extends StatelessWidget {
  final String contactName;
  const CallDetailsScreen({super.key, required this.contactName});
  @override
  Widget build(BuildContext context) => Scaffold(
    appBar: AppBar(title: const Text('Call Details')),
    body: Center(child: Column(mainAxisSize: MainAxisSize.min, children: [
      const FeatureImage(path: 'assets/images/contact.png',
        width: 110, height: 110, radius: 60),
      const SizedBox(height: 14),
      Text(contactName, style: const TextStyle(
        fontSize: 22, fontWeight: FontWeight.bold)),
      const Text('Demo call details'),
      const SizedBox(height: 18),
      const ListTile(leading: Icon(Icons.call_made), title: Text('Outgoing call')),
      const ListTile(leading: Icon(Icons.access_time), title: Text('Duration: 04:25')),
    ])),
  );
}
