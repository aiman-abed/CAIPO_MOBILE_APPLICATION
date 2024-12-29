import 'package:flutter/material.dart';

class AIPreferencesPage extends StatelessWidget {
  const AIPreferencesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('AI Preferences'),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Center(
        child: const Text(
          'AI Preferences Settings Page',
          style: TextStyle(fontSize: 18),
        ),
      ),
    );
  }
}
