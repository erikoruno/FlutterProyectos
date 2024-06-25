import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(
    MaterialApp(
      home: Scaffold(
        //backgroundColor: Colors.deepPurple,
        backgroundColor: Color.fromARGB(255, 225, 172, 196),
        body: SafeArea(
          child: Column(
            children: [
              TextButton(onPressed: () {}, child: Text("Text button")),
              IconButton(onPressed: () {}, icon: Icon(Icons.check)),
              ElevatedButton(
                onPressed: () {
                  int numero = 100;
                  print("Presionaste Aceptar $numero");
                },
                child: Text("Aceptar"),
              ),
              ElevatedButton(
                onPressed: () {},
                child: Text("Cancelar"),
              ),
            ],
          ),
        ),
      ),
    ),
  );
}
