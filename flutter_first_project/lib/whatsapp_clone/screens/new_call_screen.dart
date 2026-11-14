import 'package:flutter/material.dart';
import 'feature_image.dart';


class NewCallScreen extends StatelessWidget {
  const NewCallScreen({super.key});
  @override
  Widget build(BuildContext context) => Scaffold(
    appBar: AppBar(title: const Text('New Call')),
    body: ListView(children: ['Alex Morgan', 'Sara Khan', 'Usman Ali'].map((name) =>
      ListTile(
        leading: const FeatureImage(path: 'assets/whatsapp_clone/images/contact.jpg',
          width: 48, height: 48, radius: 25),
        title: Text(name),
        subtitle: const Text('Available for demo call'),
        trailing: IconButton(
          icon: const Icon(Icons.call, color: Color(0xFF008F76)),
          onPressed: () => ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(content: Text('Calling is not connected in this UI demo'))),
        ),
      )).toList()),
  );
}
