import 'package:flutter/material.dart';

class LearningOutcomePage extends StatelessWidget {
  const LearningOutcomePage({super.key}); // ✅ ใส่ constructor

  final List<Map<String, String>> outcomes = const [
    {
      'year': 'ปี 1',
      'summary':
          'เข้าใจพื้นฐานการเขียนโปรแกรม การใช้ภาษา Dart และโครงสร้างข้อมูลเบื้องต้น',
    },
    {
      'year': 'ปี 2',
      'summary': 'สามารถพัฒนาแอปมือถือด้วย Flutter และใช้ Git/GitHub ได้',
    },
    {
      'year': 'ปี 3',
      'summary':
          'สามารถออกแบบ UI/UX และเขียนแอปพลิเคชันที่ซับซ้อนขึ้น รวมถึงเชื่อมต่อกับฐานข้อมูล',
    },
    {
      'year': 'ปี 4',
      'summary': 'ทำโปรเจกต์จริง สร้างแอปพลิเคชันที่ใช้งานได้จริง',
    },
    {
      'year': 'ปี 5',
      'summary':
          'พร้อมทำงานจริง มีผลงานพอร์ต ใช้เครื่องมือพัฒนาและจัดการโครงการได้',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('ผลลัพธ์การเรียนรู้')),
      body: ListView.builder(
        padding: const EdgeInsets.all(16),
        itemCount: outcomes.length,
        itemBuilder: (context, index) {
          final item = outcomes[index];
          return Card(
            margin: const EdgeInsets.symmetric(vertical: 8),
            elevation: 3,
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    item['year'] ?? '',
                    style: const TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 8),
                  Text(
                    item['summary'] ?? '',
                    style: const TextStyle(fontSize: 16),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
