import 'package:flutter/material.dart';
import '/home_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'AS-05 Navigator App',
      theme: ThemeData(primarySwatch: Colors.teal),
      home: HomePage(),
    );
  }
}
