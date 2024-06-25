import 'dart:io';

void main(List<String> args) {
  print(
      """Hacer un programa que tome temperatura asignada en una variable en grados Celsius 
      y diga a cuantos grados equivale en grados Fahrenheit y Kelvin.""");

  print("Ingrese los grados a convertir :");
  String? cels = stdin.readLineSync();
  int celsius = int.parse(cels!);

  double fahrenheit = (celsius * 1.8) + 32;
  double kelvin = celsius + 273.15;

  print("La conversión a grados Fahrenheit es: $fahrenheit grados F" );
  print("La conversión a grados Kelvin es: $kelvin K");

}
