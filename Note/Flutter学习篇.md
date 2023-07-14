---
imgStatus: not yet
noteProgress: not yet
---

## 环境配置
- 使用vs code开发flutter框架的应用，**参考官方get started文档**--[在 Windows 操作系统上安装和配置 Flutter 开发环境](https://flutter.cn/docs/get-started/install/windows)来进行开发环境的安装和配置。然后再[安装VS Code和插件](https://flutter.cn/docs/get-started/editor?tab=vscode)。
- 提示：Dart SDK 是 Flutter 的一部分，它提供了在 Flutter 应用程序中编写和运行 Dart 代码所需的所有工具和库。因此安装了Flutter SDK，就不需要额外安装Dart SDK。
- 我的flutter sdk位置：`D:\DevTools\flutter_sdk_3.10.3_stable`
- 按照文档操作的难点：
  1. Android Emulator的渲染需要开启硬件加速，此处再帖个文档为 [Android 模拟器配置硬件加速](https://developer.android.com/studio/run/emulator-acceleration?hl=zh-cn#vm-windows)
  2. [创建和管理虚拟设备](https://developer.android.com/studio/run/managing-avds?hl=zh-cn#viewing)
  3. 我没搞明白为什么要安装Visual Studio。
- 在中国网络环境下使用Flutter的问题：
  最开始不存在TLS(Tansprot Layer Security) error的问题，但后来在Terminal执行flutter pub get的时候提示网络问题，执行flutter doctor -v命令后，发现是package源的问题，于是照着[官方文档](https://flutter.cn/community/china)替换成了镜像。即在全局添加两个环境变量。但不知为何flutter doctor -v后发现依然无法访问github。
  `[!] Network resources`  
  `X An HTTP error occurred while checking "https://github.com/": 信号灯超时时间已到`
## 尝试在emulator上运行第一段dart代码
[开发体验初探](https://flutter.cn/docs/get-started/test-drive?tab=vscode)
## 编写第一个Flutter应用(未完成)
- Google Codelabs中[flutter相关的项目](https://codelabs.developers.google.com/?product=flutter)。
- 该项目要点：
  1. Flutter 无法热重载 Web 应用;
  2. 如何将项目在physical device上进行调试运行？
     - 用户(47176)Path中添加一个路径`C:\Users\47176\AppData\Local\Android\Sdk\platform-tools`，目的是能够直接在命令行中使用abd命令查询real device的序列号。[[adb命令是什么？]]；![[assets/Flutter学习篇/image-20230607145032482.png]]
     - 小米手机，打开开发者模式后（操作参考：[用小米手机跑Flutter应用](https://juejin.cn/post/7185073644492554277)），需要在开发者模式内开启的权限有：
       1. USB调试；
       2. USB安装；
       3. USB调试（安全设置）；
          这一项不打开的话，应用无法成功安装到手机上。
     - 运行项目：
       - 方法1：命令行中运行，进入项目的根目录，执行命令`flutter run -d ffb1da0b`，`ffb1da0b`是我的real device的序列号。![[assets/Flutter学习篇/image-20230607155730760.png]]
       - 方法2：直接在visual studio code里run-->start  debugging;
## Visual Studio Code相关
1. 在vs code中，快捷键`Ctrl + S`或`Shift + Alt + F`相当于format document with dart。`Ctrl + S` 代表保存，保存的同时会格式化。
2. while coding, it's better to open the error promotion window at the bottom of vs code to keep an eye of any errors or warnings might be get.![[assets/Flutter学习篇/image-20230610143740970.png]]
3. The command : `view : focus on outline view` can show the tree structure of your dart file. This can be really help when you're trying to locate a specific thing.![[assets/Flutter学习篇/image-20230630000525888.png]]
4. vscode中，按理说hot reload的快捷键ctrl + s 和ctrl + F5都可以，但事实上ctrl + F5以及⚡按钮都不起作用，事实上都不reload。所以在vscode中，如果要执行hot reload，只有ctrl + s管用。
## 调试相关
### Flutter inspector工具
#### 用途/概念
Flutter Inspector 是一个开发工具，用于在 Flutter 应用程序中查看和调试 UI 层的信息。它提供了对应用程序的视觉层次结构、布局、状态以及渲染性能的深入了解。

Flutter Inspector 借鉴了 Chrome 开发者工具的 Elements 面板的概念和界面设计。这是因为 Flutter 使用了自绘UI引擎，将Flutter 应用程序的界面表示为一棵由小部件构成的树形结构。这种树状结构与 HTML DOM 的树状结构具有一定的相似性。

Flutter Inspector 提供了一个可视化的界面，以树状结构的形式展示 Flutter 应用程序中的小部件层次结构。通过 Flutter Inspector，开发人员可以查看和调试小部件的属性、布局信息、渲染效果、状态变化等。

#### vscode中使用flutter inspector的方法
1. 在 Debug 模式 下运行应用程序；
2. 点击 DevTools 工具栏上的 Flutter inspector 选项打开调试面板。And sometimes when you're confused why something looks a certain way, it might help to dig into properties inside `Widget Details Trees`. ![[assets/Flutter学习篇/image-20230630013033829.png]]

3. 以上步骤2是在IDE中打开Flutter inspector，但事实上在浏览器中打开更方便，能得到更宽敞的视图。具体步骤：
   - vscode中，命令Dart: Open DevTools;
   - 选择Open DevTools in Web Browser；
   - 最开始可能会让你填一个URL来connect到正在调试的application，你就从debug console里找一个URL填入以连接，如`ws://127.0.0.1:64398/-QK4tHnrHgg=/ws`；
   - 选中页面中的`Select Widget Mode`，开启Flutter Inspector调试模式；
   - Debug模式下，在Flutter Inspector页面开启Show Guidelines，即可在移动端app中看到很多蓝色guidlines.
## Flutter project中的树状结构
![[assets/Flutter学习篇/image-20230611164949038.png]]

## flutter项目的结构
- main.dart file is in lib folder.
- pubspec.yaml -- configuration file.

## 视频代码相关
[[Code in Flutter learning phase]]

## resources site
- [icons8](https://icons8.com):basically allow you have free-for-commercial-use images.
- [vecteezy](https://www.vecteezy.com):could search for images.
- [Canva](https://www.canva.com):like figma, provide the design function and available images/templates for users.
- [pngitem](https://www.pngitem.com/): Millions of Hand-picked & Pure HD PNG Images For Free Unlimited Download.
- [color-hex](https://www.color-hex.com/): Gives information about colors including color models (RGB,HSL,HSV and CMYK), Triadic colors, monochromatic colors and analogous colors calculated in color page.
- [Google Fonts](https://fonts.google.com/)
- [material design palette](https://www.materialpalette.com/): Select at least one color, and the system automatically generates a color palette for you.

## about hot reload
I changed backgroundColor in Scaffold and click the hot reload button, I realized that the color on the device hasn't changed. Why?
The reason is that for hot reload to work, we have to have the things that we've changed inside a flutter [[normal_class/StatelessWidget]] or [[normal_class/StatefulWidget]].

为了使热重载（hot reload）起作用，则代码的更改必须发生在Flutter项目的 StatelessWidget 或 StatefulWidget 中。

热重载是一项方便的开发工具，它可以在我们进行代码更改时快速预览应用程序的变化，而无需重新启动应用程序。然而，热重载的工作原理是基于widget类的build 方法。每当发生热重载时，Flutter 会重新调用 StatelessWidget 或 StatefulWidget 的 **build 方法**，并根据最新的代码更改来更新应用程序的界面。因此，如果我们的更改位于 StatelessWidget 或 StatefulWidget 中，热重载就能够捕捉到这些更改，并将其应用于应用程序。但如果更改发生在其他地方（只要不调用build方法），比如在普通的 Dart 类中，热重载将无法感知到这些更改，因为它只关注于 StatelessWidget 或 StatefulWidget。

### hot reload的工作原理

> [!NOTE] 补充：What is the difference between hot reload, hot restart, and full restart?
> - **hot reload**: 会将代码更改转入 VM，重建 widget 树并保持应用的状态，整个过程不会重新运行 main() 或者 initState()。
> - **hot restart**: 会将代码更改转入 VM，重启 Flutter 应用，不保留应用状态。
> - **full restart**: 将会完全重新运行应用。该进程较为耗时，因为它会重新编译原生部分代码。在 Web 平台上，它同时会重启 Dart 开发编译器。完全重启并没有既定的快捷键，你需要手动停止后重新运行。

#### 执行hot reload，flutter调用build方法
由上述补充内容可知，在 Flutter 中执行热重载（hot reload）时，会重建widget tree以应用最新的更改。而重建widget tree的本质就是flutter重新调用build方法来生成新的UI表示。
在调用build方法时，flutter只专注于对比新旧widget tree的差异，因此，hot reload的速度与项目的复杂程度无关，只与变化内容有关。

## widget class explanation
- [[normal_class/SafeArea|SafeArea]]
- [[normal_class/ＭediaQuery|ＭediaQuery]]
- [[normal_class/Container|Container]]
- [[normal_class/Column|Column]]
  - [[Code_flutter layout cheat sheet/理解CrossAxisAlignment & MainAxisAlignment|理解CrossAxisAlignment & MainAxisAlignment]]
- [[normal_class/SizedBox|SizedBox]]
- [[normal_class/EdgeInsets|EdgeInsets]]
- [[normal_class/EdgeInsetsDirectional|EdgeInsetsDirectional]]
- [[normal_class/TextStyle|TextSyle]]
- [[normal_class/Icon|Icon]]
- [[normal_class/Card|Card]]
- [[normal_class/Padding|Padding]]
- [[normal_class/ListTile|ListTile]]
- [[normal_class/Divider|Divider]]
- [[normal_class/Expanded|Expanded]]
- [[normal_class/Image|Image]]
- [[normal_class/StatelessWidget|StatelessWidget]] & [[normal_class/StatefulWidget|StatefulWidget]]
  - [[normal_class/StatefulWidget and StatelessWidget|StatefulWidget and StatelessWidget]]