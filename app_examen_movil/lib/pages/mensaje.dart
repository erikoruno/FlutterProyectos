import 'package:app_examen_movil/pages/home_page.dart';
import 'package:flutter/material.dart';

class Mensaje extends StatefulWidget {
  const Mensaje({super.key});

  @override
  State<Mensaje> createState() => _MensajeState();
}

class _MensajeState extends State<Mensaje> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade300,
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Align(
              alignment: Alignment.topCenter,
              child: Container(
                width: 1200,
                height: 450,
                margin: EdgeInsets.symmetric(horizontal: 8, vertical: 40),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(18),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Stack(
                      alignment: Alignment.center,
                      children: [
                        CircleAvatar(
                          radius: 80, // Radio del CircleAvatar externo
                          backgroundColor: Colors.grey.shade300,
                        ),
                        CircleAvatar(
                          radius: 65, // Radio del CircleAvatar externo
                          backgroundColor: Colors.orange,
                        ),
                        CircleAvatar(
                          radius: 60, // Radio del CircleAvatar interno
                          backgroundColor: Colors.white,

                          child: Icon(
                            Icons.check,
                            color: Colors.orange,
                            size:
                                90, // Tamaño del ícono dentro del CircleAvatar
                          ),
                        ),
                      ],
                    ),
                    Text(
                      "Felicidades!",
                      style: TextStyle(
                        fontSize: 35.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      "Su crèdito fue aprobado",
                      style: TextStyle(
                        fontSize: 15.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(
                      width: 350,
                      child: Divider(
                        color: Colors.grey.shade300,
                        thickness: 1.0,
                      ),
                    ),
                    Center(
                      child: ItemComponentWidget(
                        title: "Volver",
                        toPage: HomePage(),
                      ),
                    ),
                  ],
                ),
              ),
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
          Icons.house,
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
