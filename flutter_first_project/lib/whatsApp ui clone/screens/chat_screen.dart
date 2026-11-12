
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class ChatScreen extends StatefulWidget {
  final String contactName;

  const ChatScreen({
    super.key,
    required this.contactName,
  });

  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  final TextEditingController messageController =
      TextEditingController();

  final ScrollController scrollController =
      ScrollController();

  final List<Map<String, dynamic>> messages = [
    {
      'text': 'Hello! How are you?',
      'sent': false,
      'time': '10:30 AM',
      'reaction': '',
      'starred': false,
    },
    {
      'text': 'I am fine. What about you?',
      'sent': true,
      'time': '10:31 AM',
      'reaction': '',
      'starred': false,
    },
    {
      'text': 'Are you working on the Flutter project?',
      'sent': false,
      'time': '10:32 AM',
      'reaction': '',
      'starred': false,
    },
    {
      'text': 'Yes! I am building a modern WhatsApp UI.',
      'sent': true,
      'time': '10:33 AM',
      'reaction': '👍',
      'starred': false,
    },
  ];

  Map<String, dynamic>? replyingTo;

  @override
  void dispose() {
    messageController.dispose();
    scrollController.dispose();
    super.dispose();
  }

  void sendMessage() {
    final text = messageController.text.trim();

    if (text.isEmpty) return;

    setState(() {
      messages.add({
        'text': text,
        'sent': true,
        'time': TimeOfDay.now().format(context),
        'reaction': '',
        'starred': false,
        'reply': replyingTo?['text'],
      });

      messageController.clear();
      replyingTo = null;
    });

    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (scrollController.hasClients) {
        scrollController.animateTo(
          scrollController.position.maxScrollExtent,
          duration: const Duration(milliseconds: 300),
          curve: Curves.easeOut,
        );
      }
    });
  }

  void showMessageOptions(int index) {
    final message = messages[index];

    showModalBottomSheet(
      context: context,
      backgroundColor: Colors.white,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(
          top: Radius.circular(24),
        ),
      ),
      builder: (sheetContext) {
        return SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(18),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Container(
                  height: 4,
                  width: 40,
                  decoration: BoxDecoration(
                    color: Colors.grey.shade300,
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                const SizedBox(height: 18),

                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text('❤️  😂  😮  😢  🙏  👍'),
                  ],
                ),

                const SizedBox(height: 15),

                optionTile(
                  Icons.reply,
                  'Reply',
                  () {
                    Navigator.pop(sheetContext);
                    setState(() {
                      replyingTo = message;
                    });
                  },
                ),

                optionTile(
                  Icons.copy,
                  'Copy',
                  () {
                    Clipboard.setData(
                      ClipboardData(text: message['text']),
                    );
                    Navigator.pop(sheetContext);
                    showSnack('Message copied');
                  },
                ),

                optionTile(
                  Icons.forward,
                  'Forward',
                  () {
                    Navigator.pop(sheetContext);
                    showSnack('Forward UI demonstration');
                  },
                ),

                optionTile(
                  Icons.star_border,
                  message['starred'] ? 'Unstar' : 'Star',
                  () {
                    Navigator.pop(sheetContext);
                    setState(() {
                      message['starred'] = !message['starred'];
                    });
                  },
                ),

                optionTile(
                  Icons.delete_outline,
                  'Delete',
                  () {
                    Navigator.pop(sheetContext);
                    setState(() {
                      messages.removeAt(index);
                    });
                  },
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  Widget optionTile(
    IconData icon,
    String title,
    VoidCallback onTap,
  ) {
    return ListTile(
      leading: Icon(icon),
      title: Text(title),
      onTap: onTap,
    );
  }

  void showSnack(String text) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(text),
        duration: const Duration(seconds: 1),
      ),
    );
  }

  Widget buildMessage(int index) {
    final message = messages[index];
    final isSent = message['sent'] == true;

    return GestureDetector(
      onLongPress: () => showMessageOptions(index),
      child: Align(
        alignment:
            isSent ? Alignment.centerRight : Alignment.centerLeft,
        child: Container(
          constraints: BoxConstraints(
            maxWidth: MediaQuery.of(context).size.width * 0.78,
          ),
          margin: const EdgeInsets.symmetric(
            horizontal: 12,
            vertical: 5,
          ),
          padding: const EdgeInsets.fromLTRB(13, 10, 10, 7),
          decoration: BoxDecoration(
            color: isSent
                ? const Color(0xFFD9FDD3)
                : Colors.white,
            borderRadius: BorderRadius.only(
              topLeft: const Radius.circular(15),
              topRight: const Radius.circular(15),
              bottomLeft: Radius.circular(isSent ? 15 : 3),
              bottomRight: Radius.circular(isSent ? 3 : 15),
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              if (message['reply'] != null)
                Container(
                  width: double.infinity,
                  padding: const EdgeInsets.all(8),
                  margin: const EdgeInsets.only(bottom: 7),
                  decoration: const BoxDecoration(
                    color: Color(0xFFBCE5B6),
                    borderRadius: BorderRadius.all(
                      Radius.circular(8),
                    ),
                  ),
                  child: Text(
                    message['reply'],
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: const TextStyle(fontSize: 12),
                  ),
                ),

              Text(
                message['text'],
                style: const TextStyle(
                  fontSize: 15,
                  color: Colors.black87,
                ),
              ),

              const SizedBox(height: 5),

              Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  if (message['starred'] == true)
                    const Padding(
                      padding: EdgeInsets.only(right: 5),
                      child: Icon(
                        Icons.star,
                        size: 13,
                        color: Colors.orange,
                      ),
                    ),
                  Text(
                    message['time'],
                    style: const TextStyle(
                      fontSize: 10,
                      color: Colors.black54,
                    ),
                  ),
                  if (isSent) ...[
                    const SizedBox(width: 4),
                    const Icon(
                      Icons.done_all,
                      size: 15,
                      color: Colors.blue,
                    ),
                  ],
                ],
              ),

              if (message['reaction'] != '')
                Padding(
                  padding: const EdgeInsets.only(top: 5),
                  child: Text(
                    message['reaction'],
                    style: const TextStyle(fontSize: 16),
                  ),
                ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    const green = Color(0xFF008F76);

    return Scaffold(
      backgroundColor: const Color(0xFFEFEAE2),
      appBar: AppBar(
        backgroundColor: green,
        foregroundColor: Colors.white,
        titleSpacing: 0,
        title: Row(
          children: [
            const CircleAvatar(
              backgroundColor: Colors.white,
              child: Icon(
                Icons.person,
                color: green,
              ),
            ),
            const SizedBox(width: 10),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    widget.contactName,
                    style: const TextStyle(fontSize: 16),
                  ),
                  const Text(
                    'online',
                    style: TextStyle(fontSize: 11),
                  ),
                ],
              ),
            ),
          ],
        ),
        actions: [
          IconButton(
            onPressed: () => showSnack('Video call UI coming soon'),
            icon: const Icon(Icons.videocam_outlined),
          ),
          IconButton(
            onPressed: () => showSnack('Voice call UI coming soon'),
            icon: const Icon(Icons.call_outlined),
          ),
          PopupMenuButton<String>(
            onSelected: (value) {
              showSnack('$value selected');
            },
            itemBuilder: (context) => const [
              PopupMenuItem(
                value: 'View contact',
                child: Text('View contact'),
              ),
              PopupMenuItem(
                value: 'Search',
                child: Text('Search'),
              ),
              PopupMenuItem(
                value: 'Wallpaper',
                child: Text('Wallpaper'),
              ),
              PopupMenuItem(
                value: 'More',
                child: Text('More'),
              ),
            ],
          ),
        ],
      ),

      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              controller: scrollController,
              padding: const EdgeInsets.symmetric(vertical: 12),
              itemCount: messages.length,
              itemBuilder: (context, index) {
                return buildMessage(index);
              },
            ),
          ),

          if (replyingTo != null)
            Container(
              color: Colors.white,
              padding: const EdgeInsets.all(10),
              child: Row(
                children: [
                  const Icon(
                    Icons.reply,
                    color: green,
                  ),
                  const SizedBox(width: 8),
                  Expanded(
                    child: Text(
                      replyingTo!['text'],
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                  IconButton(
                    onPressed: () {
                      setState(() {
                        replyingTo = null;
                      });
                    },
                    icon: const Icon(Icons.close),
                  ),
                ],
              ),
            ),

          Container(
            color: const Color(0xFFF7F7F7),
            padding: const EdgeInsets.fromLTRB(8, 8, 8, 10),
            child: Row(
              children: [
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(28),
                    ),
                    child: Row(
                      children: [
                        IconButton(
                          onPressed: () {
                            showSnack('Emoji UI coming soon');
                          },
                          icon: const Icon(Icons.emoji_emotions_outlined),
                        ),
                        Expanded(
                          child: TextField(
                            controller: messageController,
                            minLines: 1,
                            maxLines: 4,
                            decoration: const InputDecoration(
                              hintText: 'Message',
                              border: InputBorder.none,
                            ),
                          ),
                        ),
                        IconButton(
                          onPressed: () {
                            showSnack('Attachment UI coming soon');
                          },
                          icon: const Icon(Icons.attach_file),
                        ),
                      ],
                    ),
                  ),
                ),

                const SizedBox(width: 7),

                CircleAvatar(
                  radius: 24,
                  backgroundColor: green,
                  child: IconButton(
                    onPressed: sendMessage,
                    icon: const Icon(
                      Icons.send,
                      color: Colors.white,
                      size: 20,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
