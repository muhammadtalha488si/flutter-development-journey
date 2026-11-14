
import 'package:flutter/material.dart';

class CallsScreen extends StatelessWidget {
  const CallsScreen({super.key});

  final List<Map<String, dynamic>> calls = const [
    {
      'name': 'Ahmed Khan',
      'time': 'Today, 10:30 AM',
      'icon': Icons.call_received,
      'color': Colors.green,
    },
    {
      'name': 'Ali Raza',
      'time': 'Today, 09:15 AM',
      'icon': Icons.call_made,
      'color': Colors.green,
    },
    {
      'name': 'Usman',
      'time': 'Yesterday, 08:20 PM',
      'icon': Icons.call_missed,
      'color': Colors.red,
    },
    {
      'name': 'Hamza',
      'time': 'Yesterday, 05:40 PM',
      'icon': Icons.videocam,
      'color': Colors.green,
    },
  ];

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        const Padding(
          padding: EdgeInsets.all(16),
          child: Text(
            'Recent calls',
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),

        ...calls.map((call) {
          return ListTile(
            leading: const CircleAvatar(
              radius: 26,
              backgroundColor: Color(0xFF008F76),
              child: Icon(Icons.person, color: Colors.white),
            ),
            title: Text(
              call['name'],
              style: const TextStyle(fontWeight: FontWeight.bold),
            ),
            subtitle: Row(
              children: [
                Icon(
                  call['icon'],
                  size: 16,
                  color: call['color'],
                ),
                const SizedBox(width: 6),
                Text(call['time']),
              ],
            ),
            trailing: IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.call,
                color: Color(0xFF008F76),
              ),
            ),
          );
        }),
      ],
    );
  }
}
