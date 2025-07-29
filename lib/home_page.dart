import 'package:flutter/material.dart';
import 'term1_page.dart';
import 'term2_page.dart';
import 'term3_page.dart';
import 'term4_page.dart';
import 'learning_outcome_page.dart';
import 'profile_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Map<String, dynamic>> menuItems = [
      {'title': 'ปี 1 เทอม 1', 'icon': Icons.book, 'page': const Term1Page()},
      {
        'title': 'ปี 1 เทอม 2',
        'icon': Icons.menu_book,
        'page': const Term2Page(),
      },
      {'title': 'ปี 2 เทอม 1', 'icon': Icons.school, 'page': const Term3Page()},
      {'title': 'ปี 2 เทอม 2', 'icon': Icons.grade, 'page': const Term4Page()},

      {
        'title': 'ผลลัพธ์การเรียนรู้',
        'icon': Icons.assessment,
        'page': const LearningOutcomePage(),
      },
      {
        'title': 'โปรไฟล์ส่วนตัว',
        'icon': Icons.person,
        'page': const ProfilePage(),
      },
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text('🏠 หน้าแรก'),
        backgroundColor: Colors.teal,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'ยินดีต้อนรับ 👋',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 16),
            Expanded(
              child: ListView.builder(
                itemCount: menuItems.length,
                itemBuilder: (context, index) {
                  final item = menuItems[index];
                  return Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                    elevation: 4,
                    margin: const EdgeInsets.symmetric(vertical: 8),
                    child: ListTile(
                      leading: Icon(item['icon'], color: Colors.teal, size: 30),
                      title: Text(
                        item['title'],
                        style: const TextStyle(fontSize: 18),
                      ),
                      trailing: const Icon(Icons.arrow_forward_ios),
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (_) => item['page']),
                        );
                      },
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
