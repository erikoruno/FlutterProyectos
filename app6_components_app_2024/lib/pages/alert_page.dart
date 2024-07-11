import 'package:flutter/material.dart';

class AlertPage extends StatelessWidget {
  void showMyAlert3(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Column(
            children: [
              Image.asset("assets/img/imagen3.jpg"),
              SizedBox(
                height: 20.0,
              ),
              Center(
                child: Text(
                  "Your video has been uploaded!",
                  style: TextStyle(
                    fontSize: 13.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              SizedBox(
                height: 12.0,
              ),
              Center(
                child: Text(
                  "Your video has finished uploading and is live",
                  style: TextStyle(
                    fontSize: 11.0,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
              SizedBox(
                height: 10.0,
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Shark link",
                  style: TextStyle(
                    fontSize: 11.0,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              SizedBox(
                height: 10.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Expanded(
                    flex: 1,
                    child: Container(
                      width: 40.0,
                      padding: EdgeInsets.all(10.0),
                      margin: EdgeInsets.only(right: 5.0),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(color: Colors.grey),
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      child: Center(
                        child: Text(
                          "untitledui.com/videos/promo",
                          style: TextStyle(
                            fontSize: 10.0,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: Container(
                      width: 6.0,
                      padding: EdgeInsets.all(10.0),
                      margin: EdgeInsets.only(left: 5.0),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(color: Colors.grey),
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      child: Center(
                        child: Text(
                          "Copy link",
                          style: TextStyle(
                            fontSize: 10.0,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        );
      },
    );
  }

  void showMyAlert2(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 70,
                width: 70,
                decoration: BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.circular(100.0),
                  border: Border.all(
                    color: Colors.blueAccent,
                    width: 3.0,
                  ),
                ),
                child: ClipOval(
                  child: Image.asset(
                    "assets/img/circulo2.jpg",
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              SizedBox(
                height: 25.0,
              ),
              Text(
                "Blog post pubished",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18.0),
              ),
              SizedBox(
                height: 20.0,
              ),
              Text(
                "This blog post has been published. Team members",
                style: TextStyle(
                  fontSize: 12.0,
                  fontWeight: FontWeight.w300,
                ),
              ),
              Text(
                "will be able to edit this post and republish changes.",
                style: TextStyle(
                  fontSize: 12.0,
                  fontWeight: FontWeight.w300,
                ),
              ),
              SizedBox(
                height: 1.0,
              ),
            ],
          ),
          actions: [
            ButtonBar(
              alignment: MainAxisAlignment.center,
              children: [
                OutlinedButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  style: OutlinedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    //backgroundColor: Colors.deepPurple,
                  ),
                  child: Text(
                    "Cancelar",
                    style: TextStyle(
                      color: Colors.black,
                    ),
                  ),
                ),
                OutlinedButton(
                  onPressed: () {},
                  style: OutlinedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      backgroundColor: Colors.blueAccent),
                  child: Text(
                    "Confirm",
                    style: TextStyle(
                      color: Colors.black,
                    ),
                  ),
                ),
              ],
            ),
          ],
        );
      },
    );
  }

  void showMyAlert1(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text("Titulo del AlertDialog"),
          backgroundColor: Colors.white,
          content: Text(
              "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin eleifend dapibus quam sit amet faucibus. "),
          actions: [
            OutlinedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              style: OutlinedButton.styleFrom(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
                //backgroundColor: Colors.deepPurple,
              ),
              child: Text("Cancelar"),
            ),
            OutlinedButton(
              onPressed: () {},
              style: OutlinedButton.styleFrom(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
              ),
              child: Text("Aceptar"),
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Alert Page"),
        centerTitle: true,
        backgroundColor: Colors.black,
        elevation: 2.0,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                showMyAlert1(context);
              },
              child: Text("Alert 1"),
            ),
            ElevatedButton(
              onPressed: () {
                showMyAlert2(context);
              },
              child: Text("Alert 2"),
            ),
            ElevatedButton(
              onPressed: () {
                showMyAlert3(context);
              },
              child: Text("Alert 3"),
            ),
          ],
        ),
      ),
    );
  }
}

// mainAxisAlignment: MainAxisAlignment.start,
//             children: [
//               Image.asset("assets/img/imagen2.jpg"),
//               SizedBox(
//                 height: 15.0,
//               ),
//               Text("Your video has been uploaded!"),
//               SizedBox(
//                 height: 10.0,
//               ),
//               Text("You´re video has finished uploading and is live."),
//               SizedBox(
//                 height: 10.0,
//               ),
//               Align(
//                 alignment: Alignment.centerLeft,
//                 child: Text("Shark link"),
//               ),
//               Container(
                
//                 height: 40,
//                 width: 40,
//                 child: Text("Hola"),
//               ),
//             ],