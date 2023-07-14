import 'package:flutter/material.dart';

void main() {
  runApp(const DogApp());
}

class DogApp extends StatelessWidget {
  const DogApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Yellow Lab'),
          backgroundColor: Colors.blue,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              DogName('Rocy'),
              SizedBox(
                height: 10.0,
              ),
              DogName('Lyla'),
              SizedBox(
                height: 10.0,
              ),
              DogName('Nino'),
            ],
          ),
        ),
      ),
    );
  }
}

class DogName extends StatelessWidget {
  final String name;
  const DogName(this.name);

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: BoxDecoration(
        color: Color.fromARGB(255, 151, 198, 237),
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Text(name),
      ),
    );
  }
}
