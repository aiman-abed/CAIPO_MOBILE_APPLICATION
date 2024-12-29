import 'package:flutter/material.dart';

class AppearanceDisplayPage extends StatelessWidget {
  const AppearanceDisplayPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Appearance & Display'),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Center(
        child: const Text(
          'Appearance & Display Settings Page',
          style: TextStyle(fontSize: 18),
        ),
      ),
    );
  }
}
