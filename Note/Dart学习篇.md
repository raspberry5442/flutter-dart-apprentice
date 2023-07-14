---
imgStatus: not yet
noteProgress: not yet
---

## 入门
### Dart开发平台
网页版：[DartPad](https://dartpad.dev/?)
[[AOT和JIT？]]
### 一个Dart项目的构成
- 图：![[assets/Dart学习篇/image-20230608013304785.png]]
- 上图的文字复现：
  1. .gitignore: 告诉Git不需要保存到GitHub或其他使用的Git存储库中的Dart相关文件。
  2. analysis_options.yaml: 包含特殊规则，帮助您检测代码中的问题，这个过程称为静态分析。
  3. bin: 包含可执行的Dart代码。
  4. hello_dart.dart: 和项目文件夹同名，创建工具生成了这个文件，供您放置Dart代码。
  5. CHANGELOG.md: 手动编辑的、使用Markdown格式的最新项目更新列表。当您发布Dart项目的新版本时，应该告知其他开发人员您所做的更改。
  6. lib: 代表"library"（库）。在大型项目中，您会有许多.dart文件，您可以将其组织在lib文件夹下。类似于普通图书馆保存一系列可借阅的书籍，Dart世界中的库保存了可以在其他地方使用的代码集合。
  7. pubspec.yaml: 包含了您希望在项目中使用的第三方[[什么是Pub|Pub]]依赖项列表。"pubspec"的名称代表"Pub规范"。您还可以在此文件中设置项目的版本号。
  8. pubspec.lock: 指定项目使用的每个依赖项的精确版本。这对团队来说非常有帮助，以确保每个人都使用相同的依赖项。
  9. README.md: 描述项目的功能和如何使用它。其他开发人员会非常感激这一点。
  10. test: 存储您的测试文件。优秀的开发人员编写测试代码来验证程序是否按预期工作。

### Dart3内容补充
[翻译：Announcing Dart3](https://ducafecat.com/blog/dart-3)
[官方文档：Dart3 migration guide](https://dart.dev/resources/dart-3-migration#dart-3-language-changes)