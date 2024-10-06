import 'package:app12_youtube_app_2024/pages/home_page.dart';
import 'package:app12_youtube_app_2024/ui/general/colors.dart';
import 'package:flutter/material.dart';

class InitPage extends StatefulWidget {
  const InitPage({super.key});

  @override
  State<InitPage> createState() => _InitPageState();
}

class _InitPageState extends State<InitPage> {
  int _currentIndex = 0;

  final List<Widget> _pages = [
    HomePage(),
    const Center(child: Text("Short")),
    const Center(child: Text("Agregar")),
    const Center(child: Text("Suscripcion")),
    const Center(child: Text("Biblioteca")),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: KBrandPrimaryColor,
      appBar: AppBar(
        backgroundColor: KBrandPrimaryColor,
        title: Image.asset(
          "assets/images/logo.png",
          height: 26,
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.cast,
              color: Colors.white,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.notification_add,
              color: Colors.white,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.search,
              color: Colors.white,
            ),
          ),
          const SizedBox(
            width: 10.0,
          ),
          const CircleAvatar(
            backgroundColor: KBrandSecundaryColor,
            backgroundImage: NetworkImage(
              "https://images.pexels.com/photos/1239291/pexels-photo-1239291.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2",
            ),
            radius: 15.0,
          ),
          const SizedBox(
            width: 12.0,
          ),
        ],
      ),
      body: _pages[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: KBrandPrimaryColor,
        type: BottomNavigationBarType.fixed,
        selectedFontSize: 13.0,
        selectedItemColor: Colors.white,
        unselectedFontSize: 13.0,
        unselectedItemColor: Colors.white70,
        currentIndex: _currentIndex,
        onTap: (int value) {
          _currentIndex = value;
          setState(() {});
        },
        items: [
          const BottomNavigationBarItem(
            label: "Principal",
            icon: Icon(
              Icons.home,
            ),
          ),
          const BottomNavigationBarItem(
            label: "Short",
            icon: Icon(
              Icons.play_arrow,
            ),
          ),
          BottomNavigationBarItem(
            label: "",
            icon: Container(
              margin: const EdgeInsets.only(top: 5),
              child: const Icon(
                Icons.add_circle_outline_rounded,
                size: 35,
              ),
            ),
          ),
          const BottomNavigationBarItem(
            label: "Suscripcion",
            icon: Icon(
              Icons.subscriptions_rounded,
            ),
          ),
          const BottomNavigationBarItem(
            label: "Biblioteca",
            icon: Icon(
              Icons.video_collection_rounded,
            ),
          ),
        ],
      ),
    );
  }
}
