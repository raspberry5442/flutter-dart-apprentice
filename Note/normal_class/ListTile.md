[ListTile class](https://api.flutter.dev/flutter/material/ListTile-class.html)
## description
ListTile implements the material design list spec for you leaving you to just worry about what goes in it. You can say what goes on the leading end of the tile and on the trailing end (generally icons). In between them goes the text, either in one line, two lines, or making room for three lines. Make things smaller and denser with the dense property.

> The first line of text is not optional and is specified with title. The value of subtitle, which is optional, will occupy the space allocated for an additional line of text, or two lines if isThreeLine is true. If dense is true then the overall height of this tile and the size of the DefaultTextStyles that wrap the title and subtitle widget are reduced.

![[assets/ListTile/image-20230711160937351.png]]
And you can make it interactive with the onTap and the onLongPress callbacks.![[assets/ListTile/image-20230711161108656.png]]
To give the user some hints on the ListTile's interactivity, use the enabled or selected properties to style that tile.

## features
- a single fixed-height row
- what properties are optional: 
  - leading / trailing
  - title
  - subtitle
  - isThreeLine
  - dense
  - contentPadding
- None of the properties are strictly required. However, providing at least a `title` is usually necessary for a meaningful representation of the ListTile.