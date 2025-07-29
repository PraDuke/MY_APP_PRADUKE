import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('👤 โปรไฟล์ส่วนตัว'),
        backgroundColor: Colors.teal,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            const CircleAvatar(
              radius: 60,
              backgroundImage: AssetImage('assets/image/profile.jpeg'),
            ),
            const SizedBox(height: 16),
            const Text(
              'นายภัทรดนัย เตจาคำ',
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 4),
            const Text(
              'รหัสประจำตัว: 66543210024-6',
              style: TextStyle(fontSize: 16, color: Colors.grey),
            ),
            const SizedBox(height: 20),
            Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
              ),
              elevation: 4,
              child: Padding(
                padding: const EdgeInsets.all(16),
                child: Column(
                  children: const [
                    ListTile(
                      leading: Icon(Icons.star, color: Colors.teal),
                      title: Text('ความสามารถพิเศษ'),
                      subtitle: Text(
                        'Coding, วาดรูป, FrontEnd, Produces Music',
                      ),
                    ),
                    Divider(),
                    ListTile(
                      leading: Icon(Icons.favorite, color: Colors.teal),
                      title: Text('ความชอบ'),
                      subtitle: Text('ฟังเพลง, ออกแบบ UI'),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
