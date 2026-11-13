import 'package:flutter/material.dart';
import 'package:flutter_first_project/whatsApp%20ui%20clone/screens/feature_image.dart';


class StatusViewerScreen extends StatelessWidget {
  const StatusViewerScreen({super.key});
  @override
  Widget build(BuildContext context) => Scaffold(
    appBar: AppBar(title: const Text('Status Viewer')),
    body: PageView(children: const [
      FeatureImage(path: 'assets/images/status1.jpg',
        width: double.infinity, height: double.infinity, radius: 0),
      FeatureImage(path: 'assets/images/wallpaper.jpg',
        width: double.infinity, height: double.infinity, radius: 0),
    ]),
  );
}
