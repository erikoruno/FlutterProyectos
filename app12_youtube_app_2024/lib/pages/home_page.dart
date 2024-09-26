import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: const Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Stack(
                  alignment: Alignment.center,
                  children: [
                    Icon(
                      FontAwesomeIcons.youtube,
                      color: Colors.red,
                      size: 60,
                    ),
                    Icon(
                      Icons.play_arrow,
                      color: Colors.white,
                      size: 45,
                    ),
                  ],
                ),
                SizedBox(width: 10),
                Text(
                  "YouTube",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Icon(Icons.notifications, color: Colors.white),
                SizedBox(width: 10),
                Icon(Icons.search, color: Colors.white),
                SizedBox(width: 10),
                Icon(Icons.account_circle, color: Colors.white),
                SizedBox(width: 10),
                Icon(Icons.more_vert, color: Colors.white),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
