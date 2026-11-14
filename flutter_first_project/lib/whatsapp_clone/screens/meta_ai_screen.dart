import 'package:flutter/material.dart';
import 'feature_image.dart';
import 'ai_chat_screen.dart';
import 'ai_history_screen.dart';


class MetaAIScreen extends StatelessWidget {
  const MetaAIScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Meta AI'),
        actions: [
          IconButton(
            icon: const Icon(Icons.history),
            onPressed: () => Navigator.push(context,
              MaterialPageRoute(builder: (_) => const AIHistoryScreen())),
          ),
        ],
      ),
      body: ListView(
        padding: const EdgeInsets.all(20),
        children: [
          const Center(child: FeatureImage(
            path: 'assets/whatsapp_clone/images/meta_ai.jpg', width: 112, height: 112,
            radius: 56,
          )),
          const SizedBox(height: 18),
          const Text('Ask anything',
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
          const SizedBox(height: 8),
          const Text('Explore ideas and ask questions in this AI chat demo.',
            textAlign: TextAlign.center),
          const SizedBox(height: 24),
          for (final prompt in [
            'Explain a difficult topic',
            'Help me plan my day',
            'Suggest creative project ideas',
          ])
            Card(child: ListTile(
              title: Text(prompt),
              trailing: const Icon(Icons.arrow_forward),
              onTap: () => Navigator.push(context,
                MaterialPageRoute(builder: (_) => AIChatScreen(initialPrompt: prompt))),
            )),
          const SizedBox(height: 14),
          FilledButton.icon(
            onPressed: () => Navigator.push(context,
              MaterialPageRoute(builder: (_) => const AIChatScreen())),
            icon: const Icon(Icons.add),
            label: const Text('New AI Chat'),
          ),
        ],
      ),
    );
  }
}
