import 'dart:math';

class IMCBrain {
  // Aributos
  double weight;
  double height;
  double imc = 0;
  // Constructor

  IMCBrain({this.weight = 0, this.height = 0});
  // Métodos
  double calculateIMC() {
    imc = weight / pow(height / 100, 2);
    return imc;
  }

  String getResult() {
    String result = "";
    if (imc < 18.5) {
      result = "Bajo peso";
    } else if (imc <= 24.9) {
      result = "Normal";
    } else if (imc <= 29.9) {
      result = "Sobrepeso";
    } else {
      result = "Obesidad";
    }
    return result;
  }

  String getRecomandation() {
    String recomendation = "";
    if (imc < 18.5) {
      recomendation = "Come más como la ing. ";
    } else if (imc <= 24.9) {
      recomendation = "Mantén tu peso como está.";
    } else if (imc <= 29.9) {
      recomendation = "deja de comer, no seas comelon";
    } else {
      recomendation = "Estas muy gordo";
    }
    return recomendation;
  }

  String getImage() {
    String image = "";
    if (imc < 18.5) {
      image = "image1";
    } else if (imc <= 24.9) {
      image = "image2";
    } else if (imc <= 29.9) {
      image = "image3";
    } else {
      image = "image3";
    }
    return image;
  }
}
