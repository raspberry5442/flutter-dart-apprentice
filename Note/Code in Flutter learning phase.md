## main 
> Know about how to remove the starting code and customize it into your own app. 

MaterialApp is a widget, Center is a widget, and Text is also a widget. Text is the child of the center widget.
![[assets/Code in Flutter learning phase/image-20230701190945139.png]]
The code above is in one line, it is hard to recognize. If I add a **comma** to the the end of all of the round brackets, and format code document with Dart format in VSCode, the one line code will automatically turn to recognize code which has a indented structure like following:![[assets/Code in Flutter learning phase/image-20230701194703807.png]]It's clear to see that the Text widget is in the Center widget, the Center widget is in the MaterialApp widget.
   
The sign combination **=>** could replaced by curly braces`{}`, like following format:![[assets/Code in Flutter learning phase/image-20230701200447851.png]]
![[assets/Code in Flutter learning phase/image-20230701191000924.png]]

## create a scaffold in the App
[Documentation: Scaffold class](https://api.flutter-io.cn/flutter/material/Scaffold-class.html)
The Scaffold is designed to be a top level container for a MaterialApp ([MaterialApp](https://api.flutter-io.cn/flutter/material/MaterialApp-class.html) is also a class). This means that adding a Scaffold to each route on a Material app will provide the app with Material's basic visual layout structure.

Scaffold is a widget which provides Material Design layout widgets like appbar, body, floatingActionButton, etc.
```Dart
void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blueGrey,
        appBar: AppBar(
          title: const Text('I Am Rich'),
          backgroundColor: Colors.blueGrey[900],
        ),
        body: const Center(
          child: Image(
            image: NetworkImage(
                'https://www.thisiscolossal.com/wp-content/uploads/2019/02/d1aehdnbq0h21-960x960@2x.jpg'),
          ),
        ),
      ),
    ),
  );
}
```
## The most common widgets in Flutter
- Container
- Text
- Image
- Button:
  - RaisedButton
  - FlatButton
  - IconButton
- TextField
- ListView
- GridView
- Card
- AppBar
- Drawer
- Scaffold
- Center
## Something to pre-configure when create a new project
- Edit pubspec.yaml file to create images and fonts folder.
- Find app icon for the project and set it well.
### Working with Assets in Flutter & pubspec.yaml
#### YAML file
- [[../基础/About YAML file| About YAML file]]
#### pubspec.yaml 
Use assets in a flutter project, there are steps:
1. create a folder in your flutter project named images(this folder named can be changed as long as consistents with the name in pubspec.yaml);
2. move image files to the new folder;
3. Configure in pubspec.yaml file; (It's better to delete all comments in the pubspec.yaml file because the comments could clutter up the configuration and causes error by whitespaces).
```YAML
flutter:
  uses-material-design: true
  assets:
    # No need to write the image file name, just the folder name is ok.
    - images/
    
```

![[assets/Code in Flutter learning phase/image-20230703162942516.png]]

#### use regx remove comments in YAML file
```
#.*(?:\r?\n|$)
```
### Get icons for Flutter Application
steps:
1. Get an icon image from figma or somewhere;
2. Go the `appicon.co` to get the standard format of the icon images. Finally you will get a file named `AppIcons.zip` (Note🎈: Don't add any file name![[assets/Code in Flutter learning phase/image-20230703183049320.png]]);![[assets/Code in Flutter learning phase/image-20230703174552922.png]]

3. Move the file you get from step2 into flutter project.
   - For Android folder in the project:
     1. find the folder : `E:\ChatApp\i_am_rich\android\app\src\main\res` in the project ,and open the `res` folder in OS file explorer.
     2. replace all the folders starting with `mipmap` in the `res` directory with the same folders you downloaded from `appicon.co`.  ![[assets/Code in Flutter learning phase/image-20230703175744906.png]]


   - For ios folder in the project:
     1. find the folder: `E:\ChatApp\i_am_rich\ios\Runner`in the project ,and open the `Runner` folder in OS file explorer.
     2. replace `Assets.xcassets` folder in `Runner` directory into the same folder downloaded from `appicon.co`. ![[assets/Code in Flutter learning phase/image-20230703181106169.png]]
### how to use custom fonts in flutter
1. Go to Google Fonts to find a fonts you want;
2. Read this documentation: [Use a custom font](https://docs.flutter.dev/cookbook/design/fonts) to edit the pubspec.yaml file. It's better to copy the declaration in this doc to your pubspec.yaml file so that you can avoid some mistakes.;
3. TextStyle widget in the main.dart, add the property of `fontFamily: GamjaFlower` (GamjaFlower is just one of the font styles).
## create a new Stateless widget
In main.dart file, press `s-t-l-e-s-s`, there's a hint about to create Stateless widget. ![[assets/Code in Flutter learning phase/image-20230707223854738.png]]
Seletc it and it will writes a whole bunch of code like this: [](<![[assets/Code in Flutter learning phase/image-20230707224126397.png]]>)![[assets/Code in Flutter learning phase/image-20230707225127582.png]]
This is the boilerplate code for building a stateless widget. The name `MyApp` here is customizable, as long as it matches the name of the `app` parameter in the `runApp(Widget app)` function.

The build method return a widget, so we could make MaterialApp as its return value. ![[assets/Code in Flutter learning phase/image-20230707225814149.png]]
## SafeArea class and properties like margin/padding
### SafeArea class
[[normal_class/SafeArea|SafeArea]]
It's better to place a SafeArea widget in a Scaffold.
## margin / padding properties
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

margin is a property of the Container class. ![[assets/Code in Flutter learning phase/image-20230705163457764.png]]
The EdgeInsetsGeometry class is an abstract class. EdgetInsets extend the class of EdgeInsetsGeometry.

如上代码，margin属性用于创建EdgeInsets的实例方法举例如下：
- Typical eight-pixel margin on all sides: `const EdgeInsets.all(8.0)`
- Eight pixel margin above and below, no horizontal margins: `const EdgeInsets.symmetric(vertical: 8.0)`
- Left margin indent of 40 pixels: `const EdgeInsets.only(left: 40.0)`
- Left, top, right, bottom:`const EdgeInsets.fromLTRB(10.0, 50.0, 10.0, 50.0)`
#### what's the differences between margin and padding?
margin is for the outside of the widget, and padding is for the inside of the widget.
## different way to define Color
在 Flutter 中，使用`color: Colors.pink[200]`方括号和` color: Color.pink.shade200 `都可以用来访问颜色的不同深度或强度。它们实际上是相同的，只是表示方式不同。

`color: Colors.pink[200]`对应的ARGB为(255, 244 143, 177);
`color: Color.pink.shade200`对应的ARGB为(255, 244 143, 177)。

由此可见，无论哪种表示颜色的方式，只要跟的值一样，就是一样的。

## Dart data types
### basic data type
String/int/double/bool 
### what the 'var' represent for in dart?
In Dart, the var keyword is used to declare a variable whose type is inferred from the value it is initialized with. This means that you don't have to explicitly specify the type of the variable, as the Dart compiler will figure it out for you.

For example, the following code declares a variable called name and initializes it with the string "Bob": `var name = 'Bob';`.

The Dart compiler will infer that the type of the name variable is String, because that is the type of the value it is initialized with.

#### Dart also has a data type called dynamic
You can also use the var keyword to declare a variable without initializing it. In this case, the type of the variable will be dynamic, which means that it can hold any type of value. `var age;` The type of the age variable will be **dynamic**, which means that i**t can hold any type of value**, such as an integer, a string, or even a function.
```Dart
void main() {
var age;
}

age = 50;
age = 'fifty years old';
print(a);
//no error
```

```Dart
void main() {
String a;
int b;
var c = 123;
c = 'Hello';
print(c);
// output: Hello
}
```

Note: 
- Using the var keyword can make your code less readable and less maintainable without specifying the type. 
- The var keyword is not supported in all Dart contexts, such as in generic types.
- If you try to assign a value to a var variable that is of a different type than the value it was initialized with, the Dart compiler will throw an error.
- dynamic type itself does remove the benefits of a type-safe language. So it's better to avoid to using the keyword var and other dynamic types in dart.


### Dart is a statically typed language
[[../基础/differences between a statically typed language and a dynamically typed language]]