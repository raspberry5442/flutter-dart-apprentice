import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() {
  runApp(const XylophoneApp());
}

class XylophoneApp extends StatelessWidget {
  const XylophoneApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Center(
            // child: Text('start flutter'),
            child: TextButton(
              child: const Text('Click Me'),
              onPressed: () async {
                final player = AudioPlayer();
                await player.setSource(AssetSource('note7.wav'));
                await player.resume();
              },
            ),
          ),
        ),
      ),
    );
  }
}
