import 'package:flutter/material.dart';

class Term3Page extends StatelessWidget {
  const Term3Page({super.key});

  final List<Map<String, dynamic>> subjects = const [
    {
      'code': 'ENGSE101',
      'name': 'Discrete Mathematics',
      'th': 'คณิตศาสตร์ดิสครีต',
      'credit': 3,
      'grade': 'D',
      'gp': 3.0,
    },
    {
      'code': 'ENGSE100',
      'name': 'Probability and Statistics for Engineering',
      'th': 'ความน่าจะเป็นและสถิติในงานวิศวกรรม',
      'credit': 3,
      'grade': 'B',
      'gp': 9.0,
    },
    {
      'code': 'ENGSE204',
      'name': 'Object-Oriented Programming',
      'th': 'การเขียนโปรแกรมเชิงวัตถุ',
      'credit': 3,
      'grade': 'C+',
      'gp': 7.5,
    },
    {
      'code': 'ENGSE205',
      'name': 'Software Process and Quality Assurance',
      'th': 'กระบวนการซอฟต์แวร์และการประกันคุณภาพ',
      'credit': 3,
      'grade': 'C',
      'gp': 6.0,
    },
    {
      'code': 'ENGSE219',
      'name': 'Database Systems',
      'th': 'ระบบฐานข้อมูล',
      'credit': 3,
      'grade': 'D+',
      'gp': 4.5,
    },
    {
      'code': 'ENGSE503',
      'name': 'Digital Image Processing and Computer Vision',
      'th': 'การประมวลผลภาพดิจิทัล และการมองเห็นโดยคอมพิวเตอร์',
      'credit': 3,
      'grade': 'B+',
      'gp': 10.5,
    },
    {
      'code': 'GEBHT601',
      'name': 'Activities for Health',
      'th': 'กิจกรรมเพื่อสุขภาพ',
      'credit': 3,
      'grade': 'A',
      'gp': 12.0,
    },
  ];

  @override
  Widget build(BuildContext context) {
    final int totalCredit = subjects.fold(
      0,
      (sum, item) => sum + item['credit'] as int,
    );
    final double totalGP = subjects.fold(
      0.0,
      (sum, item) => sum + item['gp'] as double,
    );

    return Scaffold(
      appBar: AppBar(
        title: const Text('📘 ปี 2 เทอม 1'),
        backgroundColor: Colors.teal,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            const Text(
              'รายวิชาเทอม 1',
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 16),
            Expanded(
              child: ListView.separated(
                itemCount: subjects.length,
                separatorBuilder: (_, __) => const Divider(height: 20),
                itemBuilder: (context, index) {
                  final subject = subjects[index];
                  return Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                    elevation: 2,
                    child: ListTile(
                      title: Text(
                        '${subject['code']} - ${subject['name']}',
                        style: const TextStyle(fontWeight: FontWeight.bold),
                      ),
                      subtitle: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(subject['th']),
                          const SizedBox(height: 4),
                          Row(
                            children: [
                              Text('หน่วยกิต: ${subject['credit']}'),
                              const SizedBox(width: 16),
                              Text('เกรด: ${subject['grade']}'),
                              const SizedBox(width: 16),
                              Text('คะแนน: ${subject['gp']}'),
                            ],
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
            const Divider(thickness: 2),
            ListTile(
              leading: const Icon(Icons.calculate, color: Colors.teal),
              title: const Text(
                'รวมทั้งหมด',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              subtitle: Text(
                'หน่วยกิต: $totalCredit | คะแนนรวม: ${totalGP.toStringAsFixed(1)}',
              ),
            ),
          ],
        ),
      ),
    );
  }
}
