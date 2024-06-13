void main(List<String> args) {
  
  Perro fido = Perro(peso: 20, nombrex: "Tato", tipox: "Mamífero");
  
  print(fido.nombre);

}

//Clase padre

  class Animal{

    String? nombre;
    String? tipo;

    Animal({this.nombre, this.tipo});
  }

//Clase hija

  class Perro extends Animal{
 
    double? peso;

    Perro({this.peso, nombrex, tipox}) : super(nombre: nombrex , tipo: tipox);
  }