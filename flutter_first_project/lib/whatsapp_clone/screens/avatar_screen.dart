import 'package:flutter/material.dart';
import 'feature_image.dart';


class AvatarScreen extends StatelessWidget {
  const AvatarScreen({super.key});
  @override
  Widget build(BuildContext context) => Scaffold(
    appBar: AppBar(title: const Text('Avatar')),
    body: Center(child: Column(mainAxisSize: MainAxisSize.min, children: [
      const FeatureImage(path: 'assets/whatsapp_clone/images/avatar.jpg',
        width: 160, height: 160, radius: 85),
      const SizedBox(height: 18),
      const Text('Customize your avatar',
        style: TextStyle(fontSize: 21, fontWeight: FontWeight.bold)),
      const SizedBox(height: 8),
      const Text('Avatar editing is a UI demo.'),
      const SizedBox(height: 18),
      FilledButton(onPressed: () => ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Avatar editor demo'))),
        child: const Text('Edit Avatar')),
    ])),
  );
}
