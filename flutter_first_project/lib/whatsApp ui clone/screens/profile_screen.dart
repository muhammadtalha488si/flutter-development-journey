
import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Profile'),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.qr_code),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.more_vert),
          ),
        ],
      ),

      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            const SizedBox(height: 25),

            const CircleAvatar(
              radius: 65,
              backgroundColor: Color(0xFF008F76),
              child: Icon(
                Icons.person,
                color: Colors.white,
                size: 75,
              ),
            ),

            const SizedBox(height: 18),

            const Text(
              'My Name',
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 5),

            const Text(
              '+92 300 0000000',
              style: TextStyle(color: Colors.grey),
            ),

            const SizedBox(height: 25),

            OutlinedButton.icon(
              onPressed: () {},
              icon: const Icon(Icons.edit),
              label: const Text('Edit Profile'),
            ),

            const SizedBox(height: 25),

            _profileInfo(
              Icons.person_outline,
              'Name',
              'My Name',
            ),

            _profileInfo(
              Icons.info_outline,
              'About',
              'Hey there! I am using WhatsApp.',
            ),

            _profileInfo(
              Icons.phone_outlined,
              'Phone',
              '+92 300 0000000',
            ),

            _profileInfo(
              Icons.qr_code,
              'QR Code',
              'Share your contact',
            ),
          ],
        ),
      ),
    );
  }

  Widget _profileInfo(
    IconData icon,
    String title,
    String value,
  ) {
    return ListTile(
      contentPadding: const EdgeInsets.symmetric(vertical: 5),
      leading: Icon(
        icon,
        color: const Color(0xFF008F76),
      ),
      title: Text(
        title,
        style: const TextStyle(color: Colors.grey),
      ),
      subtitle: Text(
        value,
        style: const TextStyle(fontSize: 16),
      ),
    );
  }
}
