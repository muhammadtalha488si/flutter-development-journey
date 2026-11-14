import 'package:flutter/material.dart';
import 'feature_common.dart';


class AIHistoryScreen extends StatelessWidget {
  const AIHistoryScreen({super.key});

  @override
  Widget build(BuildContext context) => FeatureMenuScreen(
    title: 'AI Chat History',
    items: const [
      FeatureMenuItem(title: 'Project ideas', subtitle: 'Yesterday',
        icon: Icons.chat_bubble_outline),
      FeatureMenuItem(title: 'Study assistant', subtitle: 'Monday',
        icon: Icons.school_outlined),
      FeatureMenuItem(title: 'Travel planning', subtitle: 'Last week',
        icon: Icons.map_outlined),
    ],
  );
}
