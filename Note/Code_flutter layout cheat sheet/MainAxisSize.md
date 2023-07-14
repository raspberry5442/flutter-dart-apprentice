## Effects display_1
![[assets/MainAxisSize/image-20230708154117031.png]]


## Code_1
- mainAxisSize: MainAxisSize.max

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
          backgroundColor: const Color.fromARGB(255, 178, 170, 255),
          title: const Text('Layout Test'),
        ),
        body: SafeArea(
          child: Container(
            margin: EdgeInsets.fromLTRB(5, 10, 5, 10),
            color: Color.fromARGB(255, 184, 221, 255),
            child: Row(
              mainAxisSize: MainAxisSize.max,
              children: [
                Icon(
                  Icons.favorite,
                  color: Colors.red,
                  size: 50,
                ),
                Icon(
                  Icons.audiotrack,
                  color: Colors.green,
                  size: 50,
                ),
                Icon(
                  Icons.beach_access,
                  color: Colors.blue,
                  size: 50,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

```
## Effects display_2
![[assets/MainAxisSize/image-20230708154307553.png]]


## Code_2
- mainAxisSize: MainAxisSize.min