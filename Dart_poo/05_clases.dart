void main(List<String> args) {
  
  Telefono miTelefono = Telefono(marca: "LG",numero: "433435", cargaRapida:  true);

  miTelefono.miMarca = "LG";
  miTelefono.miNumero = "22211111";

  print(miTelefono.miMarca);
  print(miTelefono.miNumero);
  

}

class Telefono{

  //Atributos

  String? marca;
  String? numero;
  bool? cargaRapida;

  //Getters - Setters

  String get miMarca{
    //
    return marca ?? "No hay data";
  }

  set miMarca(String marcax){
    marca = marcax;
  }

  String get miNumero{
    return numero ?? "No hay data";
  }

  set miNumero(String numerox){
    numero = numerox;
  }

  //Constructor

 
  Telefono({this.marca, this.numero, this.cargaRapida});


  //Métodos

  void llamar(){

    print("El teléfono (${this.numero}) esta llamando....");
  }

  String obtenerNumero(){
    return numero!;
  }
}