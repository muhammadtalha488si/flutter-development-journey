import 'package:flutter/material.dart';

const Color featureGreen = Color(0xFF008F76);

void showDemoMessage(BuildContext context, String message) {
  ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(content: Text(message)),
  );
}

class FeatureMenuScreen extends StatelessWidget {
  final String title;
  final List<FeatureMenuItem> items;

  const FeatureMenuScreen({
    super.key,
    required this.title,
    required this.items,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(title)),
      body: ListView.separated(
        padding: const EdgeInsets.all(12),
        itemCount: items.length,
        separatorBuilder: (_, __) => const SizedBox(height: 4),
        itemBuilder: (context, index) {
          final item = items[index];
          return Card(
            child: ListTile(
              leading: CircleAvatar(
                backgroundColor: featureGreen.withOpacity(.10),
                child: Icon(item.icon, color: featureGreen),
              ),
              title: Text(item.title),
              subtitle: item.subtitle == null ? null : Text(item.subtitle!),
              trailing: const Icon(Icons.chevron_right),
              onTap: () {
                if (item.destination != null) {
                  Navigator.push(context,
                    MaterialPageRoute(builder: (_) => item.destination!));
                } else {
                  showDemoMessage(context, '${item.title} — UI demo');
                }
              },
            ),
          );
        },
      ),
    );
  }
}

class FeatureMenuItem {
  final String title;
  final String? subtitle;
  final IconData icon;
  final Widget? destination;

  const FeatureMenuItem({
    required this.title,
    this.subtitle,
    required this.icon,
    this.destination,
  });
}
