import 'package:flutter/material.dart';

class AIChatScreen extends StatefulWidget {
  final String? initialPrompt;
  const AIChatScreen({super.key, this.initialPrompt});

  @override
  State<AIChatScreen> createState() => _AIChatScreenState();
}

class _AIChatScreenState extends State<AIChatScreen> {
  final controller = TextEditingController();
  final messages = <Map<String, String>>[];

  @override
  void initState() {
    super.initState();
    if (widget.initialPrompt != null) {
      messages.add({'text': widget.initialPrompt!, 'sender': 'user'});
    }
    messages.add({
      'text': 'Hello! This is a sample AI response. Connect an AI service later for real answers.',
      'sender': 'ai',
    });
  }

  void send() {
    final value = controller.text.trim();
    if (value.isEmpty) return;
    setState(() {
      messages.add({'text': value, 'sender': 'user'});
      messages.add({
        'text': 'Thanks for your message. This is a UI-only demo response.',
        'sender': 'ai',
      });
    });
    controller.clear();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('AI Conversation')),
      body: Column(children: [
        Expanded(child: ListView.builder(
          padding: const EdgeInsets.all(14),
          itemCount: messages.length,
          itemBuilder: (_, i) {
            final user = messages[i]['sender'] == 'user';
            return Align(
              alignment: user ? Alignment.centerRight : Alignment.centerLeft,
              child: Container(
                constraints: const BoxConstraints(maxWidth: 290),
                margin: const EdgeInsets.only(bottom: 10),
                padding: const EdgeInsets.all(13),
                decoration: BoxDecoration(
                  color: user ? const Color(0xFFD9FDD3) : Colors.grey.shade200,
                  borderRadius: BorderRadius.circular(16),
                ),
                child: Text(messages[i]['text']!),
              ),
            );
          },
        )),
        SafeArea(child: Padding(
          padding: const EdgeInsets.all(10),
          child: Row(children: [
            IconButton(
              onPressed: () => ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(content: Text('Image attachment UI demo')),
              ),
              icon: const Icon(Icons.image_outlined),
            ),
            Expanded(child: TextField(
              controller: controller,
              decoration: const InputDecoration(
                hintText: 'Ask Meta AI...',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(24))),
                contentPadding: EdgeInsets.symmetric(horizontal: 16),
              ),
              onSubmitted: (_) => send(),
            )),
            IconButton(onPressed: send,
              icon: const Icon(Icons.send, color: Color(0xFF008F76))),
          ]),
        )),
      ]),
    );
  }
}
