[EdgeInsets class](https://api.flutter.dev/flutter/painting/EdgeInsets-class.html)
margin or padding property 通常被包含在具有可视化元素并具有位置或边距调整需求的小部件中。例如Container/Padding/Card/ListTile/ListView/Text/Image/Button等。

通常magin/padding这两个属性都是这么用的：
![[assets/Code in Flutter learning phase/image-20230705163457764.png]]

具体到代码中，magin属性和padding属性对应的类是EdgeInsets，不是EdgeInsetsGeometry。这是因为EdgeInsets类是EdgeInsetsGeometry的具体实现，它提供了一个表示矩形边缘的简单方式，包括上、下、左、右四个方向的边距值。

EdgeInsetsGeometry类是一个抽象基类，用于定义各种边缘几何形状的接口。它提供了更多灵活性和可扩展性，使我们可以定义不同的边距形状，例如对称边距、不对称边距或圆角边距。
```Dart
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: const Color.fromARGB(194, 246, 210, 244),
        body: SafeArea(
          child: Container(
            height: 100.0,
            width: 100.0,
            margin: EdgeInsets.symmetric(vertical: 50.0, horizontal: 10.0),
            padding: EdgeInsets.all(20.0),
            color: Colors.white,
            child: const Text('Hello'),
          ),
        ),
      ),
    );
  }
}
```