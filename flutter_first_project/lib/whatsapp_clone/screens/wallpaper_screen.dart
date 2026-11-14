import 'package:flutter/material.dart';
import 'feature_image.dart';


class WallpaperScreen extends StatefulWidget {
  const WallpaperScreen({super.key});
  @override
  State<WallpaperScreen> createState() => _WallpaperScreenState();
}

class _WallpaperScreenState extends State<WallpaperScreen> {
  int selected = 0;
  final wallpapers = [
    'assets/whatsapp_clone/images/wallpaper.jpg',
    'assets/whatsapp_clone/images/status1.jpg',
    'assets/whatsapp_clone/images/community.jpg',
  ];

  @override
  Widget build(BuildContext context) => Scaffold(
    appBar: AppBar(title: const Text('Chat Wallpaper')),
    body: Column(children: [
      Expanded(child: GridView.builder(
        padding: const EdgeInsets.all(12),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2, crossAxisSpacing: 12, mainAxisSpacing: 12),
        itemCount: wallpapers.length,
        itemBuilder: (_, i) => GestureDetector(
          onTap: () => setState(() => selected = i),
          child: Stack(fit: StackFit.expand, children: [
            FeatureImage(path: wallpapers[i], width: double.infinity,
              height: double.infinity, radius: 14),
            if (selected == i)
              const Align(alignment: Alignment.topRight,
                child: Padding(padding: EdgeInsets.all(8),
                  child: Icon(Icons.check_circle, color: Colors.green))),
          ]),
        ),
      )),
      Padding(padding: const EdgeInsets.all(16), child: FilledButton(
        onPressed: () => Navigator.pop(context),
        child: const Text('Set Wallpaper (Demo)'))),
    ]),
  );
}
