[SizedBox class](https://api.flutter.dev/flutter/widgets/SizedBox-class.html)
1. SizedBox is a widget with a specific size that directs its child to also have that size.
```Dart
SizedBox(
	width: 200,
	height: 100,
	child: MyButton(),
)
```
So the child MyButton's size is just the size of SizedBox.

1. If you tell the SizedBox to have infinite size in a direction, it will expands as much as its parent allows.
2. `SizedBox.expand()`equals to `SizedBox(height: double.infinity, width: double.infinity)`.
3. Empty SizedBox will take up whitespace which is great for adding gaps between widgets.