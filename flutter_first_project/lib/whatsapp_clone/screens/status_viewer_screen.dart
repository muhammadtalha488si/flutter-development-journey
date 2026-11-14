import 'package:flutter/material.dart';
import 'feature_image.dart';


class StatusViewerScreen extends StatelessWidget {
  const StatusViewerScreen({super.key});
  @override
  Widget build(BuildContext context) => Scaffold(
    appBar: AppBar(title: const Text('Status Viewer')),
    body: PageView(children: const [
      FeatureImage(path: 'assets/whatsapp_clone/images/status1.jpg',
        width: double.infinity, height: double.infinity, radius: 0),
      FeatureImage(path: 'assets/whatsapp_clone/images/wallpaper.jpg',
        width: double.infinity, height: double.infinity, radius: 0),
    ]),
  );
}
