
import 'package:flutter/material.dart';

class ChannelProfileScreen extends StatefulWidget {
  final String channelName;
  final String description;
  final String followers;
  final String letter;
  final Color color;

  const ChannelProfileScreen({
    super.key,
    required this.channelName,
    required this.description,
    required this.followers,
    required this.letter,
    required this.color,
  });

  @override
  State<ChannelProfileScreen> createState() =>
      _ChannelProfileScreenState();
}

class _ChannelProfileScreenState
    extends State<ChannelProfileScreen> {
  bool isFollowing = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF8FAF9),
      appBar: AppBar(
        backgroundColor: const Color(0xFFF8FAF9),
        title: const Text('Channel'),
      ),
      body: ListView(
        children: [
          const SizedBox(height: 20),

          Center(
            child: CircleAvatar(
              radius: 48,
              backgroundColor: widget.color.withOpacity(0.15),
              child: Text(
                widget.letter,
                style: TextStyle(
                  color: widget.color,
                  fontSize: 38,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),

          const SizedBox(height: 15),

          Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  widget.channelName,
                  style: const TextStyle(
                    fontSize: 23,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(width: 5),
                const Icon(
                  Icons.verified,
                  color: Colors.blue,
                  size: 20,
                ),
              ],
            ),
          ),

          const SizedBox(height: 7),

          Center(
            child: Text(
              widget.followers,
              style: const TextStyle(color: Colors.black54),
            ),
          ),

          Padding(
            padding: const EdgeInsets.all(20),
            child: Text(
              widget.description,
              textAlign: TextAlign.center,
              style: const TextStyle(fontSize: 14),
            ),
          ),

          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: ElevatedButton(
              onPressed: () {
                setState(() {
                  isFollowing = !isFollowing;
                });
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xFFD8F3EA),
                foregroundColor: const Color(0xFF008F76),
                padding: const EdgeInsets.symmetric(vertical: 13),
              ),
              child: Text(
                isFollowing ? 'Following' : 'Follow channel',
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),

          const Divider(height: 35),

          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 18),
            child: Text(
              'Channel updates',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),

          const SizedBox(height: 15),

          postCard(
            'Welcome to our channel!',
            'Follow us to receive the latest news and updates.',
            '10:30 AM',
          ),

          postCard(
            'New update is available',
            'Stay connected and keep learning something new.',
            'Yesterday',
          ),

          postCard(
            'Thank you for following us!',
            'We appreciate your support.',
            'Monday',
          ),
        ],
      ),
    );
  }

  Widget postCard(String title, String description, String time) {
    return Card(
      color: Colors.white,
      margin: const EdgeInsets.symmetric(
        horizontal: 15,
        vertical: 7,
      ),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 8),
            Text(description),
            const SizedBox(height: 12),
            Row(
              children: [
                Text(
                  time,
                  style: const TextStyle(
                    color: Colors.grey,
                    fontSize: 12,
                  ),
                ),
                const Spacer(),
                const Icon(
                  Icons.favorite_border,
                  size: 19,
                  color: Colors.grey,
                ),
                const SizedBox(width: 18),
                const Icon(
                  Icons.share_outlined,
                  size: 19,
                  color: Colors.grey,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
