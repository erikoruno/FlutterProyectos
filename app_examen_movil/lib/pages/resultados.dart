import 'package:app_examen_movil/pages/mensaje.dart';
import 'package:flutter/material.dart';

class Resultados extends StatefulWidget {
  const Resultados({super.key});

  @override
  State<Resultados> createState() => _ResultadosState();
}

class _ResultadosState extends State<Resultados> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Calculadora de préstamo",
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
                height: 510,
                margin: EdgeInsets.symmetric(horizontal: 8),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(18),
                ),
                child: Column(
                  children: [
                    SizedBox(
                      height: 5.0,
                    ),
                    Text(
                      "Detalles del préstamo",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(
                      height: 30.0,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(18.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Text(
                            "Monto del préstamo",
                            style: TextStyle(
                              fontSize: 15.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Spacer(),
                          Text(
                            "S/ 10,000.00",
                            style: TextStyle(
                              fontSize: 22.0,
                              fontWeight: FontWeight.bold,
                              color: Colors.orange,
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      width: 350,
                      child: Divider(
                        color: Colors.grey.shade300,
                        thickness: 1.0,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(18.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Text(
                            "Periodo en meses",
                            style: TextStyle(
                              fontSize: 15.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Spacer(),
                          Text(
                            "24",
                            style: TextStyle(
                              fontSize: 22.0,
                              fontWeight: FontWeight.bold,
                              color: Colors.orange,
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      width: 350,
                      child: Divider(
                        color: Colors.grey.shade300,
                        thickness: 1.0,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(18.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Text(
                            "Interés mensual %",
                            style: TextStyle(
                              fontSize: 15.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Spacer(),
                          Text(
                            "3.7 %",
                            style: TextStyle(
                              fontSize: 22.0,
                              fontWeight: FontWeight.bold,
                              color: Colors.orange,
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      width: 350,
                      child: Divider(
                        color: Colors.grey.shade300,
                        thickness: 1.0,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(18.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Text(
                            "Cuota mensual",
                            style: TextStyle(
                              fontSize: 15.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Spacer(),
                          Text(
                            "S/ 633.68",
                            style: TextStyle(
                              fontSize: 22.0,
                              fontWeight: FontWeight.bold,
                              color: Colors.orange,
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      width: 350,
                      child: Divider(
                        color: Colors.grey.shade300,
                        thickness: 1.0,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(18.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Text(
                            "Total de interés a pagar",
                            style: TextStyle(
                              fontSize: 15.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Spacer(),
                          Text(
                            "S/ 5,208.26",
                            style: TextStyle(
                              fontSize: 22.0,
                              fontWeight: FontWeight.bold,
                              color: Colors.orange,
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      width: 350,
                      child: Divider(
                        color: Colors.grey.shade300,
                        thickness: 1.0,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(18.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Text(
                            "Total a pagar",
                            style: TextStyle(
                              fontSize: 15.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Spacer(),
                          Text(
                            "S/ 15,208.26",
                            style: TextStyle(
                              fontSize: 22.0,
                              fontWeight: FontWeight.bold,
                              color: Colors.orange,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            ItemComponentWidget(
              title: "Saca tu prestamo",
              toPage: Mensaje(),
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
          Icons.check,
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
