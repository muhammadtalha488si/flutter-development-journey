
import 'package:flutter/material.dart';

class StatusScreen extends StatelessWidget {
  const StatusScreen({super.key});

  final List<Map<String, String>> people = const [
    {'name': 'Ahmed', 'time': 'Today, 10:30 AM', 'initial': 'A'},
    {'name': 'Usman', 'time': 'Today, 09:45 AM', 'initial': 'U'},
    {'name': 'Hamza', 'time': 'Today, 08:20 AM', 'initial': 'H'},
    {'name': 'Ali', 'time': 'Yesterday', 'initial': 'A'},
  ];

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.only(bottom: 20),
      children: [
        const Padding(
          padding: EdgeInsets.all(16),
          child: Text(
            'Status updates',
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),

        ListTile(
          leading: Stack(
            children: [
              const CircleAvatar(
                radius: 27,
                backgroundColor: Color(0xFF008F76),
                child: Icon(Icons.person, color: Colors.white),
              ),
              Positioned(
                right: 0,
                bottom: 0,
                child: Container(
                  decoration: const BoxDecoration(
                    color: Color(0xFF008F76),
                    shape: BoxShape.circle,
                  ),
                  child: const Icon(
                    Icons.add,
                    size: 17,
                    color: Colors.white,
                  ),
                ),
              ),
            ],
          ),
          title: const Text('My status'),
          subtitle: const Text('Tap to add status update'),
          onTap: () {},
        ),

        const Padding(
          padding: EdgeInsets.all(16),
          child: Text(
            'Recent updates',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ),

        ...people.map(
          (person) => ListTile(
            leading: Container(
              padding: const EdgeInsets.all(3),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(
                  color: const Color(0xFF008F76),
                  width: 2,
                ),
              ),
              child: CircleAvatar(
                radius: 24,
                backgroundColor: Colors.teal.shade100,
                child: Text(
                  person['initial']!,
                  style: const TextStyle(
                    color: Color(0xFF075E54),
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            title: Text(person['name']!),
            subtitle: Text(person['time']!),
            onTap: () {},
          ),
        ),
      ],
    );
  }
}
