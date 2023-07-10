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
        backgroundColor: Color.fromARGB(194, 246, 210, 244),
        body: SafeArea(
          child: Column(
            children: <Widget>[
              const CircleAvatar(
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
                    letterSpacing: 8,
                    fontWeight: FontWeight.bold),
              )
            ],
          ),
        ),
      ),
    );
  }
}
