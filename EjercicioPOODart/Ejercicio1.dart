void main(List<String> args) {
  Cuenta cuenta1 = Cuenta(titular: "Juan Perez", cantidad: 100.00);
  cuenta1.mostrarSaldo();

  cuenta1.ingresar(50.00);
  cuenta1.mostrarSaldo();

  cuenta1.retirar(120.00);
  cuenta1.mostrarSaldo();

  cuenta1.retirar(50);
  cuenta1.mostrarSaldo();

  Cuenta cuenta2 = Cuenta(titular: "Loki Loko");
  cuenta2.mostrarSaldo();
}

class Cuenta {
  String titular;
  double cantidad;

  Cuenta({required this.titular, this.cantidad = 0.0});

  void ingresar(double cantidad) {
    if (cantidad > 0) {
      this.cantidad += cantidad;
      print("Se ha ingresado $cantidad a la cuenta de: $titular");
    } else {
      print("La cantidad ingresada no puede ser negativa");
    }
  }

  void retirar(double cantidad) {
    if (cantidad > 0) {
      if (this.cantidad - cantidad >= 0) {
        this.cantidad -= cantidad;
        print("Se han retirado $cantidad de la cuenta de: $titular");
      } else {
        this.cantidad;
        print(
            "No se puede retirar $cantidad saldo insuficiente, el monto solicitado excede a su saldo");
      }
    } else {
      print("La cantidad negativa no puede ser negativa");
    }
  }

  void mostrarSaldo() {
    print("El saldo actual de la cuenta del sr(a) $titular es: $cantidad");
  }
}
