import 'dart:io';

void main(List<String> args) {
  double pi = 3.1459;
  print("Ingresa los grados sexagesimales a convertir:");

  String? grad = stdin.readLineSync();
  int grados = int.parse(grad!);

  double radianes = grados * (pi / 180);
  double gradosCentecimales = grados * (10 / 9);

  print("Los radianes son: ${radianes.toStringAsFixed(2)} rad");

  print("Los grados centecimales son: ${gradosCentecimales.toStringAsFixed(2)}");


}
