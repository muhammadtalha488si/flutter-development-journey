
import 'package:flutter/material.dart';
import 'create_status_screen.dart';
import 'channels_screen.dart';

class StatusScreen extends StatelessWidget {
  const StatusScreen({super.key});

  static const green = Color(0xFF008F76);

  final List<Map<String, dynamic>> recentUpdates = const [
    {'name': 'Ahmed Khan', 'time': 'Today, 10:45 AM', 'avatar': 'A'},
    {'name': 'Ali Raza', 'time': 'Today, 09:30 AM', 'avatar': 'A'},
    {'name': 'Hassan', 'time': 'Today, 08:15 AM', 'avatar': 'H'},
  ];

  final List<Map<String, dynamic>> viewedUpdates = const [
    {'name': 'Usman', 'time': 'Yesterday, 09:20 PM', 'avatar': 'U'},
    {'name': 'Family Group', 'time': 'Yesterday, 07:10 PM', 'avatar': 'F'},
  ];

  void openCreateStatus(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (_) => const CreateStatusScreen(),
      ),
    );
  }

  Widget statusTile(
    BuildContext context,
    Map<String, dynamic> person, {
    required bool viewed,
  }) {
    return ListTile(
      contentPadding: const EdgeInsets.symmetric(
        horizontal: 16,
        vertical: 4,
      ),
      leading: Container(
        padding: const EdgeInsets.all(3),
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          border: Border.all(
            color: viewed ? Colors.grey.shade400 : green,
            width: 2.5,
          ),
        ),
        child: CircleAvatar(
          radius: 25,
          backgroundColor: const Color(0xFFD8F3EA),
          child: Text(
            person['avatar'],
            style: const TextStyle(
              color: green,
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
      title: Text(
        person['name'],
        style: const TextStyle(fontWeight: FontWeight.w600),
      ),
      subtitle: Text(
        person['time'],
        style: const TextStyle(fontSize: 12),
      ),
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (_) => StatusViewerScreen(
              personName: person['name'],
            ),
          ),
        );
      },
    );
  }

  Widget sectionTitle(String title) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(18, 18, 18, 8),
      child: Text(
        title,
        style: const TextStyle(
          fontSize: 14,
          color: Colors.black54,
          fontWeight: FontWeight.w600,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF8FAF9),
      body: SafeArea(
        child: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(18, 18, 18, 12),
              child: Row(
                children: [
                  const Expanded(
                    child: Text(
                      'Updates',
                      style: TextStyle(
                        fontSize: 28,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  IconButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (_) => const ChannelsScreen(),
                        ),
                      );
                    },
                    icon: const Icon(Icons.search),
                  ),
                  IconButton(
                    onPressed: () => openCreateStatus(context),
                    icon: const Icon(Icons.add_circle_outline),
                  ),
                ],
              ),
            ),

            sectionTitle('Status'),

            ListTile(
              contentPadding: const EdgeInsets.symmetric(
                horizontal: 16,
                vertical: 5,
              ),
              leading: Stack(
                children: [
                  const CircleAvatar(
                    radius: 29,
                    backgroundColor: Color(0xFFD8F3EA),
                    child: Icon(
                      Icons.person,
                      color: green,
                      size: 32,
                    ),
                  ),
                  Positioned(
                    right: 0,
                    bottom: 0,
                    child: Container(
                      decoration: const BoxDecoration(
                        color: green,
                        shape: BoxShape.circle,
                      ),
                      child: const Icon(
                        Icons.add,
                        color: Colors.white,
                        size: 19,
                      ),
                    ),
                  ),
                ],
              ),
              title: const Text(
                'My status',
                style: TextStyle(fontWeight: FontWeight.w600),
              ),
              subtitle: const Text('Tap to add status'),
              onTap: () => openCreateStatus(context),
            ),

            sectionTitle('Recent updates'),

            ...recentUpdates.map(
              (person) => statusTile(
                context,
                person,
                viewed: false,
              ),
            ),

            sectionTitle('Viewed updates'),

            ...viewedUpdates.map(
              (person) => statusTile(
                context,
                person,
                viewed: true,
              ),
            ),

            const Divider(height: 25),

            Padding(
              padding: const EdgeInsets.fromLTRB(18, 8, 18, 12),
              child: Row(
                children: [
                  const Expanded(
                    child: Text(
                      'Channels',
                      style: TextStyle(
                        fontSize: 21,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (_) => const ChannelsScreen(),
                        ),
                      );
                    },
                    child: const Text(
                      'Explore',
                      style: TextStyle(color: green),
                    ),
                  ),
                ],
              ),
            ),

            channelPreview(
              'WhatsApp',
              'Stay connected with the latest updates.',
              Icons.verified,
              Colors.green,
              'W',
            ),
            channelPreview(
              'Technology News',
              'Latest technology and innovation news.',
              Icons.computer,
              Colors.blue,
              'T',
            ),
            channelPreview(
              'Sports Updates',
              'Latest sports news and highlights.',
              Icons.sports_cricket,
              Colors.orange,
              'S',
            ),

            const SizedBox(height: 25),
          ],
        ),
      ),
    );
  }

  Widget channelPreview(
    String name,
    String description,
    IconData icon,
    Color color,
    String letter,
  ) {
    return ListTile(
      leading: CircleAvatar(
        radius: 24,
        backgroundColor: color.withOpacity(0.12),
        child: Icon(icon, color: color),
      ),
      title: Row(
        children: [
          Flexible(
            child: Text(
              name,
              style: const TextStyle(fontWeight: FontWeight.w600),
            ),
          ),
          if (name == 'WhatsApp')
            const Padding(
              padding: EdgeInsets.only(left: 4),
              child: Icon(
                Icons.verified,
                size: 15,
                color: Colors.blue,
              ),
            ),
        ],
      ),
      subtitle: Text(
        description,
        maxLines: 1,
        overflow: TextOverflow.ellipsis,
      ),
    );
  }
}

class StatusViewerScreen extends StatelessWidget {
  final String personName;

  const StatusViewerScreen({
    super.key,
    required this.personName,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Stack(
          children: [
            const Center(
              child: Text(
                'Status Preview',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 26,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Positioned(
              top: 12,
              left: 12,
              right: 12,
              child: Column(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: const LinearProgressIndicator(
                      value: 0.55,
                      minHeight: 3,
                      backgroundColor: Colors.white30,
                      color: Colors.white,
                    ),
                  ),
                  const SizedBox(height: 15),
                  Row(
                    children: [
                      const CircleAvatar(
                        child: Icon(Icons.person),
                      ),
                      const SizedBox(width: 10),
                      Expanded(
                        child: Text(
                          personName,
                          style: const TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      IconButton(
                        onPressed: () => Navigator.pop(context),
                        icon: const Icon(
                          Icons.close,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
