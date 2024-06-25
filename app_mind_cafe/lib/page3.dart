import 'package:flutter/material.dart';

class Page3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  margin: EdgeInsets.only(left: 16.0), // Mover hacia la derecha
                  child: CircleAvatar(
                    backgroundColor: Colors.black, // Fondo negro
                    radius: 15.0, // Radio del contenedor circular
                    child: Icon(
                      Icons.chevron_left_sharp,
                      size: 30.0,
                      color: Colors.white, // Color del icono
                    ),
                  ),
                ),
                Container(
                  margin:
                      EdgeInsets.only(right: 20.0), // Mover hacia la derecha
                  child: CircleAvatar(
                    backgroundColor: Colors.black, // Fondo negro
                    radius: 15.0, // Radio del contenedor circular
                    child: Icon(
                      Icons.more_horiz,
                      size: 30.0,
                      color: Colors.white, // Color del icono
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 5.0,
            ),
            Padding(
              padding: EdgeInsets.only(left: 16.0), // Agregar margen al Column
              child: Column(
                children: [
                  Text(
                    "mind cafe",
                    style: TextStyle(
                      fontSize: 40.0,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Relaxed, inspiring essays about",
                    style: TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.w300,
                      height: 1.0,
                    ),
                  ),
                  Text(
                    "happiness.",
                    style: TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.w300,
                      height: 2.0,
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 16.0, top: 10.0),
              child: Row(
                children: [
                  ElevatedButton(onPressed: () {}, child: const Text("Follow")),
                  SizedBox(
                    width: 20.0,
                  ),
                  Text(
                    "140k Followers",
                    style: TextStyle(fontWeight: FontWeight.w500),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 30.0,
            ),
            Padding(
              padding: EdgeInsets.only(left: 16.0, right: 16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        "LATEST",
                        style: TextStyle(fontWeight: FontWeight.w600),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Icon(Icons.view_agenda_outlined),
                      Icon(Icons.menu),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 10.0,
            ),
            Padding(
              padding: EdgeInsets.only(left: 16.0),
              child: Row(
                children: [
                  Text(
                    "HBC",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    width: 8.0,
                  ),
                  Text("Julian Basic"),
                  SizedBox(
                    width: 8.0,
                  ),
                  Text(
                    "in",
                    style: TextStyle(
                      fontWeight: FontWeight.w200,
                    ),
                  ),
                  SizedBox(
                    width: 8.0,
                  ),
                  Text("Mind Cafe"),
                  SizedBox(
                    width: 8.0,
                  ),
                  Text(
                    ". 19 hr Ago",
                    style: TextStyle(
                      fontWeight: FontWeight.w200,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 15.0,
            ),
            Padding(
              padding: EdgeInsets.only(left: 16.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "4 Hidden PhilosophicalGems",
                    style: TextStyle(
                      fontSize: 27.0,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  Text(
                    "To Live By",
                    style: TextStyle(
                        fontSize: 27.0,
                        fontWeight: FontWeight.w700,
                        height: 0.8),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 10.0,
            ),
            Padding(
              padding: EdgeInsets.only(left: 16.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "#3 The homeless dog philosopher of",
                    style: TextStyle(
                      fontSize: 22.0,
                      fontWeight: FontWeight.w200,
                    ),
                  ),
                  Text(
                    "Anciente Greece and his lessons on",
                    style: TextStyle(
                        fontSize: 21.0,
                        fontWeight: FontWeight.w200,
                        height: 0.8),
                  ),
                  Text(
                    "freedom.",
                    style: TextStyle(
                      fontSize: 21.0,
                      fontWeight: FontWeight.w200,
                      height: 1.5,
                    ),
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 1.0, right: 18.0),
                    child: Image.asset(
                      "assets/img/viento1.jpg",
                      height: 200.0,
                      width: double.infinity,
                      fit: BoxFit.cover,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
