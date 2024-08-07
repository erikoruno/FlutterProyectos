import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffedf2f4),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              Container(
                padding: const EdgeInsets.all(14.0),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(16.0),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.25),
                      offset: const Offset(0, 7),
                      blurRadius: 16.0,
                    ),
                  ],
                ),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Icon(
                          Icons.align_horizontal_left,
                          color: Color(0xff1b263b),
                          size: 18.0,
                        ),
                        Icon(
                          Icons.more_vert,
                          color: Color(0xff1b263b),
                          size: 18.0,
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 24.0,
                    ),
                    CircleAvatar(
                      backgroundImage: NetworkImage(
                        "https://images.pexels.com/photos/733872/pexels-photo-733872.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
                      ),
                      backgroundColor: Colors.amber,
                      radius: 48.0,
                    ),
                    SizedBox(
                      height: 24.0,
                    ),
                    Text(
                      "Hira Riaz",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20.0,
                        color: Color(0xff1b263b),
                      ),
                    ),
                    Text(
                      "UX/UI Designer",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 14.0,
                        color: Colors.black87,
                      ),
                    ),
                    SizedBox(
                      height: 24.0,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Column(
                          children: [
                            Text(
                              "\$8900",
                              style: TextStyle(
                                color: Color(0xff1b263b),
                                fontSize: 16.0,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text("Income"),
                          ],
                        ),
                        SizedBox(
                          height: 40,
                          width: 30,
                          child: VerticalDivider(
                            color: Colors.black.withOpacity(0.3),
                          ),
                        ),
                        Column(
                          children: [
                            Text(
                              "\$8900",
                              style: TextStyle(
                                color: Color(0xff1b263b),
                                fontSize: 16.0,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text("Income"),
                          ],
                        ),
                        SizedBox(
                          height: 40,
                          width: 30,
                          child: VerticalDivider(
                            color: Colors.black.withOpacity(0.3),
                          ),
                        ),
                        Column(
                          children: [
                            Text(
                              "\$8900",
                              style: TextStyle(
                                color: Color(0xff1b263b),
                                fontSize: 16.0,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text("Income"),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Text(
                        "Overview",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 25.0,
                          color: Colors.blue.shade900,
                        ),
                      ),
                      SizedBox(
                        width: 5.0,
                      ),
                      Icon(
                        Icons.notifications_active_outlined,
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Text(
                        "Sept 13,2020",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 15.0,
                          color: Colors.blue.shade900,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(
                height: 10.0,
              ),
              Container(
                padding: const EdgeInsets.all(9.0),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(16.0),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.25),
                      offset: const Offset(0, 7),
                      blurRadius: 16.0,
                    ),
                  ],
                ),
                child: Row(
                  children: [
                    Row(
                      children: [
                        Container(
                          padding: EdgeInsets.all(7),
                          decoration: BoxDecoration(
                              color: Colors.blue.shade50,
                              borderRadius: BorderRadius.circular(12)),
                          child: Icon(
                            Icons.arrow_upward_rounded,
                            size: 29.0,
                            color: Colors.black,
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Sent",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 16.0,
                            ),
                          ),
                          Text(
                            "Sending Payment to Clients",
                            style: TextStyle(
                                fontWeight: FontWeight.w700,
                                color: Colors.grey.shade400),
                          ),
                        ],
                      ),
                    ),
                    Spacer(),
                    Text(
                      "\$150",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18.0,
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
