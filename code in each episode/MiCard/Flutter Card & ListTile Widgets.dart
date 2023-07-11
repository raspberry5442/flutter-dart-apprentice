import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(
        backgroundColor: Color.fromARGB(255, 217, 186, 207),
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
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
              SizedBox(
                height: 20.0,
                width: 220.0,
                child: Divider(
                  // thickness: 1.0,
                  color: Color.fromARGB(255, 240, 221, 227),
                ),
              ),
              Card(
                  margin: EdgeInsets.symmetric(vertical: 10, horizontal: 25),
                  child: ListTile(
                    leading: Icon(
                      Icons.phone_android_rounded,
                      color: Color.fromARGB(210, 185, 81, 152),
                      size: 25,
                    ),
                    title: Text(
                      '+86 13333333333',
                      style: TextStyle(fontFamily: 'SourceSans3', fontSize: 20),
                    ),
                  )),
              Card(
                  margin: EdgeInsets.symmetric(vertical: 10, horizontal: 25),
                  child: ListTile(
                    leading: Icon(
                      Icons.email_rounded,
                      color: Color.fromARGB(210, 185, 81, 152),
                      size: 25,
                    ),
                    title: Text(
                      'raspberry5442@email.com',
                      style: TextStyle(fontFamily: 'SourceSans3', fontSize: 20),
                    ),
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
