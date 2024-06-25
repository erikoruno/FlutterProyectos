import 'package:flutter/material.dart';

class HomePage1 extends StatelessWidget {
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
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Icon(
                      Icons.chevron_left,
                      size: 30.0,
                    ),
                    Text(
                      "Top News",
                      style: TextStyle(fontSize: 20.0),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Icon(
                      Icons.share,
                    ),
                    Icon(
                      Icons.bookmark,
                    ),
                    Icon(
                      Icons.more_vert,
                    ),
                  ],
                ),
              ],
            ),
            Container(
              color: Colors.black,
              width: double.infinity,
              height: 1.0,
            ),
            Padding(
              padding: EdgeInsets.all(15.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 10.0,
                  ),
                  Text(
                    "LISTS",
                    style:
                        TextStyle(fontSize: 16.0, fontWeight: FontWeight.w600),
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  Text(
                    "Lorem Ipsum is simply dummy text of the printing and typesetting industry.",
                    textAlign: TextAlign.start,
                    style:
                        TextStyle(fontSize: 18.0, fontWeight: FontWeight.w600),
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  Row(
                    children: [
                      Text("By"),
                      Text(
                        "Juan Lopez ",
                        style: TextStyle(color: Colors.blueAccent),
                      ),
                      Text("Forbes Lists"),
                    ],
                  ),
                  Row(
                    children: [
                      Text("Hello"),
                      Text(
                        "Bold ",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      Text("world!!!"),
                    ],
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  Image.asset(
                    "assets/img/pictures1.jpeg",
                    height: 250.0,
                    width: double.infinity,
                    fit: BoxFit.cover,
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  Row(
                    children: [
                      Text(
                        "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum",
                        textAlign: TextAlign.start,
                        style: TextStyle(
                            fontSize: 9.0, fontWeight: FontWeight.normal),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: Text(
                          "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.",
                          style: TextStyle(fontSize: 11.0),
                          textAlign: TextAlign.justify,
                        ),
                      ),
                    ],
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
