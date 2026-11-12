
import 'package:flutter/material.dart';
import 'package:flutter_first_project/a%20mini%20project%20using%20ui%20concepts/settings_screen.dart';
import 'chats_screen.dart';
import 'status_screen.dart';
import 'contacts_screen.dart';
import 'calls_screen.dart';
import 'profile_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int selectedIndex = 0;

  final screens = const [
    ChatsScreen(),
    StatusScreen(),
    ContactsScreen(),
    CallsScreen(),
    SettingsScreen(),
  ];

  final titles = [
    'WhatsApp',
    'Updates',
    'Contacts',
    'Calls',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          titles[selectedIndex],
          style: const TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.bold,
            color: Color(0xFF008F76),
          ),
        ),
        actions: [
          PopupMenuButton<String>(
  onSelected: (value) {
    if (value == 'settings') {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (_) => const SettingsScreen(),
        ),
      );
    }
  },
  itemBuilder: (context) => const [
    PopupMenuItem(
      value: 'settings',
      child: Text('Settings'),
    ),
  ],
),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.search),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.camera_alt_outlined),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 12),
            child: GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (_) => const ProfileScreen(),
                  ),
                );
              },
              child: const CircleAvatar(
                radius: 17,
                backgroundColor: Color(0xFF008F76),
                child: Icon(
                  Icons.person,
                  color: Colors.white,
                  size: 20,
                ),
              ),
            ),
          ),
        ],
      ),

      body: IndexedStack(
        index: selectedIndex,
        children: screens,
      ),

      bottomNavigationBar: SafeArea(
        minimum: const EdgeInsets.fromLTRB(16, 0, 16, 12),
        child: Container(
          padding: const EdgeInsets.symmetric(
            vertical: 10,
            horizontal: 8,
          ),
          decoration: BoxDecoration(
            color: Theme.of(context).colorScheme.surface,
            borderRadius: BorderRadius.circular(30),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withValues(alpha: 0.10),
                blurRadius: 18,
                offset: const Offset(0, 5),
              ),
            ],
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              _navItem(Icons.chat_bubble_outline, 'Chats', 0),
              _navItem(Icons.circle_outlined, 'Updates', 1),
              _navItem(Icons.people_outline, 'Contacts', 2),
              _navItem(Icons.call_outlined, 'Calls', 3),
            ],
          ),
        ),
      ),
    );
  }

  Widget _navItem(IconData icon, String label, int index) {
    final selected = selectedIndex == index;

    return InkWell(
      borderRadius: BorderRadius.circular(25),
      onTap: () {
        setState(() {
          selectedIndex = index;
        });
      },
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 220),
        padding: const EdgeInsets.symmetric(
          horizontal: 15,
          vertical: 9,
        ),
        decoration: BoxDecoration(
          color: selected
              ? const Color(0xFFDDF5EE)
              : Colors.transparent,
          borderRadius: BorderRadius.circular(25),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(
              icon,
              color: selected
                  ? const Color(0xFF008F76)
                  : Colors.grey,
            ),
            const SizedBox(height: 3),
            Text(
              label,
              style: TextStyle(
                fontSize: 11,
                fontWeight:
                    selected ? FontWeight.bold : FontWeight.normal,
                color: selected
                    ? const Color(0xFF008F76)
                    : Colors.grey,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
