void main(List<String> args) {}

class Persona {
  String nombre;
  int edad;
  String dni;

  Persona({required this.nombre, required this.edad, required this.dni});

  String get getNombre => nombre;
  int get getEdad => edad;
  String get getDni => dni;

  set setNombre(String nombre) {
    this.nombre = nombre;
  }

  set setEdad(int edad) {
    this.edad = edad;
  }

  set setDni(String dni) {
    this.dni = dni;
  }
}

class Cuenta {
  Persona titular;
  double _cantidad;

  Cuenta({required this.titular, double cantidad = 0.0}) : _cantidad = cantidad;

  Persona get getTitular => titular;
  double get getCantidad => _cantidad;

  void setTitular(Persona titular) {
    this.titular = titular;
  }

  void mostrar() {
    print(
        "Titular: ${titular.nombre}, Edad: ${titular.edad}, DNI: ${titular.dni}}");
    print("Cantidad: $_cantidad");
  }

  void ingresar(double cantidad) {
    if (cantidad > 0) {
      _cantidad += cantidad;
      print("Ingresado: $cantidad");
    } else {
      print("Cantidad negativa. No se hizo nada.");
    }
  }

  void retirar(double cantidad) {
    _cantidad -= cantidad;
    print("Retirado: $cantidad");
  }
}
