StatelessWidget 类继承自 Widget 类， 是一个抽象类。我们可以通过创建一个继承自 StatelessWidget 类的子类来定义自己的无状态小部件。这个子类需要实现 build 方法，该方法用于构建widget所组成的界面。

当创建一个继承于StatelessWidget的类的时候，build方法在任何时候都会被调用。

```Dart
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: const Color.fromRGBO(237, 192, 192, 1),
        body: Container(),
      ),
    );
  }
}
```

StatelessWidget 的特点是一旦创建后，其属性就不会再发生变化，因此它们不会保存任何状态信息。这意味着每次在父级小部件发生更改时，StatelessWidget 会被重新构建，因为它没有内部状态需要维护。

StatelessWidget 的一个常见用途是用于显示静态内容，例如文本、图像或图标等。它们通常是根据父级小部件的属性来动态生成界面。由于它们不保存状态，所以它们的构建过程相对简单和高效。