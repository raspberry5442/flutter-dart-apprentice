import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      backgroundColor: Color.fromARGB(255, 149, 234, 152),
      appBar: AppBar(
        title: Text('Dicee'),
        backgroundColor: Color.fromARGB(255, 149, 234, 152),
      ),
      body: DicePage(),
    ),
  ));
}

class DicePage extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Row();
  }
}
