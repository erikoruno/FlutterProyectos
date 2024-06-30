import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.all(1.0),
              child: Stack(
                children: [
                  Image.asset(
                    "assets/img/cancha1.jpg",
                    width: double.infinity,
                    height: 300.0,
                    fit: BoxFit.cover,
                  ),
                  Positioned(
                    top: 10.0,
                    right: 10.0,
                    child: Container(
                      padding: EdgeInsets.all(4.0),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      child: Icon(
                        Icons.favorite,
                        color: Colors.red,
                        size: 30.0,
                      ),
                    ),
                  ),
                  Positioned(
                    top: 10.0,
                    left: 10.0,
                    child: Icon(
                      Icons.share,
                      color: Colors.white,
                      size: 30.0,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 30.0,
            ),
            Padding(
              padding: EdgeInsets.only(left: 25.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "England defender to leave",
                    style: TextStyle(
                      fontSize: 25.0,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  Text(
                    "Manchester City",
                    style: TextStyle(
                      fontSize: 25.0,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 10.0,
            ),
            Padding(
              padding: EdgeInsets.only(left: 25.0),
              child: Column(
                children: [
                  Text(
                    "Trussday 26 de May 2022 | England",
                    style:
                        TextStyle(fontSize: 15.0, fontWeight: FontWeight.w100),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 10.0,
            ),
            Padding(
              padding: EdgeInsets.only(left: 25.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "During her first spell with City, Bronze won the title,",
                    style: TextStyle(
                      fontSize: 16.0,
                      fontWeight: FontWeight.w100,
                    ),
                  ),
                  SizedBox(
                    height: 5.0,
                  ),
                  Text(
                    "the Continental tyres League Cup and Women´s",
                    style: TextStyle(
                      fontSize: 16.0,
                      fontWeight: FontWeight.w100,
                    ),
                  ),
                  SizedBox(
                    height: 5.0,
                  ),
                  Text(
                    "FA Cup, before leaving for France, The full-back",
                    style: TextStyle(
                      fontSize: 16.0,
                      fontWeight: FontWeight.w100,
                    ),
                  ),
                  SizedBox(
                    height: 5.0,
                  ),
                  Text(
                    "returned to Manchester afterthree seasons with",
                    style: TextStyle(
                      fontSize: 16.0,
                      fontWeight: FontWeight.w100,
                    ),
                  ),
                  SizedBox(
                    height: 5.0,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Lyon and was later crowned FIFA",
                        style: TextStyle(
                          fontSize: 16.0,
                          fontWeight: FontWeight.w100,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(right: 48.0),
                        child: Text(
                          "Read more",
                          style: TextStyle(
                            fontSize: 16.0,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 10.0,
            ),
            Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 25.00),
                  child: Icon(
                    Icons.flash_on,
                    color: Colors.yellow,
                    size: 30.0,
                  ),
                ),
                Text(
                  "Now discussing",
                  style: TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(width: 40.0),
                Stack(
                  clipBehavior: Clip.none,
                  children: [
                    CircleAvatar(
                      radius: 20.0,
                      backgroundImage: AssetImage("assets/img/person1.jpg"),
                    ),
                    Positioned(
                      right: -25.0,
                      child: CircleAvatar(
                        radius: 20.0,
                        backgroundImage: AssetImage("assets/img/person2.jpg"),
                      ),
                    ),
                    Positioned(
                      right: -50.0,
                      child: CircleAvatar(
                        radius: 20.0,
                        backgroundImage: AssetImage("assets/img/person3.jpg"),
                      ),
                    ),
                    Positioned(
                      right: -75.0,
                      child: CircleAvatar(
                        radius: 20.0,
                        backgroundColor: Colors.white,
                        child: Text(
                          "+15",
                          style: TextStyle(color: Colors.black),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(
              height: 10.0,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 25.0),
              child: ElevatedButton(
                onPressed: () {},
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Comment",
                      style: TextStyle(fontSize: 20.0),
                    ),
                    SizedBox(width: 10.0),
                    Icon(Icons.chat_outlined),
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
