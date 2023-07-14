[Column class](https://api.flutter.dev/flutter/widgets/Column-class.html)
main properties:
## children: `List<Widget>`
## mainAxisSize: MainAxisSize
  表示主轴占多少空间。
## verticalDirection: VerticalDirection.up
  确定子项的垂直排列顺序。
## mainAxisAlignment: MainAxisAlignment
子项如何沿主轴放置（注意：该属性与mainAxisSize冲突）。
MainAxisAlignment本身是一个[[Dart中的枚举类型(enum)|枚举类型(enum)]]，中可调用的值有:![[assets/Column/image-20230706202543806.png]]spaceAround与spaceEvenly之间的区别如下：![[assets/Column/image-20230706204510007.png]]
## crossAxisAlignment: CrossAxisAlignment
cross axis代表横轴，即与主轴垂直的轴。在 Flutter 的弹性布局中，CrossAxisAlignment 属性用于控制子项在交叉轴（与主轴垂直的轴）上的对齐和布局方式。该属性可以接受不同的枚举值，用于描述子项在交叉轴上的对齐方式。![[assets/Column/image-20230707142644718.png]]
### end
all children will align themselves to the right edge of each other. ![[assets/Column/image-20230707143701314.png]]
#### how to make children containers to go over to the right? 
1. keep crossAxisAlignment: CrossAxisAlignment.end
2. By creating a invisible container where you give it a width of infinity like this: `Container(width: double.infinity, height: 10.0)` with no height or little height, so that one of the containers is as wide as the screen allows now.![[assets/Column/image-20230707144141424.png]]
### stretch
#### stretch all children containers to fill the entire width
##### a complex way
1. keep crossAxisAlignment: CrossAxisAlignment.end
2. To provide a width for each of the containers. `Container(width: double.infinity)`
##### an easier way
Using the property of column: `crossAxisAlignment: CrossAxisAlignment.stretch` so that I no longer need to provide a width property for children containers.![[assets/Column/image-20230707155533925.png]]







```Dart
mainAxisAlignment: MainAxisAlignment.center,
children: <Widget>[
              Container(
                height: 100.0,
                width: 100.0,
                color: Colors.white,
                child: const Text('Container1'),
              ),
              Container(
                height: 100.0,
                width: 100.0,
                color: Colors.yellow,
                child: const Text('Container2'),
              ),
              Container(
                height: 100.0,
                width: 100.0,
                color: Colors.purple,
                child: const Text('Container3'),
              )
            ],
```