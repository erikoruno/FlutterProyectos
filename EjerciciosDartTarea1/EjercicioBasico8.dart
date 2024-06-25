import 'dart:io';

void main(List<String> args) {
  print("Ingresa los segundos:");

  String? seg = stdin.readLineSync();
  int segundos = int.parse(seg!);

  double horas = (segundos / 60) / 60;
  double minutos = (segundos / 60);

  print("Las horas son: ${horas.toStringAsFixed(0)} hora y ${minutos.toStringAsFixed(0)} minutos");
}
