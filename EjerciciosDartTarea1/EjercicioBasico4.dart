import 'dart:io';
import 'dart:math';

void main(List<String> args) {
  print(
      "PROGRAMA QUE CALCULA EL ÁREA DE UN TRIÁNGULO EN BASE A SU SEMIPERIMETRO");
  print("Ingresa lado A:");

  String? ladoa = stdin.readLineSync();
  int ladoA = int.parse(ladoa!);

  print("Ingresa lado B:");
  String? ladob = stdin.readLineSync();
  int ladoB = int.parse(ladob!);

  print("Ingresa lado C:");
  String? ladoc = stdin.readLineSync();
  int ladoC = int.parse(ladoc!);

   double semiPerimetro = (ladoA + ladoB + ladoC) / 2;

   double area = sqrt(semiPerimetro * (semiPerimetro - ladoA) * 
   (semiPerimetro - ladoB) * (semiPerimetro - ladoC));

   print("El área del triángulo es: $area");

       
}
