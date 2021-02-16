#!/bin/bash
#!/bin/sh

###
# @Author: XYZliang
# @Date: 2021-01-30 21:47:42
# @LastEditTime: 2021-01-31 15:47:08
###

folder1="/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/include/c++/v1"
folder2="/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include"
workdir="$(cd "$(dirname "$0")" && pwd)"

function exist() {
    if [ -f "$1/bits/stdc++.h" ]; then
        echo "执行成功！Successful execution!"
    else
        echo "执行失败，请注意控制台输出。Execution failed, please pay attention to the console output."
    fi
}

function trychomd() {
    if [ -x "$1" ]; then
        echo "文件夹可读 Folder readable"
    else
        echo "文件夹不可读，尝试赋予权限 The folder is not readable, try to grant permissions"
        chmod +755 "$1"
    fi
}

function newfolder() {
    cd "$1" || exit
    mkdir -m 755 "bits"
    echo "创建bits Create bits"
}

function copystdc() {
    cp -r "$workdir/Dependence/." "$1/."
    echo "复制所缺相关头文件 Copy the missing relevant header files"
}

function doplan() {
    trychomd "$1"
    newfolder "$1"
    copystdc "$1"
    exist "$1"
}

if [ -d "$folder1" ]; then
    echo "v1文件夹存在，执行方案一 V1 folder exists, execute scheme 1"
    doplan "$folder1"
else
    echo "v1文件夹不存在，执行方案二 V1 folder does not exist, execute scheme 2"
    doplan "$folder2"
fi
