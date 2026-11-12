
import 'package:flutter/material.dart';
import 'channel_profile_screen.dart';

class ChannelsScreen extends StatefulWidget {
  const ChannelsScreen({super.key});

  @override
  State<ChannelsScreen> createState() => _ChannelsScreenState();
}

class _ChannelsScreenState extends State<ChannelsScreen> {
  final TextEditingController searchController =
      TextEditingController();

  String searchQuery = '';

  final List<Map<String, dynamic>> channels = [
    {
      'name': 'WhatsApp',
      'description': 'Official WhatsApp updates',
      'followers': '25M followers',
      'letter': 'W',
      'color': Colors.green,
      'verified': true,
    },
    {
      'name': 'Technology News',
      'description': 'Technology and innovation news',
      'followers': '850K followers',
      'letter': 'T',
      'color': Colors.blue,
      'verified': true,
    },
    {
      'name': 'Football Updates',
      'description': 'Latest football news',
      'followers': '2.1M followers',
      'letter': 'F',
      'color': Colors.orange,
      'verified': false,
    },
    {
      'name': 'Cricket World',
      'description': 'Cricket news and match updates',
      'followers': '1.5M followers',
      'letter': 'C',
      'color': Colors.teal,
      'verified': true,
    },
    {
      'name': 'Education Hub',
      'description': 'Learning and educational content',
      'followers': '450K followers',
      'letter': 'E',
      'color': Colors.purple,
      'verified': false,
    },
    {
      'name': 'AI Updates',
      'description': 'Artificial intelligence news',
      'followers': '900K followers',
      'letter': 'A',
      'color': Colors.indigo,
      'verified': true,
    },
  ];

  final Set<String> followedChannels = {};

  @override
  void dispose() {
    searchController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final filteredChannels = channels.where((channel) {
      return channel['name']
          .toString()
          .toLowerCase()
          .contains(searchQuery.toLowerCase());
    }).toList();

    return Scaffold(
      backgroundColor: const Color(0xFFF8FAF9),
      appBar: AppBar(
        backgroundColor: const Color(0xFFF8FAF9),
        title: const Text(
          'Explore channels',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(16),
            child: TextField(
              controller: searchController,
              onChanged: (value) {
                setState(() {
                  searchQuery = value;
                });
              },
              decoration: InputDecoration(
                hintText: 'Search channels',
                prefixIcon: const Icon(Icons.search),
                filled: true,
                fillColor: Colors.white,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15),
                  borderSide: BorderSide.none,
                ),
              ),
            ),
          ),

          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 18),
            child: Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'Find channels to follow',
                style: TextStyle(
                  fontSize: 19,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),

          const SizedBox(height: 10),

          Expanded(
            child: filteredChannels.isEmpty
                ? const Center(child: Text('No channels found'))
                : ListView.builder(
                    itemCount: filteredChannels.length,
                    itemBuilder: (context, index) {
                      final channel = filteredChannels[index];
                      final name = channel['name'] as String;
                      final followed =
                          followedChannels.contains(name);

                      return ListTile(
                        contentPadding: const EdgeInsets.symmetric(
                          horizontal: 16,
                          vertical: 7,
                        ),
                        leading: CircleAvatar(
                          radius: 27,
                          backgroundColor:
                              (channel['color'] as Color).withOpacity(0.15),
                          child: Text(
                            channel['letter'],
                            style: TextStyle(
                              color: channel['color'],
                              fontSize: 21,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        title: Row(
                          children: [
                            Flexible(
                              child: Text(
                                name,
                                style: const TextStyle(
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ),
                            if (channel['verified'] == true)
                              const Padding(
                                padding: EdgeInsets.only(left: 5),
                                child: Icon(
                                  Icons.verified,
                                  color: Colors.blue,
                                  size: 16,
                                ),
                              ),
                          ],
                        ),
                        subtitle: Text(
                          '${channel['description']}\n${channel['followers']}',
                          maxLines: 2,
                        ),
                        trailing: ElevatedButton(
                          onPressed: () {
                            setState(() {
                              if (followed) {
                                followedChannels.remove(name);
                              } else {
                                followedChannels.add(name);
                              }
                            });
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: followed
                                ? const Color(0xFFE4F3ED)
                                : const Color(0xFFD8F3EA),
                            foregroundColor:
                                const Color(0xFF008F76),
                            elevation: 0,
                          ),
                          child: Text(
                            followed ? 'Following' : 'Follow',
                          ),
                        ),
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (_) => ChannelProfileScreen(
                                channelName: name,
                                description: channel['description'],
                                followers: channel['followers'],
                                letter: channel['letter'],
                                color: channel['color'],
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
    );
  }
}
