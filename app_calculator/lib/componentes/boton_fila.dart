import 'package:app_calculator/componentes/boton.dart';
import 'package:flutter/material.dart';

class BotonFila extends StatelessWidget {
  final List<Boton> botones;

  BotonFila(this.botones);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 1,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: botones.fold(<Widget>[], (list, b) {
          list.isEmpty
              ? list.add(b)
              : list.addAll([
                  SizedBox(
                    width: 1,
                  ),
                  b
                ]);
          return list;
        }),
      ),
    );
  }
}
