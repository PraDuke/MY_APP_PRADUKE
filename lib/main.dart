import 'package:flutter/material.dart';
import 'profile_page.dart';
import 'term1_page.dart';
import 'term2_page.dart';
import 'term3_page.dart';
import 'term4_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Student Portal',
      theme: ThemeData(primarySwatch: Colors.teal),
      home: const MainMenuPage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MainMenuPage extends StatelessWidget {
  const MainMenuPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('📘 เมนูหลัก'), centerTitle: true),
      body: ListView(
        padding: const EdgeInsets.all(20),
        children: [
          const Text(
            'กรุณาเลือกเมนูที่ต้องการ',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 20),

          _buildMenuTile(context, '👤 โปรไฟล์ส่วนตัว', const ProfilePage()),
          _buildMenuTile(context, '📗 ปี 1 เทอม 1', const Term1Page()),
          _buildMenuTile(context, '📘 ปี 1 เทอม 2', const Term2Page()),
          _buildMenuTile(context, '📕 ปี 2 เทอม 1', const Term3Page()),
          _buildMenuTile(context, '📙 ปี 2 เทอม 2', const Term4Page()),
        ],
      ),
    );
  }

  Widget _buildMenuTile(BuildContext context, String title, Widget page) {
    return Card(
      margin: const EdgeInsets.symmetric(vertical: 8),
      elevation: 3,
      child: ListTile(
        title: Text(title),
        trailing: const Icon(Icons.arrow_forward_ios),
        onTap: () {
          Navigator.push(context, MaterialPageRoute(builder: (_) => page));
        },
      ),
    );
  }
}
