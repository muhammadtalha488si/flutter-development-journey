import 'package:flutter/material.dart';
import 'wallpaper_screen.dart';
import 'starred_messages_screen.dart';
import 'media_links_screen.dart';
import 'chat_info_screen.dart';

class ChatExtrasScreen extends StatelessWidget {
  const ChatExtrasScreen({super.key});
  @override
  Widget build(BuildContext context) {
    final items = [
      ('Chat Info', Icons.info_outline, const ChatInfoScreen()),
      ('Media, Links and Documents', Icons.perm_media, const MediaLinksScreen()),
      ('Starred Messages', Icons.star_outline, const StarredMessagesScreen()),
      ('Chat Wallpaper', Icons.wallpaper, const WallpaperScreen()),
    ];
    return Scaffold(
      appBar: AppBar(title: const Text('Chat Experience')),
      body: ListView(children: items.map((e) => ListTile(
        leading: Icon(e.$2, color: const Color(0xFF008F76)),
        title: Text(e.$1), trailing: const Icon(Icons.chevron_right),
        onTap: () => Navigator.push(context,
          MaterialPageRoute(builder: (_) => e.$3)),
      )).toList()),
    );
  }
}
