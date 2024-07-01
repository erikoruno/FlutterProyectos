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
              padding: EdgeInsets.only(left: 12.0, right: 12.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CircleAvatar(
                    backgroundColor: Colors.grey.shade300,
                    radius: 18.0,
                    child: Icon(
                      Icons.arrow_back,
                      color: Colors.black,
                    ),
                  ),
                  Text(
                    "Happy Reading",
                    style: TextStyle(
                      fontSize: 22.0,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  CircleAvatar(
                    backgroundColor: Colors.grey.shade300,
                    radius: 18.0,
                    child: Icon(
                      Icons.more_horiz,
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 10.0,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 12.0),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(12.0),
                child: Image.asset(
                  "assets/img/montain.jpg",
                  height: 190,
                  width: double.infinity,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            SizedBox(
              height: 10.0,
            ),
            Padding(
              padding: EdgeInsets.only(left: 12.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Collapse of a mountain peak in Austria",
                    style: TextStyle(
                      fontSize: 21.0,
                      fontWeight: FontWeight.w600,
                      height: 1.0,
                    ),
                  ),
                  Text(
                    "amid thawing permafrost triggers a",
                    style: TextStyle(
                      fontSize: 21.0,
                      fontWeight: FontWeight.w600,
                      height: 1.5,
                    ),
                  ),
                  Text(
                    "huge rockfall",
                    style: TextStyle(
                      fontSize: 21.0,
                      fontWeight: FontWeight.w600,
                      height: 1.0,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 10.0,
            ),
            Padding(
              padding: EdgeInsets.only(left: 12.0),
              child: Row(
                children: [
                  CircleAvatar(
                    radius: 12.0,
                    backgroundImage: AssetImage("assets/img/person2.jpg"),
                  ),
                  SizedBox(
                    width: 5.0,
                  ),
                  Text(
                    "Carrol Alinyaa ",
                    style: TextStyle(fontWeight: FontWeight.w400),
                  ),
                  Text(
                    "Wed, 05 July 2023",
                    style: TextStyle(
                      fontWeight: FontWeight.w200,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 5.0,
            ),
            Padding(
              padding: EdgeInsets.only(left: 12.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Part of the summit of a mountain in the Austrian state of Tyrol has",
                    style: TextStyle(fontSize: 12.5),
                  ),
                  Text(
                    "collapsed, sending more than 100,000 cubic metersof rock ",
                    style: TextStyle(fontSize: 12.5),
                  ),
                  Text(
                    "crashing info the valley below and triggering mudsides. ",
                    style: TextStyle(fontSize: 12.5),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 1.0,
            ),
            Padding(
              padding: EdgeInsets.only(left: 12.0),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    height: 70.0,
                    width: 2.0,
                    color: Colors.green,
                  ),
                  SizedBox(
                    width: 5.0,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Rock started falling Sunday from Fluchitom, a nearly 3,400",
                        style: TextStyle(
                            fontSize: 13.0,
                            color: Colors.green,
                            fontWeight: FontWeight.w500),
                      ),
                      Text(
                        "meter (11,155 foot) mountain in the Silvretta Alps on the border",
                        style: TextStyle(
                            fontSize: 12.5,
                            color: Colors.green,
                            fontWeight: FontWeight.w500),
                      ),
                      Text(
                        "between Switzerland and Austria, in an incident state geologists",
                        style: TextStyle(
                            fontSize: 12.5,
                            color: Colors.green,
                            fontWeight: FontWeight.w500),
                      ),
                      Text(
                        "have said was caused by thawing permafrost",
                        style: TextStyle(
                            fontSize: 12.5,
                            color: Colors.green,
                            fontWeight: FontWeight.w500),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 5.0,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 12.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "In a reconnassance fight over the affected area, state geologists",
                    style: TextStyle(fontSize: 12.5),
                  ),
                  Text(
                    "Made initial assessments of the amount of falien rock, but they say",
                    style: TextStyle(fontSize: 12.5),
                  ),
                  Text(
                    "these may well be conservative as it time to get a more",
                    style: TextStyle(fontSize: 12.5),
                  ),
                  Text(
                    "acourate picture.",
                    style: TextStyle(fontSize: 12.5),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 5.0,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 12.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "This is a relatively large incident, we´re talking about at least",
                    style: TextStyle(fontSize: 12.5),
                  ),
                  Text(
                    "100,000 cubic meters of rock that has falien off, skely more than",
                    style: TextStyle(fontSize: 12.5),
                  ),
                  Text(
                    "that, said Thomas Figl, a state geologist, in a video produced by the",
                    style: TextStyle(fontSize: 12.5),
                  ),
                  Text(
                    "Tyrolean state govemment.",
                    style: TextStyle(fontSize: 12.5),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 3.0,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 12.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.grey.shade300,
                      borderRadius: BorderRadius.circular(12.0),
                    ),
                    padding: EdgeInsets.only(
                      left: 12.0,
                      right: 12.0,
                    ),
                    child: Row(
                      children: [
                        Icon(Icons.favorite_border_outlined),
                        SizedBox(width: 1.0),
                        Text("1.2k"),
                      ],
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.grey.shade300,
                      borderRadius: BorderRadius.circular(12.0),
                    ),
                    padding: EdgeInsets.only(
                      left: 12.0,
                      right: 12.0,
                    ),
                    child: Row(
                      children: [
                        Icon(
                          Icons.bookmark,
                          color: Colors.green,
                        ),
                        SizedBox(width: 1.0),
                        Text("765"),
                      ],
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.grey.shade300,
                      borderRadius: BorderRadius.circular(12.0),
                    ),
                    padding: EdgeInsets.only(
                      left: 12.0,
                      right: 12.0,
                    ),
                    child: Row(
                      children: [
                        Icon(
                          Icons.bubble_chart,
                        ),
                        SizedBox(width: 1.0),
                        Text("235"),
                      ],
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.grey.shade300,
                      borderRadius: BorderRadius.circular(12.0),
                    ),
                    padding: EdgeInsets.only(
                      left: 12.0,
                      right: 12.0,
                    ),
                    child: Row(
                      children: [
                        Icon(
                          Icons.share,
                        ),
                        SizedBox(width: 1.0),
                        Text("32"),
                      ],
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
