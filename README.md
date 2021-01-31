# Add Xcode bits/stdc++.h

## 说明

为macOS Xcode一键式添加bits/stdc++.h，解决Xcode c++使用bits/stdc++.h头文件时报错'bits/stdc++.h' file not found

bits/stdc++.h，并在macOS Big Sur 11.2 Xcode12.4上测试通过，理论上所有系统以及Xcode均适用。

所有头文件来自于 [GitHub-GNU 编译器集合 (GCC)](https://github.com/gcc-mirror/gcc)以及Ubuntu GCC-10版本，并修改bits/os_defines文件以适应macOS环境。

每次更新或者下载新Xcode-beta替换旧Xcode时都会导致这些文件消失，因此每次都需要手动增加这些文件，略嫌麻烦，故有了此脚本文件。



## 如何使用

下载或者克隆文件到本地，打开终端，将runme.sh拖入到终端回车运行即可



## 出现错误？

1. 首先尝试使用root权限运行脚本，即先sudo su root再拖入脚本运行。
2. 如果运行后Xcode出现大量头文件报错，请尝试使用旧版的bits/stdc++.h文件，或者删除相关include语句，或者加入相关缺失的头文件。