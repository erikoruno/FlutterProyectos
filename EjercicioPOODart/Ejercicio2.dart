void main(List<String> args) {
  Persona personal = Persona();
  personal.mostrarInfor();

  Persona persona2 = Persona.Datos(
      nombre: "Juanito", edad: 20, sexo: "M", altura: 1.75, peso: 80);
  persona2.mostrarInfor();

  Persona persona3 = Persona.completo(
      nombre: "Loki",
      edad: 60,
      dni: "12345678",
      sexo: "H",
      peso: 120,
      altura: 1.80);
  persona3.mostrarInfor();

  int imc = persona3.calcularIMC();
  print("El IMC de: ${persona3.nombre} es ${persona3.descripcionIMC(imc)}");
}

class Persona {
  //Atributos
  String nombre;
  int edad;
  String dni;
  String sexo;
  double peso;
  double altura;

  static const pesoBajo = -1;
  static const pesoNormal = 0;
  static const pesoAlto = 1;

  //Constructores
  //Constructor por defecto
  Persona(
      {this.nombre = "",
      this.edad = 0,
      this.dni = "",
      String sexo = "H",
      this.peso = 0.0,
      this.altura = 0.0})
      : this.sexo = comprobarSexo(sexo);

  //Constructor con nombre, edad, sexo y el resto por defecto
  Persona.Datos({
    required this.nombre,
    required this.edad,
    required String sexo,
    this.peso = 0.0,
    this.altura = 0.0,
  })  : this.dni = "",
        this.sexo = comprobarSexo(sexo);

  //Constructor con todos los atributos como parámetro

  Persona.completo({
    required this.nombre,
    required this.edad,
    required this.dni,
    required String sexo,
    required this.peso,
    required this.altura,
  }) : this.sexo = comprobarSexo(sexo);
  //Métodos

  int calcularIMC() {
    double imc = peso / (altura * altura);

    if (imc < 20) {
      return pesoBajo;
    } else if (imc >= 20 && imc <= 25) {
      return pesoNormal;
    } else {
      return pesoAlto;
    }
  }

  String descripcionIMC(int imc) {
    switch (imc) {
      case pesoBajo:
        return "Bajo peso";
      case pesoNormal:
        return "Peso normal";
      case pesoAlto:
        return "Sobrepeso";
      default:
        return "Desconocido";
    }
  }

  static String comprobarSexo(String sexo) {
    if (sexo != "H" && sexo != "M") {
      return "H";
    }
    return sexo;
  }

  bool esMayorDeEdad() {
    return edad >= 18;
  }

  void mostrarInfor() {
    print("Nombre: $nombre");
    print("Edad: $edad");
    print("DNI: $dni");
    print("Sexo: $sexo");
    print("Peso: $peso kg");
    print("Altura: $altura m.");
  }
}
