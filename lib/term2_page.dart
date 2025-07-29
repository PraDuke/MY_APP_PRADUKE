import 'package:flutter/material.dart';

class Term2Page extends StatelessWidget {
  const Term2Page({super.key});

  final List<Map<String, dynamic>> subjects = const [
    {
      'code': 'GEBIN702',
      'name': 'Innovation and Technology',
      'th': 'นวัตกรรมและเทคโนโลยี',
      'credit': 3,
      'grade': 'C+',
      'gp': 7.5,
    },
    {
      'code': 'ENGSE202',
      'name': 'Operating System and Server Configure',
      'th': 'ระบบปฏิบัติการและการจัดโครงแบบเครื่องแม่ข่าย',
      'credit': 3,
      'grade': 'C+',
      'gp': 7.5,
    },
    {
      'code': 'ENGSE203',
      'name': 'Computer Programming for Software Engineer',
      'th': 'การเขียนโปรแกรมสำหรับวิศวกรซอฟต์แวร์',
      'credit': 3,
      'grade': 'C+',
      'gp': 7.5,
    },
    {
      'code': 'GEBLC103',
      'name': 'Academic English',
      'th': 'ภาษาอังกฤษเชิงวิชาการ',
      'credit': 3,
      'grade': 'A',
      'gp': 12.0,
    },
    {
      'code': 'ENGSE218',
      'name': 'Computer Architecture and Organization',
      'th': 'โครงสร้างและสถาปัตยกรรมคอมพิวเตอร์',
      'credit': 3,
      'grade': 'C+',
      'gp': 7.5,
    },
    {
      'code': 'ENGSE216',
      'name': 'Data Structures and Algorithms',
      'th': 'โครงสร้างข้อมูลและขั้นตอนวิธี',
      'credit': 3,
      'grade': 'F',
      'gp': 0.0,
    },
    {
      'code': 'ENGSE206',
      'name': 'Software Requirements Specification and Design',
      'th': 'การกำหนดความต้องการและการออกแบบทางซอฟต์แวร์',
      'credit': 3,
      'grade': 'B',
      'gp': 9.0,
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
        title: const Text('📘 ปี 1 เทอม 2'),
        backgroundColor: Colors.teal,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            const Text(
              'รายวิชาเทอม 2',
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
