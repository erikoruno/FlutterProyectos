import 'package:app_examen_movil/pages/resultados.dart';
import 'package:flutter/material.dart';

class CalculadorPrestamos extends StatefulWidget {
  const CalculadorPrestamos({super.key});

  @override
  State<CalculadorPrestamos> createState() => _CalculadorPrestamosState();
}

String formatWithCommas(int number) {
  return number.toString().replaceAllMapped(
        RegExp(r'(\d)(?=(\d{3})+(?!\d))'),
        (Match match) => '${match[1]},',
      );
}

class _CalculadorPrestamosState extends State<CalculadorPrestamos> {
  double montoPrestamo = 10000;
  double mes = 24;
  double interes = 10;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Calculadora de Préstamos",
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
        backgroundColor: Color.fromARGB(255, 1, 30, 71),
        elevation: 1.0,
      ),
      backgroundColor: Colors.grey.shade300,
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Align(
              alignment: Alignment.topCenter,
              child: Container(
                width: 1200,
                height: 150,
                margin: EdgeInsets.symmetric(horizontal: 8),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(18),
                ),
                child: Column(
                  children: [
                    Text(
                      "Monto del préstamo",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(
                      height: 18.0,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "S/ ${formatWithCommas(montoPrestamo.toInt())}.00",
                          style: TextStyle(
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                            color: Colors.orange,
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        // Text(
                        //   montoPrestamo.toInt().toString(),
                        //   //"S/ 10,000.00",
                        //   style: TextStyle(
                        //     fontSize: 30,
                        //     fontWeight: FontWeight.bold,
                        //     color: Colors.orange,
                        //   ),
                        // ),
                      ],
                    ),
                    Slider(
                      value: montoPrestamo,
                      min: 1000,
                      max: 50000,
                      onChanged: (double value) {
                        setState(
                          () {
                            montoPrestamo = value;
                          },
                        );
                      },
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Text(
                          "S/ 1,000.00",
                          style: TextStyle(
                            fontSize: 17.0,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        SizedBox(
                          width: 100.0,
                        ),
                        Text(
                          "S/ 50,000.00",
                          style: TextStyle(
                            fontSize: 17.0,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Align(
              alignment: Alignment.topCenter,
              child: Container(
                width: 1200,
                height: 150,
                margin: EdgeInsets.symmetric(horizontal: 8),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(18),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        "Plazo del préstamo",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 5.0,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 10.0),
                          child: Text(
                            "${mes.toInt().toString()} meses",
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        // Text(
                        //   montoPrestamo.toInt().toString(),
                        //   //"S/ 10,000.00",
                        //   style: TextStyle(
                        //     fontSize: 30,
                        //     fontWeight: FontWeight.bold,
                        //     color: Colors.orange,
                        //   ),
                        // ),
                      ],
                    ),
                    Slider(
                      value: mes,
                      min: 6,
                      max: 36,
                      onChanged: (double value) {
                        setState(
                          () {
                            mes = value;
                          },
                        );
                      },
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Text(
                          "6 meses",
                          style: TextStyle(
                            fontSize: 17.0,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        SizedBox(
                          width: 100.0,
                        ),
                        Text(
                          "36 meses",
                          style: TextStyle(
                            fontSize: 17.0,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 10.0,
            ),
            Align(
              alignment: Alignment.topCenter,
              child: Container(
                width: 1200,
                height: 150,
                margin: EdgeInsets.symmetric(horizontal: 8),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(18),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 10.0),
                      child: Text(
                        "Tasa de interés anual",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 18.0,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 10.0),
                          child: Text(
                            "${interes.toInt().toString()} %",
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        // Text(
                        //   montoPrestamo.toInt().toString(),
                        //   //"S/ 10,000.00",
                        //   style: TextStyle(
                        //     fontSize: 30,
                        //     fontWeight: FontWeight.bold,
                        //     color: Colors.orange,
                        //   ),
                        // ),
                      ],
                    ),
                    Slider(
                      value: interes,
                      min: 10,
                      max: 50,
                      onChanged: (double value) {
                        setState(
                          () {
                            interes = value;
                          },
                        );
                      },
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Text(
                          "10 %",
                          style: TextStyle(
                            fontSize: 17.0,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        SizedBox(
                          width: 100.0,
                        ),
                        Text(
                          "50 %",
                          style: TextStyle(
                            fontSize: 17.0,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 10.0,
            ),
            ItemComponentWidget(
              title: "Calcular",
              toPage: Resultados(),
            ),
          ],
        ),
      ),
    );
  }
}

class ItemComponentWidget extends StatelessWidget {
  String title;
  Widget toPage;

  ItemComponentWidget({required this.title, required this.toPage});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(
        horizontal: 90.0,
        vertical: 10.0,
      ),
      decoration: BoxDecoration(
        color: Colors.blue.shade900,
        borderRadius: BorderRadius.circular(12.0),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.5),
            blurRadius: 12.0,
            offset: Offset(5, 5),
          ),
        ],
      ),
      child: ListTile(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => toPage,
            ),
          );
        },
        leading: Icon(
          Icons.play_arrow,
          color: Colors.orange,
        ),
        title: Text(
          title,
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
