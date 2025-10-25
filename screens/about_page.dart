import 'package:flutter/material.dart';

class AboutPage extends StatelessWidget {
  const AboutPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Tentang Aplikasi')),
      body: Padding(
        padding: EdgeInsets.all(24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Profile Card App',
              style: Theme.of(context).textTheme.headlineSmall,
            ),
            SizedBox(height: 16),
            Text(
              'Aplikasi ini dibuat untuk latihan dasar Flutter seperti layout, tema, font, dan penggunaan state.\n\n'
              'Fitur yang tersedia:\n'
              '• Ganti tema (gelap/terang)\n'
              '• Edit profil (nama, email, telepon)\n'
              '• Navigasi ke halaman tentang aplikasi\n\n'
              'Dibuat oleh: Irgi Rangga Saputra ',
              style: TextStyle(fontSize: 16, height: 1.5),
            ),
          ],
        ),
      ),
    );
  }
}
