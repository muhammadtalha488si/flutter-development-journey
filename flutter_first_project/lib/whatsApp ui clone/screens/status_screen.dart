
import 'package:flutter/material.dart';

class StatusScreen extends StatelessWidget {
  const StatusScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [

        const Padding(
          padding: EdgeInsets.all(15),
          child: Text(
            'Status',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),

        ListTile(
          leading: const CircleAvatar(
            radius: 28,
            backgroundColor: Color(0xFF075E54),
            child: Icon(Icons.person, color: Colors.white),
          ),
          title: const Text('My Status'),
          subtitle: const Text('Tap to add status'),
          trailing: IconButton(
            onPressed: () {},
            icon: const Icon(Icons.add_circle),
          ),
        ),

        const Divider(),

        const Padding(
          padding: EdgeInsets.all(15),
          child: Text(
            'Recent Updates',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ),

        const ListTile(
          leading: CircleAvatar(
            backgroundColor: Colors.orange,
            child: Text('A'),
          ),
          title: Text('Ahmed'),
          subtitle: Text('Today, 10:20 AM'),
        ),

        const ListTile(
          leading: CircleAvatar(
            backgroundColor: Colors.blue,
            child: Text('U'),
          ),
          title: Text('Usman'),
          subtitle: Text('Today, 09:30 AM'),
        ),

        const ListTile(
          leading: CircleAvatar(
            backgroundColor: Colors.purple,
            child: Text('H'),
          ),
          title: Text('Hamza'),
          subtitle: Text('Today, 08:45 AM'),

          

          
        ),
      ],
    );
  }
}
