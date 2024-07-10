import 'package:flutter/material.dart';

class AlertPage extends StatelessWidget {
  void showMyAlert2(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Column(
            children: [
              Container(
                height: 70,
                width: 70,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(100.0),
                ),
                child: Image.asset("assets/img/circulo1.jpg"),
              ),
            ],
          ),
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