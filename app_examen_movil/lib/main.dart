import 'package:app_examen_movil/pages/home_page.dart';
import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        useMaterial3: false,
        sliderTheme: SliderThemeData(
          activeTrackColor: Colors.orange.shade400.withOpacity(0.75),
          inactiveTrackColor: Colors.grey.shade100,
          thumbColor: Colors.orange,
          overlayColor: Colors.orange.shade300.withOpacity(0.3),
          thumbShape: RoundSliderThumbShape(
            enabledThumbRadius: 12.0,
          ),
        ),
      ),
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}
