void main(List<String> args) {

  Chofer pepe = Chofer();

  pepe.nombre = "Jose Lopez";
  pepe.calcularSalario();
  pepe.manejar();  

  Ayudante luis = Ayudante();

  

}

//Clase padre

class Trabajador{

  String? nombre;

  double? salario;

  void calcularSalario(){
    print("Calcular salario");

  }
}

//Clase hija

class Chofer extends Trabajador{

    String? vehiculoAsignado;

    void manejar(){
      print("Manejando....");
    }
}

class Ayudante extends Trabajador{

  String? area;

  void gestionar(){
    print("gestioanando");
  }
}