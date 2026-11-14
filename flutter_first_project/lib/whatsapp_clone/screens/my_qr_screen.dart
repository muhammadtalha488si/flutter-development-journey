import 'package:flutter/material.dart';
import 'feature_image.dart';


class MyQRScreen extends StatelessWidget {
  const MyQRScreen({super.key});
  @override
  Widget build(BuildContext context) => Scaffold(
    appBar: AppBar(title: const Text('My QR Code')),
    body: Center(child: Column(mainAxisSize: MainAxisSize.min, children: [
      const FeatureImage(path: 'assets/whatsapp_clone/images/my_profile.jpg',
        width: 82, height: 82, radius: 44),
      const SizedBox(height: 16),
      const Text('Your demo QR code'),
      const Icon(Icons.qr_code_2, size: 230),
      const Text('This is a visual placeholder, not a scannable code.'),
    ])),
  );
}
