import 'dart:io';

void main(List<String> args) {
  
  print("Empleado 1:");
  print("Ingrese el sueldo del empleado 1:");
  String? sueldo1 = stdin.readLineSync();
  int suel1 = int.parse(sueldo1!);

  print("Empleado 2:");
  print("Ingrese el sueldo del empleado 2:");
  String? sueldo2 = stdin.readLineSync();
  int suel2 = int.parse(sueldo2!);

  print("Empleado 3:");
  print("Ingrese el sueldo del empleado 3:");
  String? sueldo3 = stdin.readLineSync();
  int suel3 = int.parse(sueldo3!);

  double totalSueldo1 = suel1 + (suel1 * 0.10);
  double totalSueldo2 = suel2 + (suel2 * 0.12);
  double totalSueldo3 = suel3 +(suel3 * 0.15);

  print("El sueldo del 1er emppleado es: $totalSueldo1");
  print("******************");
  print("El sueldo del 2do emppleado es: $totalSueldo2");
  print("******************");
  print("El sueldo del 3er emppleado es: $totalSueldo3");
}

