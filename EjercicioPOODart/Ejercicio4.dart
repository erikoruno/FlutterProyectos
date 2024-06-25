void main(List<String> args) {}

class Contador {
  int contadorPrincipal;

  //Constructor por defecto
  Contador({int contador = 0}) : contadorPrincipal = contador;

  //Constructor con valor inicial
  Contador.valorInicial(this.contadorPrincipal);

  //getter
  int get contador => contadorPrincipal;

  //setter

  set contador(int valor) {
    contadorPrincipal = valor;
  }

  void incrementar() {
    contadorPrincipal++;
    print("Contador incrementado a: $contadorPrincipal");
  }


  void decrementar() {
    contadorPrincipal--;
    print("Contador decrementado a: $contadorPrincipal");
  }
}
