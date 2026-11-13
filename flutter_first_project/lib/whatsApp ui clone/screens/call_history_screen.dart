import 'package:flutter/material.dart';
import 'package:flutter_first_project/whatsApp%20ui%20clone/screens/feature_image.dart';
import 'call_details_screen.dart';

class CallHistoryScreen extends StatelessWidget {
  const CallHistoryScreen({super.key});
  @override
  Widget build(BuildContext context) => Scaffold(
    appBar: AppBar(title: const Text('Call History')),
    body: ListView(children: ['Alex Morgan', 'Sara Khan', 'Usman Ali'].map((name) =>
      ListTile(
        leading: const FeatureImage(path: 'assets/images/contact.png',
          width: 48, height: 48, radius: 25),
        title: Text(name),
        subtitle: const Text('Yesterday · Demo call'),
        trailing: const Icon(Icons.call, color: Color(0xFF008F76)),
        onTap: () => Navigator.push(context, MaterialPageRoute(
          builder: (_) => CallDetailsScreen(contactName: name))),
      )).toList()),
  );
}
