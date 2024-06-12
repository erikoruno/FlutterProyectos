void main(List<String> args) {
  


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