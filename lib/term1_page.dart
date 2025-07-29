import 'package:flutter/material.dart';

class Term1Page extends StatelessWidget {
  const Term1Page({super.key});

  final List<Map<String, dynamic>> subjects = const [
    {
      'code': 'GEBLC101',
      'name': 'English for Everyday Communication',
      'th': 'ภาษาอังกฤษเพื่อการสื่อสารในชีวิตประจำวัน',
      'credit': 3,
      'grade': 'B+',
      'gp': 10.5,
    },
    {
      'code': 'GEBLC201',
      'name': 'Arts of Using Thai Language',
      'th': 'ศิลปะการใช้ภาษาไทย',
      'credit': 3,
      'grade': 'C+',
      'gp': 7.5,
    },
    {
      'code': 'ENGSE200',
      'name': 'Introduction to Software Engineering',
      'th': 'วิศวกรรมซอฟต์แวร์เบื้องต้น',
      'credit': 3,
      'grade': 'A',
      'gp': 12.0,
    },
    {
      'code': 'ENGCC304',
      'name': 'Computer Programming',
      'th': 'การเขียนโปรแกรมคอมพิวเตอร์',
      'credit': 3,
      'grade': 'C+',
      'gp': 7.5,
    },
    {
      'code': 'ENGSE217',
      'name': 'Data Communication and Networks',
      'th': 'การสื่อสารข้อมูลและเครือข่าย',
      'credit': 3,
      'grade': 'B',
      'gp': 9.0,
    },
    {
      'code': 'ENGSE201',
      'name': 'Laws and Ethics in Information Technology',
      'th': 'กฎหมายและจริยธรรมด้านเทคโนโลยีสารสนเทศ',
      'credit': 1,
      'grade': 'A',
      'gp': 4.0,
    },
    {
      'code': 'GEBIN705',
      'name': 'Software Engineering Essentials',
      'th': 'แก่นวิศวกรรมซอฟต์แวร์',
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
        title: const Text('📘 ปี 1 เทอม 1'),
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
