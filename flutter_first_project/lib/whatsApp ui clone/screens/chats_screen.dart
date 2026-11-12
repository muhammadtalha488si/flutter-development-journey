
import 'package:flutter/material.dart';
import 'chat_screen.dart';
import 'contacts_screen.dart';

class ChatsScreen extends StatefulWidget {
  const ChatsScreen({super.key});

  @override
  State<ChatsScreen> createState() => _ChatsScreenState();
}

class _ChatsScreenState extends State<ChatsScreen> {
  String selectedFilter = 'All';

  final List<Map<String, dynamic>> chats = [
    {
      'name': 'Ahmed Khan',
      'message': 'Hey! How is your Flutter project?',
      'time': '10:45 AM',
      'initial': 'A',
      'unread': 3,
      'online': true,
      'type': 'Personal',
    },
    {
      'name': 'Ali Raza',
      'message': 'Send me the assignment.',
      'time': '09:30 AM',
      'initial': 'A',
      'unread': 0,
      'online': true,
      'type': 'Personal',
    },
    {
      'name': 'Flutter Developers',
      'message': 'Hamza: New UI design uploaded',
      'time': 'Yesterday',
      'initial': 'F',
      'unread': 8,
      'online': false,
      'type': 'Groups',
    },
    {
      'name': 'Usman',
      'message': 'Thank you!',
      'time': 'Yesterday',
      'initial': 'U',
      'unread': 0,
      'online': false,
      'type': 'Personal',
    },
    {
      'name': 'Family Group',
      'message': 'Photo received',
      'time': 'Monday',
      'initial': 'F',
      'unread': 2,
      'online': false,
      'type': 'Groups',
    },
  ];

  @override
  Widget build(BuildContext context) {
    final filteredChats = chats.where((chat) {
      if (selectedFilter == 'Unread') {
        return chat['unread'] > 0;
      }
      if (selectedFilter == 'Groups') {
        return chat['type'] == 'Groups';
      }
      return true;
    }).toList();

    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            height: 55,
            child: ListView(
              scrollDirection: Axis.horizontal,
              padding: const EdgeInsets.symmetric(horizontal: 12),
              children: [
                _filter('All'),
                _filter('Unread'),
                _filter('Favorites'),
                _filter('Groups'),
              ],
            ),
          ),

          Expanded(
            child: ListView.builder(
              itemCount: filteredChats.length,
              itemBuilder: (context, index) {
                final chat = filteredChats[index];

                return ListTile(
                  contentPadding: const EdgeInsets.symmetric(
                    horizontal: 16,
                    vertical: 5,
                  ),

                  leading: Stack(
                    children: [
                      CircleAvatar(
                        radius: 27,
                        backgroundColor: const Color(0xFF008F76),
                        child: Text(
                          chat['initial'],
                          style: const TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                          ),
                        ),
                      ),
                      if (chat['online'])
                        Positioned(
                          right: 0,
                          bottom: 0,
                          child: Container(
                            width: 14,
                            height: 14,
                            decoration: BoxDecoration(
                              color: Colors.green,
                              shape: BoxShape.circle,
                              border: Border.all(
                                color: Theme.of(context).scaffoldBackgroundColor,
                                width: 2,
                              ),
                            ),
                          ),
                        ),
                    ],
                  ),

                  title: Text(
                    chat['name'],
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),

                  subtitle: Text(
                    chat['message'],
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),

                  trailing: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text(
                        chat['time'],
                        style: const TextStyle(fontSize: 11),
                      ),
                      const SizedBox(height: 6),
                      if (chat['unread'] > 0)
                        CircleAvatar(
                          radius: 10,
                          backgroundColor: const Color(0xFF008F76),
                          child: Text(
                            '${chat['unread']}',
                            style: const TextStyle(
                              color: Colors.white,
                              fontSize: 10,
                            ),
                          ),
                        ),
                    ],
                  ),

                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (_) => ChatScreen(
                          contactName: chat['name'],
                        ),
                      ),
                    );
                  },
                );
              },
            ),
          ),
        ],
      ),

      floatingActionButton: FloatingActionButton(
        backgroundColor: const Color(0xFF008F76),
        foregroundColor: Colors.white,
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (_) => const ContactsScreen(),
            ),
          );
        },
        child: const Icon(Icons.add_comment),
      ),
    );
  }

  Widget _filter(String label) {
    final selected = selectedFilter == label;

    return Padding(
      padding: const EdgeInsets.only(right: 8),
      child: ChoiceChip(
        label: Text(label),
        selected: selected,
        onSelected: (_) {
          setState(() {
            selectedFilter = label;
          });
        },
        selectedColor: const Color(0xFFDDF5EE),
      ),
    );
  }
}
