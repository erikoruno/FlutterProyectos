import 'package:flutter/material.dart';
import 'package:app_chicle_griego/home_page.dart';
void main(List<String> args) {
  runApp(MyApp());  
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: false,
      ),
      home: HomePage(),
    );
  }
}
