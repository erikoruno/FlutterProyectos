void main(List<String> args) {
  
  Telefono miTelefono = Telefono("Motorola", "2323223", true);
  
  print(miTelefono);
  print(miTelefono.marca);
  print(miTelefono.numero);
  print(miTelefono.cargaRapida);

  miTelefono.marca = "LG";
  print(miTelefono.marca);
  miTelefono.llamar();

  String numeroTelefono = miTelefono.obtenerNumero();

  print(numeroTelefono);

  Telefono lg = Telefono("LG", "444444", false);
  print(lg);
  print(lg.marca);

}

class Telefono{
  //Atributos
    String marca;
    String numero;
    bool cargaRapida;

  //Constructor

    Telefono(this.marca, this.numero, this.cargaRapida);


  //Métodos

  void llamar(){
    print("El teléfono esta llamando....");
  }

  obtenerNumero(){
      return numero;
  }
}