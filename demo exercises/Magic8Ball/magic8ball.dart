import 'package:flutter/material.dart';

void main() {
  runApp(const MagicApp());
}

class MagicApp extends StatelessWidget {
  const MagicApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blueAccent,
        appBar: AppBar(
          title: Text('Ask Me Anything'),
          backgroundColor: Colors.blueGrey,
        ),
        body: RoundPage(),
      ),
    );
  }
}

class RoundPage extends StatefulWidget {
  const RoundPage({super.key});

  @override
  State<RoundPage> createState() => _RoundPageState();
}

class _RoundPageState extends State<RoundPage> {
  int audioNumber = 1;

  void toggleValue() {
    if (audioNumber < 5) {
      audioNumber++;
    } else {
      audioNumber = 1;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(24.0),
        child: TextButton(
          onPressed: () {
            setState(() {
              toggleValue();
            });
          },
          child: Image(
            image: AssetImage('images/ball$audioNumber.png'),
          ),
        ),
      ),
    );
  }
}
