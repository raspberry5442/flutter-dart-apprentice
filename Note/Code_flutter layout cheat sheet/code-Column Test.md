## Effect display
![[assets/code-Column Test/image-20230708000638186.png]]

## Code
```Dart
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
        appBar: AppBar(
          backgroundColor: Color.fromARGB(255, 178, 170, 255),
          title: const Text('Column Test'),
        ),
        body: Container(
          // Placing the Row widget inside a Container allows to set the background color for the row.
          color: Color.fromARGB(255, 241, 206, 253),
          child: const SafeArea(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Icon(
                  Icons.favorite,
                  color: Colors.pink,
                  size: 50.0,
                ),
                Icon(
                  Icons.audiotrack,
                  color: Colors.green,
                  size: 50.0,
                ),
                Icon(
                  Icons.beach_access,
                  color: Colors.blue,
                  size: 50.0,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

```