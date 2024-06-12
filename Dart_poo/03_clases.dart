void main(List<String> args) {
  
  Telefono miTelefono = Telefono(marca: "LG",numero: "433435");

  Telefono telefono2 = Telefono.mandarina(marca: "Motorola");

  Telefono telefono3 = Telefono.prueba(numero: "123456");

  
  print(miTelefono.marca);
  print(miTelefono.cargaRapida); 

}

class Telefono{

  //Atributos

  String? marca;
  String? numero;
  bool? cargaRapida;

  //Constructor

  //Telefono(this.marca, this.numero);

  Telefono({this.marca, this.numero});

  Telefono.mandarina({this.marca});

  Telefono.prueba({this.numero});


  //Métodos

  void llamar(){
    print("El teléfono esta llamando....");
  }

  String obtenerNumero(){
    return numero!;
  }
}