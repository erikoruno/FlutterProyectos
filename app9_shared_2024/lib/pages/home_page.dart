import 'package:app9_shared_2024/widgets/my_drawer_widget.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue.shade800,
        title: Text(
          "Home",
          style: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
      ),
      drawer: MyDrawerWidget(),
      body: Padding(
        padding: const EdgeInsets.only(left: 16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Configuración general",
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 30,
            ),
            TextField(
              decoration: InputDecoration(
                labelText: 'Ingrese texto',
                // Esto añade un borde alrededor del campo de texto
              ),
            ),
            SizedBox(
              height: 30,
            ),
            TextField(
              decoration: InputDecoration(
                labelText: 'Ingrese texto',
                // Esto añade un borde alrededor del campo de texto
              ),
            ),
            SizedBox(
              height: 50,
            ),
            Text("Dark mode"),
            SizedBox(
              height: 40,
            ),
            Text(
              "Gender",
              style: TextStyle(
                fontSize: 22,
              ),
            ),
            ListTile(
              leading: Icon(Icons.ads_click),
              title: Text("Male"),
            ),
            ListTile(
              leading: Icon(Icons.ads_click),
              title: Text("Female"),
            ),
            SizedBox(
              height: 30,
            ),
            ElevatedButton.icon(
              onPressed: () {},
              icon: Icon(
                Icons.save,
                color: Colors.white,
              ),
              label: Text(
                "Save Data",
                style: TextStyle(color: Colors.white),
              ),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.black,
                minimumSize: Size(double.infinity, 50),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
