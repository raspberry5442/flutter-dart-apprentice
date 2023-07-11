import 'package:flutter/material.dart';

void main() {
  runApp(const Dicee());
}

class Dicee extends StatelessWidget {
  const Dicee({super.key});
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Color.fromARGB(255, 149, 234, 152),
        appBar: AppBar(
          title: Text('Dicee'),
          backgroundColor: Color.fromARGB(255, 149, 234, 152),
        ),
        body: const DicePage(),
      ),
    );
  }
}

class DicePage extends StatelessWidget {
  const DicePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Expanded(
          child: Image.asset(
            'images/dice1.png',
          ),
        ),
        Expanded(
          child: Image.asset(
            'images/dice1.png',
          ),
        )
      ],
    );
  }
}
