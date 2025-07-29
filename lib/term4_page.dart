import 'package:flutter/material.dart';

class Term4Page extends StatelessWidget {
  const Term4Page({super.key});

  final List<Map<String, dynamic>> subjects = const [
    {
      'code': 'GEBSC301',
      'name': 'Necessary Information Technology in Daily Life',
      'th': 'เทคโนโลยีสารสนเทศที่จำเป็นในชีวิตประจำวัน',
      'credit': 3,
      'grade': 'A',
      'gp': 12.0,
    },
    {
      'code': 'ENGSE102',
      'name': 'Linear Algebra for Engineering',
      'th': 'พีชคณิตเชิงเส้นสำหรับวิศวกรรม',
      'credit': 3,
      'grade': 'C',
      'gp': 6.0,
    },
    {
      'code': 'ENGSE207',
      'name': 'Software Architecture',
      'th': 'สถาปัตยกรรมซอฟต์แวร์',
      'credit': 3,
      'grade': 'C',
      'gp': 6.0,
    },
    {
      'code': 'ENGRA017',
      'name': 'Automatic System in Factory',
      'th': 'ระบบอัตโนมัติในโรงงาน',
      'credit': 3,
      'grade': 'D+',
      'gp': 4.5,
    },
    {
      'code': 'ENGSE502',
      'name': 'Embedded Systems and Internet of Things',
      'th': 'ระบบฝังตัวและระบบอินเทอร์เน็ตในทุกสิ่ง',
      'credit': 3,
      'grade': 'B',
      'gp': 9.0,
    },
    {
      'code': 'ENGSE216',
      'name': 'Data Structures and Algorithms',
      'th': 'โครงสร้างข้อมูลและขั้นตอนวิธี',
      'credit': 3,
      'grade': 'W', // ถอน
      'gp': 0.0,
    },
    {
      'code': 'GEBSO503',
      'name': 'Human Relations',
      'th': 'มนุษยสัมพันธ์',
      'credit': 3,
      'grade': 'C',
      'gp': 6.0,
    },
    {
      'code': 'BBAIS823',
      'name': 'Modern Office Software',
      'th': 'การใช้โปรแกรมสำนักงานสมัยใหม่',
      'credit': 3,
      'grade': 'C+',
      'gp': 7.5,
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
        title: const Text('📘 ปี 2 เทอม 2'),
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
