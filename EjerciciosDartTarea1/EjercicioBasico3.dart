import 'dart:io';

void main(List<String> args) {
  const double pi = 3.1459;

  print("Ingrese el radio del circulo: ");
  String? rad = stdin.readLineSync();
  double radio = double.parse(rad!);

  double area = pi * (radio * radio);
  String areaFormateada = area.toStringAsFixed(2);
  
  //Circunferencia 0  longitud
  double longitug = 2 * pi * radio;

  print("El área de un circulo es: $areaFormateada y la longitud es $longitug");


}
