import 'package:app_calculator/componentes/boton.dart';
import 'package:app_calculator/componentes/boton_fila.dart';
import 'package:flutter/material.dart';

class Teclado extends StatelessWidget {
  final void Function(String) cb;
  Teclado(this.cb);
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 500,
      child: Column(
        children: <Widget>[
          BotonFila([
            Boton.big(text: "AC", color: Boton.DARK, cb: cb),
            Boton(text: "%", color: Boton.DARK, cb: cb),
            Boton.operation(text: "/", cb: cb),
          ]),
          SizedBox(height: 1.0),
          BotonFila([
            Boton(text: "7", cb: cb),
            Boton(text: "8", cb: cb),
            Boton(text: "9", cb: cb),
            Boton.operation(text: "x", cb: cb),
          ]),
          SizedBox(height: 1.0),
          BotonFila([
            Boton(text: "4", cb: cb),
            Boton(text: "5", cb: cb),
            Boton(text: "6", cb: cb),
            Boton.operation(text: "-", cb: cb),
          ]),
          SizedBox(height: 1.0),
          BotonFila([
            Boton(text: "1", cb: cb),
            Boton(text: "2", cb: cb),
            Boton(text: "3", cb: cb),
            Boton.operation(text: "+", cb: cb),
          ]),
          SizedBox(height: 1.0),
          BotonFila([
            Boton.big(text: "0", cb: cb),
            Boton(text: ".", cb: cb),
            Boton.operation(text: "=", cb: cb),
          ]),
        ],
      ),
    );
  }
}
