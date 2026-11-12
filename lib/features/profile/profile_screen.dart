import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.all(20),
      children: [
        const SizedBox(height: 12),
        const CircleAvatar(
          radius: 48,
          backgroundImage: AssetImage('assets/profile.png'),
        ),
        const SizedBox(height: 12),
        const Text(
          'Abdul Sattar',
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 22,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
        const Text(
          'student@example.com',
          textAlign: TextAlign.center,
          style: TextStyle(color: Colors.white70),
        ),
        const SizedBox(height: 24),
        const Card(
          child: ListTile(
            leading: Icon(Icons.school_outlined, color: Color(0xFF06D6A0)),
            title: Text('Program', style: TextStyle(color: Colors.white)),
            subtitle: Text('BS IT (Section 3B)', style: TextStyle(color: Colors.white70)),
          ),
        ),
        const Card(
          child: ListTile(
            leading: Icon(Icons.calendar_month_outlined, color: Color(0xFFFFD166)),
            title: Text('Semester', style: TextStyle(color: Colors.white)),
            subtitle: Text('Semester 3', style: TextStyle(color: Colors.white70)),
          ),
        ),
        Card(
          child: ListTile(
            leading: const Icon(Icons.info_outline, color: Color(0xFF118AB2)),
            title: const Text('App Information', style: TextStyle(color: Colors.white)),
            subtitle: const Text('Campus Hub Lab Prototype', style: TextStyle(color: Colors.white70)),
            onTap: () => showAboutDialog(
              context: context,
              applicationName: 'Campus Hub',
              applicationVersion: '1.0.0',
              children: const [Text('Built during a beginner Flutter lab.')],
            ),
          ),
        ),
      ],
    );
  }
}
