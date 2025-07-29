import 'package:flutter/material.dart';

class LearningOutcomePage extends StatelessWidget {
  const LearningOutcomePage({super.key});

  final List<Map<String, dynamic>> outcomes = const [
    {
      'year': 'ปี 1',
      'summary':
          'เข้าใจพื้นฐานการเขียนโปรแกรม การใช้ภาษา Dart และโครงสร้างข้อมูลเบื้องต้น',
      'icon': Icons.code,
    },
    {
      'year': 'ปี 2',
      'summary': 'สามารถพัฒนาแอปมือถือด้วย Flutter และใช้ Git/GitHub ได้',
      'icon': Icons.mobile_friendly,
    },
    {
      'year': 'ปี 3',
      'summary':
          'สามารถออกแบบ UI/UX และเขียนแอปพลิเคชันที่ซับซ้อนขึ้น รวมถึงเชื่อมต่อกับฐานข้อมูล',
      'icon': Icons.design_services,
    },
    {
      'year': 'ปี 4',
      'summary': 'ทำโปรเจกต์จริง สร้างแอปพลิเคชันที่ใช้งานได้จริง',
      'icon': Icons.build_circle,
    },
    {
      'year': 'ปี 5',
      'summary':
          'พร้อมทำงานจริง มีผลงานพอร์ต ใช้เครื่องมือพัฒนาและจัดการโครงการได้',
      'icon': Icons.work_outline,
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('📚 ผลลัพธ์การเรียนรู้'),
        backgroundColor: Colors.teal,
      ),
      body: ListView.builder(
        padding: const EdgeInsets.all(16),
        itemCount: outcomes.length,
        itemBuilder: (context, index) {
          final item = outcomes[index];
          return Card(
            elevation: 4,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            ),
            margin: const EdgeInsets.symmetric(vertical: 10),
            child: ListTile(
              leading: CircleAvatar(
                backgroundColor: Colors.teal.shade100,
                child: Icon(item['icon'], color: Colors.teal),
              ),
              title: Text(
                item['year'],
                style: const TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              subtitle: Padding(
                padding: const EdgeInsets.only(top: 8),
                child: Text(
                  item['summary'],
                  style: const TextStyle(fontSize: 16),
                ),
              ),
              contentPadding: const EdgeInsets.all(16),
            ),
          );
        },
      ),
    );
  }
}
