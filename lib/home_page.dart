import 'package:flutter/material.dart';
import 'term1_page.dart';
import 'term2_page.dart';
import 'term3_page.dart';
import 'term4_page.dart';
import 'term5_page.dart';
import 'learning_outcome_page.dart';
import 'profile_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Home Page')),
      body: ListView(
        padding: EdgeInsets.all(16),
        children: [
          Text('ยินดีต้อนรับสู่หน้าแรก', style: TextStyle(fontSize: 20)),
          SizedBox(height: 16),
          ElevatedButton(
            child: Text('ปี 1 เทอม 1'),
            onPressed: () => Navigator.push(
              context,
              MaterialPageRoute(builder: (_) => Term1Page()),
            ),
          ),
          ElevatedButton(
            child: Text('ปี 1 เทอม 2'),
            onPressed: () => Navigator.push(
              context,
              MaterialPageRoute(builder: (_) => Term2Page()),
            ),
          ),
          ElevatedButton(
            child: Text('ปี 2 เทอม 1'),
            onPressed: () => Navigator.push(
              context,
              MaterialPageRoute(builder: (_) => Term3Page()),
            ),
          ),
          ElevatedButton(
            child: Text('ปี 2 เทอม 2'),
            onPressed: () => Navigator.push(
              context,
              MaterialPageRoute(builder: (_) => Term4Page()),
            ),
          ),
          ElevatedButton(
            child: Text('ปี 3 เทอม 1'),
            onPressed: () => Navigator.push(
              context,
              MaterialPageRoute(builder: (_) => Term5Page()),
            ),
          ),
          ElevatedButton(
            child: Text('ผลลัพธ์การเรียนรู้'),
            onPressed: () => Navigator.push(
              context,
              MaterialPageRoute(builder: (_) => LearningOutcomePage()),
            ),
          ),
          ElevatedButton(
            child: Text('โปรไฟล์ส่วนตัว'),
            onPressed: () => Navigator.push(
              context,
              MaterialPageRoute(builder: (_) => ProfilePage()),
            ),
          ),
        ],
      ),
    );
  }
}
