
import 'package:flutter/material.dart';
import 'settings_detail_screens.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  static const green = Color(0xFF008F76);

  String name = 'Your Name';
  String about = 'Available';
  String phone = '+92 300 1234567';

  void editField(String title, String currentValue,
      Function(String) onSave) {
    final controller = TextEditingController(text: currentValue);

    showDialog(
      context: context,
      builder: (dialogContext) => AlertDialog(
        title: Text('Edit $title'),
        content: TextField(
          controller: controller,
          autofocus: true,
          decoration: InputDecoration(
            labelText: title,
            focusedBorder: const UnderlineInputBorder(
              borderSide: BorderSide(color: green),
            ),
          ),
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(dialogContext),
            child: const Text('Cancel'),
          ),
          TextButton(
            onPressed: () {
              onSave(controller.text.trim());
              Navigator.pop(dialogContext);
            },
            child: const Text(
              'Save',
              style: TextStyle(color: green),
            ),
          ),
        ],
      ),
    );
  }

  Widget profileItem(
    IconData icon,
    String title,
    String value,
    VoidCallback onTap,
  ) {
    return ListTile(
      leading: Icon(icon, color: Colors.grey.shade600),
      title: Text(title),
      subtitle: Text(value),
      trailing: const Icon(Icons.edit_outlined, size: 19),
      onTap: onTap,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF8FAF9),
      appBar: AppBar(
        title: const Text('Profile'),
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        elevation: 0,
        actions: [
          IconButton(
            icon: const Icon(Icons.qr_code),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (_) => const QrCodeScreen(),
                ),
              );
            },
          ),
        ],
      ),
      body: ListView(
        children: [
          const SizedBox(height: 25),

          Center(
            child: Stack(
              children: [
                const CircleAvatar(
                  radius: 57,
                  backgroundColor: Color(0xFFD8F3EA),
                  child: Icon(
                    Icons.person,
                    size: 65,
                    color: green,
                  ),
                ),
                Positioned(
                  right: 0,
                  bottom: 0,
                  child: Container(
                    padding: const EdgeInsets.all(8),
                    decoration: const BoxDecoration(
                      color: green,
                      shape: BoxShape.circle,
                    ),
                    child: const Icon(
                      Icons.camera_alt,
                      size: 18,
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
          ),

          const SizedBox(height: 12),

          const Center(
            child: Text(
              'Tap photo to change profile picture',
              style: TextStyle(color: Colors.grey, fontSize: 12),
            ),
          ),

          const SizedBox(height: 25),

          profileItem(
            Icons.person_outline,
            'Name',
            name,
            () => editField('Name', name, (value) {
              setState(() => name = value);
            }),
          ),

          profileItem(
            Icons.info_outline,
            'About',
            about,
            () => editField('About', about, (value) {
              setState(() => about = value);
            }),
          ),

          profileItem(
            Icons.phone_outlined,
            'Phone',
            phone,
            () => editField('Phone', phone, (value) {
              setState(() => phone = value);
            }),
          ),

          const Divider(height: 30),

          ListTile(
            leading: const Icon(Icons.qr_code, color: green),
            title: const Text('QR Code'),
            subtitle: const Text('Your personal QR code'),
            trailing: const Icon(Icons.chevron_right),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (_) => const QrCodeScreen(),
                ),
              );
            },
          ),

          ListTile(
            leading: const Icon(Icons.share_outlined, color: green),
            title: const Text('Share profile'),
            subtitle: const Text('Share your profile information'),
            trailing: const Icon(Icons.chevron_right),
            onTap: () {
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(
                  content: Text('Share profile UI demonstration'),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
