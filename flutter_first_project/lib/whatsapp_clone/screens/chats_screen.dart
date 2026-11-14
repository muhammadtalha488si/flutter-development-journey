
import 'package:flutter/material.dart';
import 'chat_screen.dart';

class ChatsScreen extends StatefulWidget {
  const ChatsScreen({super.key});

  @override
  State<ChatsScreen> createState() => _ChatsScreenState();
}

class _ChatsScreenState extends State<ChatsScreen> {
  String selectedFilter = 'All';
  String searchQuery = '';

  final TextEditingController searchController =
      TextEditingController();

  final List<Map<String, dynamic>> chats = [
    {
      'name': 'Ahmed Khan',
      'message': 'See you tomorrow!',
      'time': '10:45 PM',
      'unread': 2,
      'favorite': true,
      'group': false,
      'pinned': true,
      'online': true,
      'avatar': 'A',
    },
    {
      'name': 'Ali Raza',
      'message': 'Send me the project.',
      'time': '09:30 PM',
      'unread': 0,
      'favorite': false,
      'group': false,
      'pinned': true,
      'online': true,
      'avatar': 'A',
    },
    {
      'name': 'Flutter Developers',
      'message': 'Usman: New update available',
      'time': '08:15 PM',
      'unread': 5,
      'favorite': true,
      'group': true,
      'pinned': false,
      'online': false,
      'avatar': 'F',
    },
    {
      'name': 'Usman',
      'message': 'Thank you!',
      'time': 'Yesterday',
      'unread': 0,
      'favorite': false,
      'group': false,
      'pinned': false,
      'online': false,
      'avatar': 'U',
    },
    {
      'name': 'Family Group',
      'message': 'Mom: Good morning',
      'time': 'Yesterday',
      'unread': 3,
      'favorite': false,
      'group': true,
      'pinned': false,
      'online': false,
      'avatar': 'F',
    },
    {
      'name': 'Hassan',
      'message': 'Okay, no problem.',
      'time': 'Monday',
      'unread': 0,
      'favorite': true,
      'group': false,
      'pinned': false,
      'online': true,
      'avatar': 'H',
    },
  ];

  List<Map<String, dynamic>> get filteredChats {
    return chats.where((chat) {
      final matchesSearch = chat['name']
          .toString()
          .toLowerCase()
          .contains(searchQuery.toLowerCase());

      bool matchesFilter = true;

      if (selectedFilter == 'Unread') {
        matchesFilter = chat['unread'] > 0;
      } else if (selectedFilter == 'Favorites') {
        matchesFilter = chat['favorite'] == true;
      } else if (selectedFilter == 'Groups') {
        matchesFilter = chat['group'] == true;
      }

      return matchesSearch && matchesFilter;
    }).toList();
  }

  @override
  void dispose() {
    searchController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    const green = Color(0xFF008F76);

    return Scaffold(
      backgroundColor: const Color(0xFFF8FAF9),
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(18, 18, 18, 12),
              child: Row(
                children: [
                  const Expanded(
                    child: Text(
                      'Chats',
                      style: TextStyle(
                        fontSize: 28,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  IconButton(
                    onPressed: () {
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(
                          content: Text('Camera UI coming soon'),
                        ),
                      );
                    },
                    icon: const Icon(Icons.camera_alt_outlined),
                  ),
                  IconButton(
                    onPressed: () {
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(
                          content: Text('New chat UI coming soon'),
                        ),
                      );
                    },
                    icon: const Icon(Icons.add_comment_outlined),
                  ),
                ],
              ),
            ),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: TextField(
                controller: searchController,
                onChanged: (value) {
                  setState(() {
                    searchQuery = value;
                  });
                },
                decoration: InputDecoration(
                  hintText: 'Ask Meta AI or Search',
                  prefixIcon: const Icon(Icons.search),
                  filled: true,
                  fillColor: Colors.white,
                  contentPadding:
                      const EdgeInsets.symmetric(vertical: 14),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(16),
                    borderSide: BorderSide.none,
                  ),
                ),
              ),
            ),

