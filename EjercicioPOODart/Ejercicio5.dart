import 'dart:ffi';

void main(List<String> args) {
  Persona persona1 = Persona("Juan", 20, "23455678");
  persona1.mostrar();
}

class Persona {
  String nombre;
  int edad;
  String dni;

  //Constructor
  Persona(this.nombre, this.edad, this.dni);

  //getters
  String get getNombre => nombre;
  int get getEdad => edad;
  String get getDni => dni;

  //setter

  set setNombre(String nombre) {
    this.nombre = nombre;
  }

  set setEdad(int edad) {
    this.edad = edad;
  }

  set setDni(String dni) {
    this.dni = dni;
  }

  void mostrar() {
    print("El nombres es: $nombre su edad es: $edad y su DNI es: $dni");
  }
}
