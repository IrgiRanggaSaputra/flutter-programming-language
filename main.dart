import 'package:flutter/material.dart';
import 'screens/profile_page.dart';
import 'themes/app_themes.dart';

void main() {
  runApp(ProfileCardApp());
}

class ProfileCardApp extends StatefulWidget {
  const ProfileCardApp({super.key});

  @override
  State<ProfileCardApp> createState() => _ProfileCardAppState();
}

class _ProfileCardAppState extends State<ProfileCardApp> {
  ThemeMode themeMode = ThemeMode.system; // default: mengikuti sistem

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Profile Card App',
      theme: AppTheme.lightTheme,
      darkTheme: AppTheme.darkTheme,
      themeMode: themeMode,
      home: Scaffold(
        appBar: AppBar(
          title: Text('Profile Card App'),
          actions: [
            PopupMenuButton<String>(
              icon: Icon(Icons.palette, color: Colors.white),
              onSelected: (value) {
                setState(() {
                  if (value == 'Terang') {
                    themeMode = ThemeMode.light;
                  } else if (value == 'Gelap')
                    themeMode = ThemeMode.dark;
                  else
                    themeMode = ThemeMode.system;
                });
              },
              itemBuilder: (context) => [
                PopupMenuItem(value: 'Terang', child: Text('Tema Terang')),
                PopupMenuItem(value: 'Gelap', child: Text('Tema Gelap')),
                PopupMenuItem(value: 'Sistem', child: Text('Ikuti Sistem')),
              ],
            ),
          ],
        ),
        body: ProfilePage(),
      ),
    );
  }
}
