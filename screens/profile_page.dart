import 'package:flutter/material.dart';
import 'about_page.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  // Data awal profil
  String name = 'Irgi Rangga Saputra';
  String title = 'CyberSecurity Enthusiast';
  String description =
      'Mahasiswa Teknik Informatika di Universitas Teknologi Bandung. '
      'Tertarik pada keamanan siber, pemrograman, dan teknologi terbaru.';
  String email = 'irgiranggasaputra12@gmail.com';
  String phone = '+62 812 3456 7890';
  String imagepath = 'assets/images/geminiirgi.jpg';

  // Controller untuk TextField
  final nameController = TextEditingController();
  final emailController = TextEditingController();
  final phoneController = TextEditingController();

  @override
  void initState() {
    super.initState();
    // Isi awal form dengan data profil
    nameController.text = name;
    emailController.text = email;
    phoneController.text = phone;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
          child: Card(
            elevation: 3,
            margin: EdgeInsets.all(24),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(16),
            ),
            child: Padding(
              padding: EdgeInsets.all(24),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Image.network(imagepath, width: 100),
                  SizedBox(height: 16),
                  Text(name, style: Theme.of(context).textTheme.titleLarge),
                  Text(title, style: TextStyle(color: Colors.grey)),
                  SizedBox(height: 8),
                  Text(description, textAlign: TextAlign.center),
                  Divider(height: 30),
                  Text('Email: $email'),
                  Text('Telepon: $phone'),
                  SizedBox(height: 20),

                  ElevatedButton.icon(
                    icon: Icon(Icons.edit),
                    label: Text('Edit Profil'),
                    onPressed: () {
                      _showEditForm(context);
                    },
                  ),
                  SizedBox(height: 10),

                  ElevatedButton.icon(
                    icon: Icon(Icons.info_outline),
                    label: Text('Tentang Aplikasi'),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (_) => AboutPage()),
                      );
                    },
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  // Fungsi tampilkan form edit
  void _showEditForm(BuildContext context) {
    showDialog(
      context: context,
      builder: (_) => AlertDialog(
        title: Text('Edit Profil'),
        content: SingleChildScrollView(
          child: Column(
            children: [
              TextField(
                controller: nameController,
                decoration: InputDecoration(labelText: 'Nama'),
              ),
              TextField(
                controller: emailController,
                decoration: InputDecoration(labelText: 'Email'),
              ),
              TextField(
                controller: phoneController,
                decoration: InputDecoration(labelText: 'Telepon'),
              ),
            ],
          ),
        ),
        actions: [
          TextButton(
            child: Text('Batal'),
            onPressed: () => Navigator.pop(context),
          ),
          ElevatedButton(
            child: Text('Simpan'),
            onPressed: () {
              setState(() {
                name = nameController.text;
                email = emailController.text;
                phone = phoneController.text;
              });
              Navigator.pop(context);
            },
          ),
        ],
      ),
    );
  }
}
