import 'package:flutter/material.dart';

class NewContactScreen extends StatefulWidget {
  const NewContactScreen({super.key});
  @override
  State<NewContactScreen> createState() => _NewContactScreenState();
}
class _NewContactScreenState extends State<NewContactScreen> {
  final name = TextEditingController();
  final phone = TextEditingController();
  @override
  void dispose() { name.dispose(); phone.dispose(); super.dispose(); }
  @override
  Widget build(BuildContext context) => Scaffold(
    appBar: AppBar(title: const Text('New Contact')),
    body: Padding(padding: const EdgeInsets.all(18), child: Column(children: [
      TextField(controller: name, decoration: const InputDecoration(
        labelText: 'Name', border: OutlineInputBorder())),
      const SizedBox(height: 14),
      TextField(controller: phone, keyboardType: TextInputType.phone,
        decoration: const InputDecoration(labelText: 'Phone number',
          border: OutlineInputBorder())),
      const SizedBox(height: 18),
      FilledButton(onPressed: () {
        if (name.text.trim().isEmpty || phone.text.trim().isEmpty) return;
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(content: Text('Contact saved in demo only')));
        Navigator.pop(context);
      }, child: const Text('Save Contact')),
    ])),
  );
}
