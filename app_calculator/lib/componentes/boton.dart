import 'package:flutter/material.dart';

class Boton extends StatelessWidget {
  static const DARK = Color.fromRGBO(82, 82, 82, 1);
  static const DEFAULT = Color.fromRGBO(112, 112, 112, 1);
  static const OPERATION = Color.fromRGBO(250, 158, 13, 1);

  final String text;
  final bool big;
  final Color color;
  final void Function(String) cb;

  Boton({
    required this.text,
    this.big = false,
    this.color = DEFAULT,
    required this.cb,
  });

  Boton.big({
    required this.text,
    this.big = true,
    this.color = DEFAULT,
    required this.cb,
  });

  Boton.operation({
    required this.text,
    this.big = false,
    this.color = OPERATION,
    required this.cb,
  });
  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: big ? 2 : 1,
      child: ElevatedButton(
        child: Text(
          text,
          style: TextStyle(
              color: Colors.white, fontSize: 32, fontWeight: FontWeight.w200),
        ),
        onPressed: () => cb(text),
        style: ElevatedButton.styleFrom(
          backgroundColor: this.color,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.zero,
          ),
        ),
      ),
    );
  }
}
