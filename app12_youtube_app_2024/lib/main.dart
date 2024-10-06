import 'package:app12_youtube_app_2024/pages/init_page..dart';
import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Clone YouTube App',
      debugShowCheckedModeBanner: false,
      
      home: InitPage(),
    );
  }
}
