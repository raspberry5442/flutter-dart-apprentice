## 教程
[原视频地址](https://www.youtube.com/watch?v=1FEw0pdkhtk&pp=ygUSY3Jvc3NBeGlzQWxpZ25tZW50)

![[assets/理解CrossAxisAlignment & MainAxisAlignment/Axis Alignment - Flutter Tutorial for Beginners.mp4]]

## 总结
1. Column的mainAxisAlignment为垂直方向，crossAxisAlignment为水平方向；Row刚好反过来；
2. Column以mainAxisAlignment来调节布局，任何枚举值都不受限制，但以crossAxisAlignment来调节布局受限于当前Column的水平宽度；
3. Row以mainAxisAlignment来调节布局，任何枚举值都不受限制，但以crossAxisAlignment来调节布局受限于当前Row的垂直高度；
4. 补充：🎃🎃🎃🎃
   CrossAxisAlignment有一个常量值为baseline，即`crossAxisAlignment: CrossAxisAlignment.baseline`，在对 column/row 的 children Text widget 使用baseline值得时候，ide会抛出断言错误： `textBaseline is required if you specify the crossAxisAligment`。也就是说，要先指定`textBaseline: TextBaseline.alphabetic`以确定使用哪个基线来对齐子部件（不同的Text widget有不同的基线位置，至于flutter是如何度量和确定那个基线的，并不用知道）。

## Effects display_1
![[assets/理解CrossAxisAlignment & MainAxisAlignment/image-20230708151433386.png]]



## Code_1
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
          child: Container(
            height: 500,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.baseline,
              textBaseline: TextBaseline.alphabetic,
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                Text(
                  'Row_Text1',
                  style: TextStyle(fontSize: 30),
                ),
                Text('Row_Text2'),
              ],
            ),
          ),
        )),
      ),
    );
  }
}

```

## Effects display_2
![[assets/理解CrossAxisAlignment & MainAxisAlignment/image-20230708152624130.png]]


## Code_2
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
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Icon(
                  Icons.favorite,
                  color: Colors.red,
                  size: 50,
                ),
                Icon(
                  Icons.audiotrack,
                  color: Colors.green,
                  size: 200,
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
## Effects display_3
- Column
- crossAxisAlignment: CrossAxisAlignment.center
![[assets/理解CrossAxisAlignment & MainAxisAlignment/image-20230708152812737.png]]


## Code_3
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
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Icon(
                  Icons.favorite,
                  color: Colors.red,
                  size: 50,
                ),
                Icon(
                  Icons.audiotrack,
                  color: Colors.green,
                  size: 200,
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
## Effects display_4
![[assets/理解CrossAxisAlignment & MainAxisAlignment/image-20230708153117679.png]]


## Code_4
- Row
- corssAxisAlignment: CrossAxisAlignment.stretch