import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'theme_provider.dart';
import 'account_profile_page.dart';
import 'ai_preferences_page.dart';
import 'notifications_page.dart';
import 'privacy_data_page.dart';
import 'appearance_display_page.dart';
import 'advanced_settings_page.dart';
import 'about_support_page.dart';

class SettingsScreen extends StatefulWidget {
  const SettingsScreen({super.key});

  @override
  _SettingsScreenState createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  final TextEditingController _searchController = TextEditingController();
  String _searchQuery = '';

  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<ThemeProvider>(context, listen: true);

    final List<Map<String, dynamic>> settingsOptions = [
      {
        'title': 'Account & Profile',
        'icon': Icons.person,
        'page': const AccountProfilePage(),
      },
      {
        'title': 'AI Preferences',
        'icon': Icons.smart_toy,
        'page': const AIPreferencesPage(),
      },
      {
        'title': 'Notifications & Reminders',
        'icon': Icons.notifications,
        'page': const NotificationsPage(),
      },
      {
        'title': 'Dark Mode',
        'icon': Icons.dark_mode,
        'widget': Switch(
          value: themeProvider.themeMode == ThemeMode.dark,
          onChanged: (value) {
            themeProvider.toggleTheme(value);
          },
        ),
      },
      {
        'title': 'Privacy & Data',
        'icon': Icons.lock,
        'page': const PrivacyDataPage(),
      },
      {
        'title': 'Appearance & Display',
        'icon': Icons.format_paint,
        'page': const AppearanceDisplayPage(),
      },
      {
        'title': 'Advanced Settings',
        'icon': Icons.settings,
        'page': const AdvancedSettingsPage(),
      },
      {
        'title': 'About & Support',
        'icon': Icons.help,
        'page': const AboutSupportPage(),
      },
    ];

    final filteredOptions = settingsOptions
        .where((option) =>
            option['title'].toString().toLowerCase().contains(_searchQuery.toLowerCase()))
        .toList();

    return Scaffold(
      appBar: AppBar(
        title: const Text('Settings'),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Column(
        children: [
          // Search bar
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              controller: _searchController,
              decoration: const InputDecoration(
                hintText: 'Search settings...',
                border: OutlineInputBorder(),
                prefixIcon: Icon(Icons.search),
              ),
              onChanged: (value) {
                setState(() {
                  _searchQuery = value;
                });
              },
            ),
          ),

          // Settings options
          Expanded(
            child: ListView.builder(
              itemCount: filteredOptions.length,
              itemBuilder: (context, index) {
                final option = filteredOptions[index];

                return ListTile(
                  leading: Icon(option['icon']),
                  title: Text(option['title']),
                  trailing: option['widget'] ?? const Icon(Icons.arrow_forward),
                  onTap: option['page'] != null
                      ? () => Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => option['page'],
                            ),
                          )
                      : null,
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
