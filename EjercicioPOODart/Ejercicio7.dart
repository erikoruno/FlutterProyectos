import 'Ejercicio6.dart';

void main(List<String> args) {}

class CuentaJoven extends Cuenta {
  double bonificacion;

  CuentaJoven(
      {required Persona titular,
      double cantidad = 0.0,
      required this.bonificacion})
      : super(titular: titular, cantidad: cantidad);

  double get getBonificacion => bonificacion;

  set setBonificacion(double bonificacion) {
    this.bonificacion = bonificacion;
  }

  bool esTitularValido() {
    int edad = titular.getEdad;
    return edad >= 18 && edad < 25;
  }

  @override
  void retirar(double cantidad) {
    if (esTitularValido()) {
      super.retirar(cantidad);
    } else {
      print("Retiro no permitido. Titular no válido.");
    }
  }

  @override
  void mostrar() {
    super.mostrar();
    print("Cuenta Joven con bonificación del $bonificacion%");
  }
}
