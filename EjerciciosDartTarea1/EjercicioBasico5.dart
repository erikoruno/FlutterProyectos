import 'dart:io';
import 'dart:math';

void main(List<String> args) {
  print(
      "Hacer un programa que calcule la distancia entre dos puntos coordenados conocidos");

  print("Ingresa la coordenada x1");
  String? coordenadax1 = stdin.readLineSync();
  int x1 = int.parse(coordenadax1!);

  print("Ingresa la coordenada x2");
  String? coordenadax2 = stdin.readLineSync();
  int x2 = int.parse(coordenadax2!);

  print("Ingresa la coordenada y1");
  String? coordenaday1 = stdin.readLineSync();
  int y1 = int.parse(coordenaday1!);

  print("Ingresa la coordenada y2");
  String? coordenaday2 = stdin.readLineSync();
  int y2 = int.parse(coordenaday2!);

  double distancia = sqrt((x2 - x1) * (x2 - x1) + (y2 - y1) * (y2 - y1));

  print("La distancia es: $distancia mt.");

}
