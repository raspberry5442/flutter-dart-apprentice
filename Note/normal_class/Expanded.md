[Expanded class](https://api.flutter.dev/flutter/widgets/Expanded-class.html)
## description
Almost every Flutter layout uses rows and columns, and they're pretty cool. They can hug their children tightly or spread them out and relax. But what if you'd like one of those children to stretch and fill the extra space? ![[assets/Expanded/image-20230711212728864.png]]

Just wrap it in Expanded widget, and watch it grow. ![[assets/Expanded/image-20230711212827289.png]]

when a row or column lays out its children, it does the inflexible ones first.![[assets/Expanded/image-20230711212938232.png]]Then it divides the remaining space among the flexible ones, like Expanded.![[assets/Expanded/image-20230711213037173.png]]you can even set a flex factor, just in case of competition.
```Dart
Expanded(
	flex: 2,
	child: Container()
),
```
![[assets/Expanded/image-20230711213155267.png]]
### Note
- Using the Expanded widget on a child widget of the Center/Container widget is not effective. The Expanded widget should be used as a direct child of Column, Row, or Flex to expand the available space for their children widgets.
## properties
### flex
- The flex factor to use for this child. (用于该子项的弹性因子。)
- If null or zero, the child is inflexible and determines its own size. If non-zero, the amount of space the child's can occupy in the main axis is determined by dividing the free space (after placing the inflexible children) according to the flex factors of the flexible children.
- The flex property in the Expanded class of Flutter is used to determine the priority of a child widget when dividing the available space. A higher flex value means that the child widget will be given a larger portion of the available space. 
- The flex property is only used when there are multiple Expanded widgets in a row or column. If there is only one Expanded widget, the flex property is ignored.
- The flex property is additive. This means that if you have two Expanded widgets with flex values of 2 and 1, respectively, the total flex value for those widgets will be 3.
- The flex property can be any integer value, not just 1 or 2. The display effect of a Flutter project is determined by the ratio of the flex values in the Expanded widgets. Here is a table that shows how the flex values affect the display of the Expanded widgets: ![[assets/Expanded/image-20230711225522338.png]]As you can see, the flex values are additive. This means that if you have two Expanded widgets with flex values of 2 and 3, respectively, the total flex value for those widgets will be 5. This means that the first widget will be given 2 units of space, and the second widget will be given 3 units of space.






