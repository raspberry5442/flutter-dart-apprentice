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
        backgroundColor: const Color.fromARGB(194, 246, 210, 244),
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Container(
                height: 100.0,
                color: Colors.white,
                margin: EdgeInsetsGeometry,
                child: const Text('Container1'),
              ),
              const SizedBox(
                height: 20.0,
              ),
              Container(
                height: 100.0,
                color: Colors.yellow,
                child: const Text('Container2'),
              ),
              Container(
                height: 100.0,
                color: Colors.purple,
                child: const Text('Container3'),
              ),
              Container(
                height: 100.0,
                color: Colors.grey,
                child: const Text('Container4'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

