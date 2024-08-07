import 'package:app_calculator/componentes/pantalla.dart';
import 'package:app_calculator/componentes/teclado.dart';
import 'package:app_calculator/modelos/memoria.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final Memoria memoria = new Memoria();
  _onPressed(String command) {
    setState(() {
      memoria.applyCommand(command);
    });
  }

  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);

    return MaterialApp(
      home: Column(
        children: <Widget>[
          Pantalla(memoria.value),
          Teclado(_onPressed),
        ],
      ),
    );
  }
}
