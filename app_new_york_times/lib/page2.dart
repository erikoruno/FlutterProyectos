import 'package:flutter/material.dart';

class Page2 extends StatelessWidget {
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
                Icon(
                  Icons.menu,
                  size: 25.0,
                  color: Colors.blueAccent,
                ),
                Text(
                  "The New York Times",
                  style: TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.w900,
                    fontFamily: 'OldEnglish',
                  ),
                ),
                Icon(
                  Icons.notifications_none_outlined,
                  color: Colors.blueAccent,
                ),
              ],
            ),
            Container(
              color: Colors.black,
              width: double.infinity,
              height: 0.5,
            ),
            SizedBox(
              height: 10.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Updated: ",
                  style: TextStyle(
                    fontSize: 13.0,
                  ),
                ),
                Text(
                  "FEBRUARY 11 at 19:23",
                  style: TextStyle(
                    fontSize: 15.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 10.0,
            ),
            Padding(
              padding: EdgeInsets.all(1.0),
              child: Image.asset(
                "assets/img/pelosi.jpg",
                height: 200.0,
                width: double.infinity,
                fit: BoxFit.cover,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  "The New York Times",
                  style: TextStyle(
                    fontSize: 11.0,
                    fontWeight: FontWeight.w200,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 5.0,
            ),
            Padding(
              padding: EdgeInsets.only(left: 16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Pelosi Wants to Win House,",
                    style: TextStyle(
                      fontSize: 26.0,
                      fontWeight: FontWeight.w600,
                      height: 1.0,
                    ),
                  ),
                  Text(
                    "But can She Corral the",
                    style: TextStyle(
                      fontSize: 26.0,
                      fontWeight: FontWeight.w600,
                      height: 1.0,
                    ),
                  ),
                  Text(
                    "Democrats?",
                    style: TextStyle(
                      fontSize: 26.0,
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
              padding: EdgeInsets.only(left: 16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "* At 77.Representative Nancy Pelosi remains a",
                    style: TextStyle(
                      fontSize: 17.0,
                      fontWeight: FontWeight.w200,
                      height: 1.0,
                    ),
                  ),
                  Text(
                    "dominant but polarizing, figure in ",
                    style: TextStyle(
                      fontSize: 17.0,
                      fontWeight: FontWeight.w200,
                      height: 1.0,
                    ),
                  ),
                  Text(
                    "Washington.",
                    style: TextStyle(
                      fontSize: 17.0,
                      fontWeight: FontWeight.w200,
                      height: 1.0,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 12.0,
            ),
            Padding(
              padding: EdgeInsets.only(left: 16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "* How she bridges Democrats factions on",
                    style: TextStyle(
                      fontSize: 17.0,
                      fontWeight: FontWeight.w200,
                      height: 1.0,
                    ),
                  ),
                  Text(
                    "inmigration may help determine whether she",
                    style: TextStyle(
                      fontSize: 17.0,
                      fontWeight: FontWeight.w200,
                      height: 1.0,
                    ),
                  ),
                  Text(
                    "can lead her party to a majority.",
                    style: TextStyle(
                      fontSize: 17.0,
                      fontWeight: FontWeight.w200,
                      height: 1.0,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 15.0,
            ),
            Padding(
              padding: EdgeInsets.only(
                left: 16.0,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    "2h ago",
                    style: TextStyle(
                      fontSize: 12.0,
                      fontWeight: FontWeight.w200,
                    ),
                  ),
                  SizedBox(
                    width: 260.0,
                  ),
                  Icon(
                    Icons.bookmark_border,
                    color: Colors.blueAccent,
                    size: 20.0,
                  ),
                  SizedBox(
                    width: 15.0,
                  ),
                  Icon(
                    Icons.open_in_new,
                    color: Colors.blueAccent,
                    size: 20.0,
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
            Container(
              alignment: Alignment.center,
              color: Colors.black,
              height: 0.2,
            ),
            SizedBox(
              height: 15.0,
            ),
            Padding(
              padding: EdgeInsets.only(left: 16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Analysis: G.O.P. Squirms as Trump",
                    style: TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.w600,
                      height: 1.0,
                    ),
                  ),
                  Text(
                    "Veers Off Script With Abuse",
                    style: TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.w600,
                      height: 1.0,
                    ),
                  ),
                  Text(
                    "Remarks",
                    style: TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.w600,
                      height: 1.0,
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
