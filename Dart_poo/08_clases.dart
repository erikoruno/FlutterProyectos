void main(List<String> args) {

   // Forma forma = Forma();

   Cuadrado cuadrado = Cuadrado();

   cuadrado.calcular();
 
   cuadrado.calcular2();
}

 abstract class Forma{
    
    double? area;

    void calcular(){
      print("Calcular");
    }

    void calcular2();

  }


  class Cuadrado extends Forma{

    double? base;
    double? altura;

    @override
    void calcular(){
      print("Calcular cuadrado");
    }
    
    
    @override
    void calcular2(){
      print("Calcular  2");
    }
  }