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
        backgroundColor: Color.fromARGB(255, 29, 96, 87),
        appBar: AppBar(
          title: Text('dicee_flutter'),
          backgroundColor: Color.fromARGB(250, 160, 33, 24),
        ),
        body: const DicePage(),
      ),
    );
  }
}

// class ChangeImage extends StatelessWidget {
//   const ChangeImage({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return const Placeholder();
//   }
// }

class DicePage extends StatelessWidget {
  const DicePage({super.key});

  @override
  Widget build(BuildContext context) {
    var leftDiceNumber = 5;

    return Center(
      child: Row(
        children: <Widget>[
          SizedBox(
            width: 6.0,
          ),
          Expanded(
            child: TextButton(
              child: Image.asset(
                'images/dice$leftDiceNumber.png',
              ),
              onPressed: () {
                // ChangeImage();
                // Do something when the button is clicked
              },
            ),
          ),
          Expanded(
            child: TextButton(
              child: Image.asset(
                'images/dice2.png',
              ),
              onPressed: () {
                print('Right button got pressed!');
                // Do something when the button is clicked
              },
            ),
          ),
          SizedBox(
            width: 6.0,
          ),
        ],
      ),
    );
  }
}
