## description
The default constructor can be used like this example:
```Dart
const Image(
	image: AssetImage('images/dice1.png'),
),
const Image(
	image: NetworkImage('https://flutter.github.io/assets-for-api-docs/assets/widgets/owl.jpg'),
)
```

The Image Widget also provides several constructors to display different types of images **for convenience**. For example: 
`child: Image.asset('images/dice1.png')`
`child: Image.network('https://example.com/dash.jpg')`
`child: Image.file('/path/to/dash.jpg',)` to show image files from the user's device.
`child: Image.memory(myUnit8List,)` to show images that are in memory as byte arrays.


> [!NOTE] Note: 🎈🎈🎈
> Network images may not load as quickly as asset images, and the user will need an Internet connection to get the initial image. You could provide loadingBuilder(a property of image) which the framework will call repeatedly as the image is being downloaded from the network. ![[assets/Image/image-20230711231312279.png]] It will give you loading progress which you can use to show the user how far they are from seeing the actual image.

## properties
- width / height
  `Image.asset('images/dash.jpg', width: 200, height: 400,)`
- fit
  Provide fit to say how the image should fill its space. `fit: BoxFit.contain` contain is the default, but there are many others, including fill, which stretches the picture, and cover, which does not(stretch).
- color
  ![[assets/Image/image-20230711232237264.png]]
- semanticLable
  The semanticLabel property in the Image class of Flutter is used to provide a description of the image to accessibility tools, such as TalkBack on Android and VoiceOver on iOS. This description is used to help users who are visually impaired understand what the image is.
  To show up in assistive technologies and will make your app more accessible.![[assets/Image/image-20230711232357713.png]]




