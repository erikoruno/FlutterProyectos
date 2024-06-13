import "package:flutter/material.dart";

void main(List<String> args) {
  runApp(
    const MaterialApp(
      home: Scaffold(
          //backgroundColor: Color.fromARGB(0, 0, 255, 0),
          backgroundColor: Color.fromARGB(255, 250, 167, 24),
          body: SafeArea(
            child: Text("Hola mundo",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 50,
                    fontWeight: FontWeight.bold)),
          )),
    ),
  );
}
