import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Color.fromARGB(255, 217, 186, 207),
        body: SafeArea(
          child: Column(
            children: <Widget>[
              CircleAvatar(
                radius: 50,
                foregroundImage: AssetImage('images/woman.jpg'),
              ),
              Text(
                'raspberry5442',
                style: TextStyle(
                    fontSize: 50,
                    fontFamily: 'GamjaFlower',
                    fontWeight: FontWeight.w300,
                    color: Colors.white),
              ),
              Text(
                'FLUTTER DEVELOPER',
                style: TextStyle(
                    // color: Color.fromARGB(255, 246, 210, 244),
                    color: Color.fromARGB(255, 240, 221, 227),
                    fontSize: 20,
                    fontFamily: 'SourceSans3',
                    letterSpacing: 5,
                    fontWeight: FontWeight.bold),
              ),
              Container(
                color: Colors.white,
                padding: EdgeInsets.all(10),
                margin: EdgeInsets.symmetric(vertical: 10, horizontal: 25),
                child: Row(
                  children: <Widget>[
                    Icon(
                      Icons.phone_android_rounded,
                      color: Color.fromARGB(210, 185, 81, 152),
                      size: 25,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      '+86 13333333333',
                      style: TextStyle(fontFamily: 'SourceSans3', fontSize: 20),
                    )
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.all(10),
                margin: EdgeInsets.symmetric(vertical: 10, horizontal: 25),
                color: Colors.white,
                child: Row(
                  children: <Widget>[
                    Icon(
                      Icons.email_rounded,
                      color: Color.fromARGB(210, 185, 81, 152),
                      size: 25,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      'raspberry5442@fff.com',
                      style: TextStyle(fontFamily: 'SourceSans3', fontSize: 20),
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