            const SizedBox(height: 15),

            SizedBox(
              height: 42,
              child: ListView(
                scrollDirection: Axis.horizontal,
                padding: const EdgeInsets.symmetric(horizontal: 16),
                children: [
                  'All',
                  'Unread',
                  'Favorites',
                  'Groups',
                ].map((filter) {
                  final selected = selectedFilter == filter;

                  return Padding(
                    padding: const EdgeInsets.only(right: 9),
                    child: ChoiceChip(
                      label: Text(filter),
                      selected: selected,
                      selectedColor: const Color(0xFFD8F3EA),
                      backgroundColor: Colors.white,
                      labelStyle: TextStyle(
                        color: selected ? green : Colors.black87,
                        fontWeight: FontWeight.w600,
                      ),
                      onSelected: (_) {
                        setState(() {
                          selectedFilter = filter;
                        });
                      },
                    ),
                  );
                }).toList(),
              ),
            ),

            const SizedBox(height: 10),

            Expanded(
              child: filteredChats.isEmpty
                  ? const Center(
                      child: Text('No chats found'),
                    )
                  : ListView.builder(
                      itemCount: filteredChats.length,
                      itemBuilder: (context, index) {
                        final chat = filteredChats[index];

                        return Column(
                          children: [
                            if (chat['pinned'] == true)
                              const SizedBox(height: 2),

                            ListTile(
                              contentPadding:
                                  const EdgeInsets.symmetric(
                                horizontal: 16,
                                vertical: 5,
                              ),
                              leading: Stack(
                                children: [
                                  CircleAvatar(
                                    radius: 27,
                                    backgroundColor:
                                        const Color(0xFFD8F3EA),
                                    child: Text(
                                      chat['avatar'],
                                      style: const TextStyle(
                                        fontSize: 22,
                                        color: green,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                  if (chat['online'] == true)
                                    Positioned(
                                      right: 0,
                                      bottom: 0,
                                      child: Container(
                                        height: 13,
                                        width: 13,
                                        decoration: BoxDecoration(
                                          color: Colors.green,
                                          shape: BoxShape.circle,
                                          border: Border.all(
                                            color: Colors.white,
                                            width: 2,
                                          ),
                                        ),
                                      ),
                                    ),
                                ],
                              ),
                              title: Row(
                                children: [
                                  Expanded(
                                    child: Text(
                                      chat['name'],
                                      style: const TextStyle(
                                        fontWeight: FontWeight.w600,
                                        fontSize: 15,
                                      ),
                                    ),
                                  ),
                                  Text(
                                    chat['time'],
                                    style: TextStyle(
                                      fontSize: 11,
                                      color: chat['unread'] > 0
                                          ? green
                                          : Colors.grey,
                                    ),
                                  ),
                                ],
                              ),
                              subtitle: Row(
                                children: [
                                  Expanded(
                                    child: Text(
                                      chat['message'],
                                      maxLines: 1,
                                      overflow: TextOverflow.ellipsis,
                                      style: const TextStyle(
                                        color: Colors.black54,
                                        fontSize: 13,
                                      ),
                                    ),
                                  ),
                                  if (chat['pinned'] == true)
                                    const Icon(
                                      Icons.push_pin,
                                      size: 15,
                                      color: Colors.grey,
                                    ),
                                  if (chat['unread'] > 0)
                                    Container(
                                      margin:
                                          const EdgeInsets.only(left: 8),
                                      padding:
                                          const EdgeInsets.all(6),
                                      decoration: const BoxDecoration(
                                        color: green,
                                        shape: BoxShape.circle,
                                      ),
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
                            ),
                            const Divider(
                              height: 1,
                              indent: 82,
                              endIndent: 15,
                            ),
                          ],
                        );
                      },
                    ),
            ),
          ],
        ),
      ),
    );
  }
}
