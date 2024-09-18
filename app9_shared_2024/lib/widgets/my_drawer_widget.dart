import 'package:app9_shared_2024/pages/my_profile_pages.dart';
import 'package:flutter/material.dart';

class MyDrawerWidget extends StatelessWidget {
  const MyDrawerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
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
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => MyProfilePage(),
                ),
              );
            },
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
    );
  }
}
