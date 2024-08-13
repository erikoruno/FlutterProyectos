import 'package:flutter/material.dart';

class CalculadorPrestamos extends StatelessWidget {
  const CalculadorPrestamos({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Calculadora de Préstamos",
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
        backgroundColor: Colors.blue.shade900,
        elevation: 1.0,
      ),
      body: Column(
        children: [
          Container(
            color: Colors.white,
            height: 5,
          ),
          Expanded(
            child: Center(
              child: Text("Hola"),
            ),
          ),
        ],
      ),
    );
  }
}
