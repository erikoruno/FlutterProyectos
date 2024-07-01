import 'package:app_morning_exercise/home_page.dart';
import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(MyAppp());
}

class MyAppp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}
