import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('โปรไฟล์ส่วนตัว')),
      body: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          children: [
            const CircleAvatar(
              radius: 60,
              backgroundImage: AssetImage(
                'assets/profile.jpeg',
              ), // ตรงกับ path และชื่อไฟล์
            ),
            SizedBox(height: 10),
            Text('ชื่อ: นายภัทรดนัย เตจาคำ', style: TextStyle(fontSize: 18)),
            Text('รหัสประจำตัว : 66543210024-6'),
            Text('ความสามารถพิเศษ: Coding, วาดรูป ,FontEnd, Produces Music'),
            Text('ความชอบ: ฟังเพลง, ออกแบบ UI'),
          ],
        ),
      ),
    );
  }
}
