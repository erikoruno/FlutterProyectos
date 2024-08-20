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
      drawer: Drawer(
        child: Column(
          children: [
            DrawerHeader(
              decoration: BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: NetworkImage(
                      "https://images.pexels.com/photos/73873/star-clusters-rosette-nebula-star-galaxies-73873.jpeg?auto=compress&cs=tinysrgb&w=600"),
                ),
              ),
              child: SizedBox(
                width: double.infinity,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CircleAvatar(
                      radius: 30,
                      backgroundColor: Colors.white,
                      backgroundImage: NetworkImage(
                          "https://images.pexels.com/photos/733872/pexels-photo-733872.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2"),
                    ),
                    Text(
                      "Fiorella Gonzales Torres",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    Text(
                      "Administrador",
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.normal,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            ListTile(
              leading: Icon(
                Icons.person,
                color: Colors.black54,
              ),
              title: Text("My Profile"),
            ),
            ListTile(
              leading: Icon(
                Icons.file_copy,
                color: Colors.black54,
              ),
              title: Text("Portafile"),
            ),
            ListTile(
              leading: Icon(
                Icons.lock,
                color: Colors.black54,
              ),
              title: Text("Change Password"),
            ),
            Divider(
              indent: 12,
              endIndent: 12,
            ),
            ListTile(
              leading: Icon(
                Icons.exit_to_app,
                color: Colors.black54,
              ),
              title: Text("Logout"),
            ),
          ],
        ),
      ),
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
              height: 50,
            ),
            Divider(
              indent: 12,
              endIndent: 12,
            ),
            SizedBox(
              height: 50,
            ),
            Divider(
              indent: 12,
              endIndent: 12,
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
