adb: Android Debug Bridge 安卓调试桥；
是Android SDK提供的一个命令行工具。

adb 命令用于与连接到计算机的 Android 设备进行通信，并执行各种操作，例如安装应用程序、调试应用程序、复制文件到设备等。

通过使用 adb 命令，你可以执行许多与 Android 设备相关的操作，包括以下几个常见的用法：
- 安装和卸载应用程序：使用 adb install 命令安装 APK 文件到设备上，使用 adb uninstall 命令卸载应用程序。
- 文件传输：使用 adb push 命令将文件从计算机复制到设备上，使用 adb pull 命令将文件从设备复制到计算机上。
- 调试应用程序：使用 adb logcat 命令查看设备日志信息，使用 adb shell 命令进入设备的命令行 Shell，并执行各种调试操作。
- 屏幕截图和录屏：使用 adb shell screencap 命令进行屏幕截图，使用 adb shell screenrecord 命令进行屏幕录制。
- adb devices 是 adb 命令的一个子命令，用于列出当前连接到计算机的 Android 设备。![[assets/adb命令是什么？/image-20230607152128094.png]]其中，`ffblda0b`为我的real android device的序列号。

