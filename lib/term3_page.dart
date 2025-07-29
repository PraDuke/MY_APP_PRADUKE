import 'package:flutter/material.dart';

class Term3Page extends StatelessWidget {
  const Term3Page({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('เทอม 1')),
      body: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          children: [
            Text('รายวิชาเทอม 3', style: TextStyle(fontSize: 18)),
            SizedBox(height: 10),
            Text('- วิชา A: ได้ A'),
            Text('- วิชา B: ได้ B+'),
            // เพิ่มรายวิชาได้ตามจริง
          ],
        ),
      ),
    );
  }
}
