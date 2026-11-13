import 'package:flutter/material.dart';
import 'package:flutter_first_project/whatsApp%20ui%20clone/screens/feature_image.dart';


class AccountCenterScreen extends StatelessWidget {
  const AccountCenterScreen({super.key});
  @override
  Widget build(BuildContext context) => Scaffold(
    appBar: AppBar(title: const Text('Account Center')),
    body: ListView(padding: const EdgeInsets.all(18), children: const [
      Center(child: FeatureImage(path:
       'assets/images/my_profile.jpg',
        width: 90, height: 90, radius: 50)),
      SizedBox(height: 14),
      Text('Your Accounts', textAlign: TextAlign.center,
        style: TextStyle(fontSize: 21, fontWeight: FontWeight.bold)),
      ListTile(leading: Icon(Icons.person_outline), title: Text('Personal details')),
      ListTile(leading: Icon(Icons.security), title: Text('Password and security')),
      ListTile(leading: Icon(Icons.share), title: Text('Connected experiences')),
      ListTile(leading: Icon(Icons.settings), title: Text('Account preferences')),
    ]),
  );
}
