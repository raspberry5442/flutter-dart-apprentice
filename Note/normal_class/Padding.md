[Padding class](https://api.flutter.dev/flutter/widgets/Padding-class.html)
## description
By using the Padding widget, you can provide space for widgets. Padding adds space around any and all sides of its children. So just take the widget you want to put space around and put it as the child of padding. Then tell it how much space to give with the Padding property. Padding in `EdgeInsets.all` for example, will put the same amount of padding around all sides of the child widget.

EdgeInsets specifies the space along the cardinal directions -- left, top, right, and bottm -- and ignores the current text direction of the app. [[normal_class/EdgeInsetsDirectional]], on the other hand, give us space in terms of the start and end. ![[assets/Padding/image-20230711150037351.png]]


## properties
`padding: EdgeInsets.all(20.0)`
`padding: EdgeInsets.fromLTRB(10.0, 20.0, 10.0, 20.0)`
`padding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 10.0)`
`padding: EdgeInsets.only(left: 30.0)`

`padding: EdgeInsetsDirectional.fromSTEB(5.0, 20.0, 8.0, 20.0)`
![[assets/Padding/image-20230711145518051.png]]


