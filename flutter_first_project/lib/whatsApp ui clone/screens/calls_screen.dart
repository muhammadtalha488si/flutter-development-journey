
import 'package:flutter/material.dart';

class CallsScreen extends StatelessWidget {
  const CallsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: const [

        ListTile(
          leading: CircleAvatar(
            backgroundColor: Color(0xFF075E54),
            child: Icon(Icons.person, color: Colors.white),
          ),
          title: Text('Ahmed'),
          subtitle: Text('Incoming call · Today, 10:30 AM'),
          trailing: Icon(
            Icons.call,
            color: Color(0xFF075E54),
          ),
        ),

        ListTile(
          leading: CircleAvatar(
            backgroundColor: Colors.blue,
            child: Icon(Icons.person, color: Colors.white),
          ),
          title: Text('Ali'),
          subtitle: Text('Outgoing call · Yesterday'),
          trailing: Icon(
            Icons.call_made,
            color: Color(0xFF075E54),
          ),
        ),

        ListTile(
          leading: CircleAvatar(
            backgroundColor: Colors.orange,
            child: Icon(Icons.person, color: Colors.white),
          ),
          title: Text('Usman'),
          subtitle: Text('Missed call · Yesterday'),
          trailing: Icon(
            Icons.call_missed,
            color: Colors.red,
          ),
        ),
      ],
    );
  }
}
