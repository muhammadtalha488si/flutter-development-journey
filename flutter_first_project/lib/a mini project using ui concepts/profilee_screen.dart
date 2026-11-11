
import 'package:flutter/material.dart';
import 'edit_profile_screen.dart';
import 'settings_screen.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() =>
      _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {

  String name = 'Muhammad Talha';
  String email = 'talha@example.com';
  String bio =
      'Flutter Developer | Learning Mobile App Development';

  // Skills
  final List<String> skills = [
    'Flutter',
    'Dart',
    'UI Design',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF3F5F9),

      appBar: AppBar(
        title: const Text('My Profile'),
        centerTitle: true,
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,

        actions: [
          IconButton(
            icon: const Icon(Icons.settings),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) =>
                      const SettingsScreen(),
                ),
              );
            },
          ),
        ],
      ),

      // Scrollable screen
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20),

        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,

          children: [

            // PROFILE PICTURE
            CircleAvatar(
              radius: 60,
              backgroundColor: Colors.blue,
              backgroundImage: const AssetImage(
                'assets/images/image1.JPG',
              ),
            ),

            const SizedBox(height: 15),

            // NAME
            Text(
              name,
              style: const TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 5),

            // EMAIL
            Text(
              email,
              style: TextStyle(
                fontSize: 15,
                color: Colors.grey[600],
              ),
            ),

            const SizedBox(height: 20),

            // EDIT PROFILE BUTTON
            SizedBox(
              width: double.infinity,
              child: ElevatedButton.icon(
                icon: const Icon(Icons.edit),
                label: const Text('Edit Profile'),

                onPressed: () async {
                  final result = await Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) =>
                          EditProfileScreen(
                        name: name,
                        email: email,
                        bio: bio,
                      ),
                    ),
                  );

                  if (result != null) {
                    setState(() {
                      name = result['name'];
                      email = result['email'];
                      bio = result['bio'];
                    });
                  }
                },
              ),
            ),

            const SizedBox(height: 25),

            // ABOUT ME SECTION
            buildSection(
              title: 'About Me',
              child: Text(
                bio,
                style: const TextStyle(fontSize: 15),
              ),
            ),

            const SizedBox(height: 20),

            // SKILLS SECTION
            buildSection(
              title: 'My Skills',

              child: Wrap(
                spacing: 10,
                runSpacing: 10,

                children: skills.map((skill) {
                  return Chip(
                    avatar: const Icon(
                      Icons.check_circle,
                      color: Colors.blue,
                      size: 18,
                    ),
                    label: Text(skill),
                    backgroundColor:
                        Colors.blue.withValues(alpha: 0.08),
                  );
                }).toList(),
              ),
            ),

            const SizedBox(height: 20),

            // PERSONAL INFORMATION
            buildSection(
              title: 'Personal Information',

              child: Column(
                children: const [

                  ListTile(
                    leading: Icon(Icons.phone),
                    title: Text('Phone'),
                    subtitle: Text('+92 300 0000000'),
                  ),

                  Divider(),

                  ListTile(
                    leading: Icon(Icons.location_on),
                    title: Text('Location'),
                    subtitle: Text('Pakistan'),
                  ),

                  Divider(),

                  ListTile(
                    leading: Icon(Icons.school),
                    title: Text('Education'),
                    subtitle: Text(
                      'Computer Software Engineering Student',
                    ),
                  ),
                ],
              ),
            ),

            const SizedBox(height: 20),

            // SOCIAL MEDIA SECTION
            buildSection(
              title: 'Connect With Me',

              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,

                children: [

                  // GITHUB
                  Column(
  children: [
    CircleAvatar(
      radius: 30,
      backgroundColor: const Color.fromARGB(255, 247, 246, 246),
      child: ClipOval(
        child: Image.asset(
          'assets/icons/telegram.png',
          width: 60,
          height: 60,
          fit: BoxFit.cover,
        ),
      ),
    ),

    const SizedBox(height: 10),

    const Text(
      'Telegram',
      style: TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.bold,
        color: Colors.black,
      ),
    ),
  ],
),
                  const SizedBox(width: 25),

                  // LINKEDIN
                 Column(
  children: [
    CircleAvatar(
      radius: 30,
      backgroundColor: const Color.fromARGB(255, 243, 244, 245),
      child: ClipOval(
        child: Image.asset(
          'assets/icons/linkedin.png',
          width: 70,
          height: 60,
          fit: BoxFit.cover,
        ),
      ),
    ),

    const SizedBox(height: 10),

    const Text(
      'LinkedIn',
      style: TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.bold,
        color: Colors.black,
      ),
    ),
  ],
),
                ],
              ),
            ),

            const SizedBox(height: 25),

          ],
        ),
      ),
    );
  }

  // REUSABLE SECTION WIDGET
  Widget buildSection({
    required String title,
    required Widget child,
  }) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(18),

      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withValues(alpha: 0.04),
            blurRadius: 8,
            offset: const Offset(0, 3),
          ),
        ],
      ),

      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,

        children: [

          Text(
            title,
            style: const TextStyle(
              fontSize: 19,
              fontWeight: FontWeight.bold,
            ),
          ),

          const SizedBox(height: 15),

          child,
        ],
      ),
    );
  }
}
