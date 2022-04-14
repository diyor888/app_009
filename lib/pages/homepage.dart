import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  static const String id = "home_page";

  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    dynamic names() {
      return GestureDetector(
        onTap: () {
          print("Gesture Detector ishlamoqda ");
        },
        child: Text(
          "Did you forget your password?",
          style: TextStyle(
            color: Colors.red,
            fontSize: 25,
          ),
        ),
      );
    }

    return Scaffold(
      backgroundColor: Colors.grey[400],
      appBar: AppBar(
        title: Text(
          "Google",
          style: TextStyle(
            color: Colors.black,
            fontSize: 30,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.white70,
      ),
      body: Container(
        padding: EdgeInsets.only(left: 20, right: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.03,
            ),
            // Rasm
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height * 0.4,
              decoration: BoxDecoration(
                color: Colors.red,
                image: DecorationImage(
                  image: AssetImage("assets/images/img.png"),
                  fit: BoxFit.cover,
                ),
                borderRadius: BorderRadius.circular(30),
              ),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  gradient: LinearGradient(
                    begin: Alignment.bottomRight,
                    colors: [
                      Colors.black.withOpacity(0.8),
                      Colors.black.withOpacity(0.5),
                      Colors.black.withOpacity(0.4),
                      Colors.black.withOpacity(0.001),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 25,
            ),
            Container(
              height: 50,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.lightBlue[500],
                borderRadius: BorderRadius.circular(40),
              ),
              child: FlatButton(
                onPressed: () {
                  print("FlatButton ishladi!!!");
                },
                child: Text(
                  " Next ",
                  style: TextStyle(fontSize: 30),
                ),
              ),
            ),
            SizedBox(
              height: 25,
            ),
            Text(
              "Did you forget your",
              style: TextStyle(
                color: Colors.white70,
                fontSize: 25,
              ),
            ),
            GestureDetector(
              onTap: () {
                print("Gesture Detector ishlamoqda ");
              },
              child: Text(
                " password ",
                style: TextStyle(
                  color: Colors.blue,
                  fontSize: 25,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
