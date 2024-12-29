# CAIPO Application

## Overview
The **CAIPO Application** is a comprehensive Flutter app designed to manage and customize various settings for an AI-based system. The app provides users with intuitive interfaces to manage profiles, preferences, notifications, and more, while offering seamless navigation and search functionality.

## Features

### Settings Pages
- **Account & Profile:** Manage user details and profile settings.
- **AI Preferences:** Customize AI behavior and preferences.
- **Notifications & Reminders:** Configure notification preferences.
- **Privacy & Data:** Review and control privacy settings.
- **Appearance & Display:** Adjust UI appearance and theme settings.
- **Advanced Settings:** Access and configure advanced app features.
- **About & Support:** Learn more about the app and access support resources.

### Search Functionality
- A powerful search bar in the settings screen allows users to find options across all tabs and subpages.

### Dark Mode Toggle
- Easily switch between light and dark themes using the Dark Mode toggle.

## Technical Stack
- **Flutter**: For building cross-platform applications.
- **Provider**: State management solution for managing app-wide states (e.g., themes).
- **Dart**: Programming language for Flutter.

## File Structure
```
lib/
├── main.dart                   # App entry point
├── settings_page.dart          # Main settings screen
├── account_profile_page.dart   # Account & Profile screen
├── ai_preferences_page.dart    # AI Preferences screen
├── notifications_page.dart     # Notifications screen
├── privacy_data_page.dart      # Privacy & Data screen
├── appearance_display_page.dart# Appearance & Display screen
├── advanced_settings_page.dart # Advanced Settings screen
├── about_support_page.dart     # About & Support screen
├── theme_provider.dart         # Theme management logic
```

## Setup Instructions

1. **Clone the Repository:**
   ```bash
   git clone https://github.com/username/caipo-app.git
   cd caipo-app
   ```

2. **Install Dependencies:**
   ```bash
   flutter pub get
   ```

3. **Run the Application:**
   ```bash
   flutter run
   ```

4. **Ensure `.env` File Exists:**
   Add a `.env` file in the root of the project with necessary environment variables:
   ```env
   API_URL=https://your-api-url.com
   API_KEY=your-api-key
   ```

## Future Enhancements
- Integration with backend services for real-time data.
- Support for multiple languages (localization).
- Advanced customization for notifications and themes.

## Contributions
Contributions are welcome! Feel free to open an issue or submit a pull request on [GitHub](https://github.com/username/caipo-app).

## License
This project is licensed under the MIT License. See the LICENSE file for details.

---

**Developed by [Flomad Labs R&D]**
