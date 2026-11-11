
import 'package:flutter/material.dart';
import 'package:flutter_first_project/whatsApp%20ui%20clone/screens/splash_screen.dart';


void main() {
  runApp(const WhatsAppClone());
}

class WhatsAppClone extends StatelessWidget {
  const WhatsAppClone({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'WhatsApp Clone',

      theme: ThemeData(
        useMaterial3: true,
        scaffoldBackgroundColor: Colors.white,
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color(0xFF075E54),
        ),
      ),

      home: const SplashScreen(),
    );
  }
}
