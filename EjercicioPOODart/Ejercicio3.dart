void main(List<String> args) {}

class Cuenta {
  String _nombre;
  String _dni;
  double _cantidad;

  Cuenta({String nombre = "", String dni = "", double cantidad = 0.0})
      : _nombre = nombre,
        _dni = dni,
        _cantidad = cantidad;

//
  Cuenta.Datos(
      {required String nombre, required String dni, double cantidad = 0.0})
      : _nombre = nombre,
        _dni = dni,
        _cantidad = cantidad;

  //Getters
  String get getNombre => _nombre;
  String get getDni => _dni;
  double get getCantidad => _cantidad;

  //Setters

  set setNombre(String nombre) {
    _nombre = nombre;
  }

  set setDni(String dni) {
    _dni = dni;
  }

  set setCantidad(double cantidad) {
    _cantidad = cantidad;
  }

  void ingreso(double cantidad) {
    if (cantidad > 0) {
      _cantidad += cantidad;
      print("Ingreso: $cantidad. Nuevo saldo $_cantidad. ");
    } else {
      print("La cantidad a ingresar debe de ser positiva");
    }
  }

  void reintegro(double cantidad) {
    if (cantidad > 0 && _cantidad - cantidad >= 0) {
      _cantidad -= cantidad;
      print("Reintegro: $cantidad. Nuevo saldo $_cantidad");
    } else {
      print("La cantidad debe de ser positiva y no mayor al saldo actual.");
    }
  }

  void transferencia(Cuenta destino, double cantidad) {
    if (cantidad > 0 && _cantidad - cantidad >= 0) {
      _cantidad -= cantidad;
      destino.ingreso(cantidad);
      print(
          "Transferencia: $cantidad a ${destino._nombre}. Nuevo saldo: $_cantidad");
    } else {
      print(
          "La cantidad a transferir debe ser positiva y no mayor al saldo actual.");
    }
  }
}
