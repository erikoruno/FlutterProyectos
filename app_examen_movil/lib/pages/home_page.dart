import 'package:app_examen_movil/pages/calculadora_presta.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(top: 50),
          child: Column(
            children: [
              Align(
                alignment: Alignment.topCenter,
                child: Container(
                  width: 200,
                  height: 200,
                  margin: EdgeInsets.symmetric(horizontal: 20),
                  decoration: BoxDecoration(
                    color: Colors.grey.shade300,
                    border: Border.all(
                      color: Colors.yellow,
                      width: 4,
                    ),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        "assets/img/Calculadora.jpg",
                        width: 180,
                        height: 180,
                        fit: BoxFit.cover,
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 30.0,
              ),
              Text(
                "Calculadora de",
                style: TextStyle(
                    fontSize: 30.0,
                    fontWeight: FontWeight.bold,
                    color: Color.fromARGB(255, 3, 12, 24)),
              ),
              SizedBox(
                height: 5,
              ),
              Text(
                "Préstamos",
                style: TextStyle(
                    fontSize: 30.0,
                    fontWeight: FontWeight.bold,
                    color: const Color.fromARGB(255, 4, 14, 28)),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                "Obtenga un préstamo bancario con solo",
                style: TextStyle(
                  fontSize: 15.0,
                ),
              ),
              Text(
                "unos pocos clics",
                style: TextStyle(
                  fontSize: 15.0,
                ),
              ),
              SizedBox(
                height: 100,
              ),
              ItemComponentWidget(
                title: "Empezar",
                toPage: CalculadorPrestamos(),
              ),
            ],
          ),
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
